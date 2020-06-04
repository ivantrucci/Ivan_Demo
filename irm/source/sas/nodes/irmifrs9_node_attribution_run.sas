/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Perform model runs for the attribution analysis
   
   \param[in] FRS9_PRM.RUN_OPTION parameter table 
   \param[out] FRS9_STG.ATTRIBUTION_CONFIG Output table containing details of the Attribution Analysis
   
   \details
  
   This node makes a call to macro \link irmc_run_attribution_analysis.sas \endlink to execute the model runs that are required to compute the attribution movements.
   
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

%irmc_run_attribution_analysis(ds_in_run_config = &ds_in_run_config.
                               , ds_in_map_config = &ds_in_map_config.
                               , ds_in_map_movement = &ds_in_map_movement.
                               , ds_in_calculation_config = &ds_in_calculation_config.
                               , ds_in_aggregation_config = &ds_in_aggregation_config.
                               , ds_in_scenario_map = &ds_in_scenario_map.
                               , ds_in_scen_info = &ds_in_scenario_info.
                               , ds_in_scen_data = &ds_in_scenario_data.
                               , ds_in_cardinality = &ds_in_cardinality.
                               , partition_no = &rank.
                               , ds_out_sync = &ds_out_sync.
                               , dr_libref = &dr_libref.
                               , dr_library_name = &dr_library_name.
                               , tmp_libref = &tmp_libref.
                               , scenario_selection = &scenario_selection.
                               , fa_path = &fa_path.
                               , sas_risk_workgroup_dir = &sas_risk_workgroup_dir.
                               , mip_name_prefix = &mip_name_prefix.
                               , base_dt = %sysfunc(datepart(&base_dttm.))
                               , analysis_run_id = &analysis_run_id.
                               , analysis_run_name = &analysis_run_name.
                               , analysis_run_type = &analysis_run_type.
                               , analysis_type = &analysis_type.
                               , cycle_name = &cycle_name.
                               , mart_table_name = &mart_table_name.
                               , mart_movement_type_cd = &mart_movement_type_cd.
                               , keep_cube_flg = &keep_mip_cube_flg.
                               , maxWait = &max_wait.
                               , pollInterval = &poll_interval.
                               , rgf_protocol = &rgf_protocol.
                               , rgf_host = &rgf_host.
                               , rgf_port = &rgf_port.
                               , rgf_service = &rgf_service.
                               , rgf_solution = &rgf_solution.
                               , tgt_ticket = &tgt_ticket.
                               , irm_user_id = &irm_user_id.
                               , irm_user_password = &irm_user_password.
                               );
                                     
/* Cleanup session */
%irm_session_cleanup;