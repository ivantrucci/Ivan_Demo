/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Allocate adjustments to detail data
   
   \details
  
   This node makes a call to macro \link irmc_adjustment_allocate.sas \endlink to perform the adjustment allocation.
   
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

%irmc_adjustment_allocate(ds_in_reportmart_config = &ds_in_reportmart_config.
                           , ds_in_aggregation_config = &ds_in_aggregation_config.
                           , ds_in_dependency_config = &ds_in_dependency_config.
                           , ds_in_map_movement = &ds_in_map_movement.
                           , ds_in_rules_info = &ds_in_rules_info.
                           , ds_in_sync_mart = &ds_in_sync_mart.
                           , ds_in_mart_meta = &ds_in_mart_meta.
                           , ds_in_mart_dataInfo = &ds_in_mart_dataInfo.
                           , ds_in_mart_partition_list = &ds_in_mart_partition_list
                           , ds_out_modified_delta = &ds_out_modified_delta.
                           , ds_out_alloc_rules_summary = &ds_out_alloc_rules_summary.
                           , ds_out_dataInfo = &ds_out_dataInfo.
                           , ds_out_reportmart_config = &ds_out_reportmart_config.
                           , epsilon = 1e-10
                           , rule_summary_schema_name = &rule_summary_schema_name.
                           , rule_summary_schema_version = &rule_summary_schema_version.
                           , dataDefinition_name = Allocation Rules Summary Schema
                           , dataDefinition_desc = Allocation Rules Summary schema definition
                           , business_category = IFRS9
                           , dr_library_name = &dr_library_name.
                           , dr_libref = &dr_libref.
                           , username = &irm_user_id.
                           , password = &irm_user_password.
                           , tgt_ticket = &tgt_ticket.
                           , rgf_protocol = &rgf_protocol.
                           , rgf_host = &rgf_host.
                           , rgf_port = &rgf_port.
                           , rgf_service = &rgf_service.
                           , rgf_solution = &rgf_solution.
                           );
/* Cleanup session */
%irm_session_cleanup;