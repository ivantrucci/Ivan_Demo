/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Load results to the Reporting Mart
   
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

%irmc_load_reportmart(partition_no = &rank.
                      , ds_in_cardinality = &ds_in_cardinality.
                      , ds_in_reportmart_config = &ds_in_reportmart_config.
                      , ds_out_load_result = &ds_out_load_result.
                      , irm_input_libraries = &irm_input_libraries.
                      , dr_libref = &dr_libref.
                      , dr_library_name = &dr_library_name.
                      , mart_libref = &mart_libref.
                      , rgf_protocol = &rgf_protocol.
                      , rgf_host = &rgf_host.
                      , rgf_port = &rgf_port.
                      , rgf_service = &rgf_service.
                      , rgf_solution = &rgf_solution.
                      );
                     
/* Cleanup session */
%irm_session_cleanup;