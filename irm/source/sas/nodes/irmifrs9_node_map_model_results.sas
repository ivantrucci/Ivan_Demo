/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Map the analysis results to the Credit Risk report mart
   
   \param[in] RUN_OPTION Parameter table (macrovarload) containing runtime configuration values
   \param[in] ANALYSIS_CONFIG Parameter Table (macrovarload) containing analysis-specific configuration parameters
   \param[in] ds_in_map_config Data Mapping configuration table.
   \param[in] ds_in_map_movement Movement Type mapping table
   \param[in] ds_in_model_run_info Model Run information
   \param[in] ds_in_model_result Input table containing the result of the model execution
   \param[out] ds_out_result_map Output table containing details of the mapping applied to the input table ds_in_model_result
   \param[out] ds_out_sync_result Synchronization table for the output MART_RESULT data view
   
   \details
     
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

%irmc_model_post_process(ds_in_model_run_info = &ds_in_model_run_info.
                         , ds_in_model_result = &ds_in_model_result.
                         , ds_in_map_config = &ds_in_map_config.
                         , ds_in_map_movement = &ds_in_map_movement.
                         , ds_in_calculation_config = &ds_in_calculation_config.
                         , ds_in_aggregation_config = &ds_in_aggregation_config.
                         , modelOut_dataMap_key = &modelOut_dataMap_key.
                         , analysis_run_id = &analysis_run_id.
                         , analysis_run_name = &analysis_run_name.
                         , analysis_run_type = &analysis_run_type.
                         , analysis_type = &analysis_type.
                         , cycle_name = &cycle_name.
                         , mart_table_name = &mart_table_name.
                         , mart_movement_type_cd = &mart_movement_type_cd.
                         , dr_libref = &dr_libref.
                         , dr_library_name = &dr_library_name.
                         , scenario_selection = &scenario_selection.
                         , base_dt = %sysfunc(datepart(&base_dttm.))
                         , fa_path = &fa_path.
                         , ia_data = &ia_data.
                         , prev_afs_data = &prev_afs_data.
                         , prev_fr_htm_data = &prev_fr_htm_data.
                         , ds_out_sync_result = &ds_out_sync_result.
                         , ds_out_result_map = &ds_out_result_map.
                         , ds_out_ia_movements = &ds_out_ia_movements.
                         , ds_out_ia_exceptions = &ds_out_ia_exceptions.
                         , tgt_ticket = &tgt_ticket.
                         , rgf_protocol = &rgf_protocol.
                         , rgf_host = &rgf_host.
                         , rgf_port = &rgf_port.
                         , rgf_service = &rgf_service.
                         , rgf_solution = &rgf_solution.
                         );

/* Cleanup session */
%irm_session_cleanup;