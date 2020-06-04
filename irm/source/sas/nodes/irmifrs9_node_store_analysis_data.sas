/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Store data to the Enterprise Wide Stress Testing Data Repository
   
   \param [in] FRS9_STG.RUN_OPTION Specifies runtime parameters for the execution. See \link run_option.sas \endlink for details.
   \param [in] ds_in_cardinality = FRS9_STG.DSTORE_CARDINALITY Controls the level of parallelization for IRM data partitioning
   \param [in] FRS9_STG.DATASTORE_CONFIG Lists the tables to be stored. See \link datastore_config.sas \enlink for details.
   \param [out] FRS9_PRT.ANALYSIS_DATA Partitioned output table. Provides details of the objects registered inside SAS OneRisk framework
   
   \details
   
   This node performs the following tasks:
   - Register each input table (specified inside ST_STG.DATASTORE_CONFIG) to the SAS OneRisk framework
   - Store the physical data of each table to the Enterprise Wide Stress Testing Data Repository
   
   For details, see macro \link irm_rgf_store_analysis_data.sas \endlink
   
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

%irmc_store_analysis_data(partition_no = &rank.
                          , ds_in_cardinality = &ds_in_cardinality.
                          , ds_in_store_config = &ds_in_store_config.
                          , ds_in_rule_config = &ds_in_rule_config.
                          , ds_out_analysis_data = &ds_out_analysis_data.
                          , cycle_id = &cycle_id.
                          , analysis_run_id = &analysis_run_id.
                          , model_run_id = &model_run_id.
                          , entity_id = &entity_id.
                          , irm_input_libraries = &irm_input_libraries.
                          , irm_user_id = &irm_user_id.
                          , irm_user_password = &irm_user_password.
                          , dr_libref = &dr_libref.
                          , register_rulesets_flg = &register_rulesets_flg.
                          , rgf_protocol = &rgf_protocol.
                          , rgf_host = &rgf_host.
                          , rgf_port = &rgf_port.
                          , rgf_service = &rgf_service.
                          , rgf_solution = &rgf_solution.
                          );

/* Cleanup session */
%irm_session_cleanup;