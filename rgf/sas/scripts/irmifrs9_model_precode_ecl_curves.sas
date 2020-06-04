/* ******************************************** *
/* Pre-processing script for the MIP execution  *
/* ******************************************** *

Details:
   The following SAS macro variables are available to the model at run time:
      - ticket: SAS authentication service ticket (useful for performing operations that require authentication, i.e. interacting with REST services).
      - rgf_protocol: Communication protocol (http/https) of the SAS Risk and Governance Framework web application
      - rgf_host: Hostname of the SAS Risk and Governance Framework web application
      - rgf_port: Port where the SAS Risk and Governance Framework web application is listening
      - rgf_service: The service where the SAS Risk and Governance Framework web application is listening
      - rgf_solution: The solution code used by SAS Risk and Governance Framework to store internal objects
      - dr_libref: Libref to the Data Repository
      - base_dt_ymdn: Base date using format YYYYMMDD
      - model_run_key: Unique key of the model run
      - ds_in_portfolio: portfolio table
      - ds_in_scenario: scenario table
      - ds_in_counterparty: counterparty table (if used)
      - ds_in_mitigant: credit risk mitigant table (if used)

   The following libraries are pre assigned:
      - mipport: MIP portfolio library
      - mipcpty: MIP counterparty library
      - mipmit: MIP credit risk mitigant library
      - mipcf: MIP cashflow library
      - mippmx: MIP parameter matrix library
      - mipval: MIP valueData library
      - mipfunc: MIP functions library

*/

/* Cashflow data object key */
%let curves_key = ${params.CURVES.key};

/* Controls how to treat missing values for the curves (Hold/Average) */
%let missing_treatment = ${params.MISSINGTREATMENT};

/* Controls whether the Loss Rate curves are applied to the current balance or the balance at origination (for non-revolving credit) */
%let loss_rate_balance_type = ${params.LOSSRATEBALANCETYPE};

/* ******************************************** */

/* Prepare RiskDataMaps parameters for the MIP execution
   Syntax:  <Risk Data Object Name>:<Libname.Dataset> [, <Risk Data Object Name>:<Libname.Dataset>] */
%let mipParameterMatrices = %nrstr(
     pd_curve : mippmx.pd_curves_&base_dt_ymdn._&model_run_key.
   , lgd_curve : mippmx.lgd_curves_&base_dt_ymdn._&model_run_key.
   , lr_curve : mippmx.lr_curves_&base_dt_ymdn._&model_run_key.
   , pp_curve : mippmx.pp_curves_&base_dt_ymdn._&model_run_key.
   , model_options : mippmx.model_options_&base_dt_ymdn._&model_run_key.
);


data mippmx.model_options_&base_dt_ymdn._&model_run_key.;
   length
         _NAME_ $100.
         _VALUE_ 8.
      ;
   /* Use Current Balance Indicator */
   _NAME_ = "USE_CURRENT_BALANCE_IND";      _VALUE_ = %sysevalf(&loss_rate_balance_type. = Current Balance, boolean); output;
run;


%let httpSuccess = 0;
%let responseStatus =;
%irm_rgf_retrieve_analysis_data(key = &curves_key.
                                , libref = &dr_libref.
                                , outds = rf_curves_view
                                , outds_partition_list = curves_partition_list
                                , out_type = view
                                , custom_code =
                                , outds_dataInfo = curves_dataInfo
                                , outds_dataDef = curves_dataDef
                                , host = &rgf_protocol.://&rgf_host.
                                , server = &rgf_service.
                                , solution = &rgf_solution.
                                , port = &rgf_port.
                                , tgt_ticket = &tgt_ticket.
                                , outVarTicket = ticket
                                , outSuccess = httpSuccess
                                , outResponseStatus = responseStatus
                                , restartLUA = Y
                                , clearCache = Y
                                );

/* Sort data */
proc sort data = rf_curves_view (where = (horizon >= 0))
          out = rf_curves_srt;
   by
      curve_type_cd
      segment_id
      horizon
   ;
run;

/* Transpose */
proc transpose data = rf_curves_srt
               out = rf_curves_trsp (drop = _name_ _label_
                                     where = (curve_type_cd is not missing)
                                     )
               prefix = curve_rt_;
   by
      curve_type_cd
      segment_id
   ;
   id horizon;
   var curve_rt;
run;

/* Get the maximum horizon across all curves */
proc hpsummary data = rf_curves_srt;
   var horizon;
   output 
      out = max_horizon
      max =
   ;
run;
data _null_;
   set max_horizon;
   call symputx("curve_max_horizon", max(horizon, 1), "L");
run;

/* Save transposed curves in the MIP PMX input location */
data 
   mippmx.pd_curves_&base_dt_ymdn._&model_run_key.
   mippmx.lgd_curves_&base_dt_ymdn._&model_run_key.
   mippmx.lr_curves_&base_dt_ymdn._&model_run_key.
   mippmx.pp_curves_&base_dt_ymdn._&model_run_key.
   ;
   
   set rf_curves_trsp;
   
   array curves {*} curve_rt_0 - curve_rt_&curve_max_horizon.;
   
   drop
      curve_rt_0
      curve_type_cd
      avg_curve_rt
      i
   ;
   
   /* Compute average value for the curve */
   avg_curve_rt = mean(of curves[*]);
   /* Loop through the curve values */
   do i = 1 to dim(curves);
      /* Set a value for the curve if it is missing */
      if i > 1 and missing(curves[i]) then
         curves[i] = %sysfunc(ifc(&missing_treatment. = Average, avg_curve_rt, curves[i-1]));
   end;
   
   rename
      segment_id = _name_
   ;
   
   select(curve_type_cd);
      when("PD")  output mippmx.pd_curves_&base_dt_ymdn._&model_run_key.;
      when("LGD") output mippmx.lgd_curves_&base_dt_ymdn._&model_run_key.;
      when("LR")  output mippmx.lr_curves_&base_dt_ymdn._&model_run_key.;
      when("PP")  output mippmx.pp_curves_&base_dt_ymdn._&model_run_key.;
      otherwise;
   end;
run;