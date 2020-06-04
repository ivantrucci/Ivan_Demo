/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Compute attribution movements
   
   \param[in] FRS9_PRM.RUN_OPTION parameter table 
   \param[out] FRS9_STG.ATTRIBUTION_CONFIG Output table containing details of the Attribution Analysis
   
   \details
  
   This node makes a call to macro \link irmc_gen_attrib_analysis_movmt.sas \endlink to compute the delta-movements across the various attribution runs.
   
   In addition the following macro utilities are called:
   
   | Macro name                | Description                                                                                                  | Further information                           |
   |---------------------------|--------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
   | irm_session_prepare       | Reads RUN_OPTION table and sets logging options                                                              | \link irm_session_prepare.sas \endlink        |
   | irm_session_cleanup       | Removes all non-IRM WORK datasets/views and deletes all user-created macro variables from workspace session  | \link irm_session_cleanup.sas \endlink        |

   \ingroup nodes
   \author  SAS Institute Inc.
   \date    2018
*/

/* Initialize session */
%irm_session_prepare();

%let outlib = %scan(&ds_out_sync., 1, .);
%irmc_gen_attrib_analysis_movmt(ds_in_attribution_config = &ds_in_attribution_config.
                                , ds_in_aggregation_config = &ds_in_aggregation_config.
                                , ds_in_map_movement = &ds_in_map_movement.
                                , ds_in_sync_result = &ds_in_sync_result.
                                , ds_in_var_dependency = &ds_in_dependency_config.
                                , ds_out = &outlib..&mart_table_name.
                                , dr_libref = &dr_libref.
                                , dr_library_name = &dr_library_name.
                                , tmp_libref = &tmp_libref.
                                , fa_path = &fa_path.
                                , mart_table_name = &mart_table_name.
                                , scenario_selection = &scenario_selection.
                                , base_dt = %sysfunc(datepart(&base_dttm.))
                                , stage_var = ECL_STAGE
                                , ecl_12m_var = ECL_12M
                                , ecl_lifetime_var = ECL_LIFETIME
                                , ecl_var = ECL
                                , stage_attribution_method = &stage_attribution_method.
                                , analysis_run_id = &analysis_run_id.
                                , analysis_run_name = &analysis_run_name.
                                , analysis_run_type = &analysis_run_type.
                                , cycle_name = &cycle_name.
                                , epsilon = 1e-10
                                , rgf_protocol = &rgf_protocol.
                                , rgf_host = &rgf_host.
                                , rgf_port = &rgf_port.
                                , rgf_service = &rgf_service.
                                , rgf_solution = &rgf_solution.
                                , tgt_ticket = &tgt_ticket.
                                , irm_user_id = &irm_user_id.
                                , irm_user_password = &irm_user_password.
                                );

data &ds_out_sync.;
   length
      table_name $100.
      data_type $20.
      status $20.
   ;
   table_name = "&outlib..&mart_table_name.";
   data_type = "View";
   status = "Created";
run;

data &ds_out_datastore_config.;
   set &ds_in_datastore_config. (where = (datastore_group_id = "Credit Risk"));
   results_category = "ATTRIBUTION";
   %if(%symexist(OUT_ANALYSIS_DATA_NAME)) %then %do;
      analysis_data_name = cats("&OUT_ANALYSIS_DATA_NAME", ' - &current_dt_ymd. &current_tm_tod.');
   %end;
   %if(%symexist(OUT_ANALYSIS_DATA_DESC)) %then %do;
      analysis_data_desc = cats("&OUT_ANALYSIS_DATA_DESC", 'for the base date <MONTH, 0, SAME, yymmddd10.>.\nCreated by user &IRM_USER_ID. on %sysfunc(datetime(), nldatmw200.)');
   %end;
run;


/* Cleanup session */
%irm_session_cleanup;