/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Synchronize data objects for downstream execution
      
   \details
   
   This node ensure that all required tasks have been completed before the execution can proceed to the downstream processing (RGF data registration)
   
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

data &ds_out_datastore_config.;
   set &ds_in_datastore_config. (where = (datastore_group_id = "Data Quality"));
run;

/* Cleanup session */
%irm_session_cleanup;