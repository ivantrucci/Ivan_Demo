/*
   Copyright (C) 2019 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Create the Credit Concentrations (by Asset Type, Product or Region) Report
   \details   
   \author  SAS Institute Inc.
   \date    2019
*/

%macro irmifrs9_task_rpt_credit_con(ds_in =, prev_ds_in =);

/* Local temp vars */
%local i 
       curr_var 
       id_vars 
       tmp_ds_nm;

%let tmp_ds_nm = credit_con_detail;

/* ID vars carried to output file */
%let id_vars=curr_rpt_dt reporting_dt as_of_dates;

/* Check to see if there is a previous analysis dataset */
%if (%sysevalf(%superq(prev_ds_in) ne, boolean)) %then 
%do;
  /* Post process the previous period &PREV_FR_HTM_RESULT loans */
  data pre_&tmp_ds_nm.(keep=&id_vars. &dimensions. &measures.);
    length as_of_dates $30 curr_rpt_dt 8.;
    format curr_rpt_dt mmddyy10.;
    set &prev_ds_in.;
    where scenario_name='Weighted';
    AS_OF_DATES='as of '|| strip(put(reporting_dt,mmddyy10.));
    /* Set the current run to the reporting date for the report run date */ 
    curr_rpt_dt=datepart(&base_dttm);
  run;
%end;

  /* Post process the current period loans */
  data curr_&tmp_ds_nm.;
    length as_of_dates $30 curr_rpt_dt 8.;
    format curr_rpt_dt mmddyy10.;
    set &ds_in;
    where scenario_name='Weighted';
    AS_OF_DATES='as of '|| strip(put(reporting_dt,mmddyy10.));
    curr_rpt_dt=reporting_dt;
  run;

  /* Merge the data together for previous and current periods */
  data _tmp_&tmp_ds_nm.;
    set 
      /* Check to see if the table exist and has observations. */
      %if(%rsk_dsexist(pre_&tmp_ds_nm.)) %then %do;
        %if(%rsk_attrn(pre_&tmp_ds_nm., nobs) > 0) %then pre_&tmp_ds_nm.;   
      %end;
      
      curr_&tmp_ds_nm.;
  run;
   
  /* Sort the input dataset */
  proc sort data = _tmp_&tmp_ds_nm.
            out = _tmp_&tmp_ds_nm._srt_;
    by &dimensions.;
  run;
   
  /* Sum the results */    
  proc hpsummary data = _tmp_&tmp_ds_nm._srt_ missing;
  class &id_vars. &dimensions.;
  var &measures;
  output
    out = _tmp_target_var_sum_(drop=_:)
        sum(nominal_amt) = nominal_amt
    ;
  run;

  /* Write the _tmp_target_var_sum_ dataset to the XLS file */
  data rptlib.&DATA_RANGE;
    retain &id_vars. &dimensions. &measures.;
    set _tmp_target_var_sum_;
  run;

%mend;

%if(not %symexist(PREV_FR_HTM_DATA)) %then %do;
   %let PREV_FR_HTM_DATA=;
%end;
%irmifrs9_task_rpt_credit_con(ds_in = &FR_HTM_DATA., prev_ds_in = &PREV_FR_HTM_DATA.);