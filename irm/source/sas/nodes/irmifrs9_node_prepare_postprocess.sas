/*
   Copyright (C) 2019 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Setup post-process configuration
   
   \param [in] FRS9_PRM.RUN_OPTION Specifies runtime parameters for the execution. See \link run_option.sas \endlink for details.
   \param [in] FRS9_CFG.EXECUTION_CONFIG Execution configuration.
   \param [out] FRS9_STG.POST_PROCESS_CONFIG_STAGE1 Output dataset containing the post-process configuration for the stage 1 execution
   \param [out] FRS9_STG.POST_PROCESS_CONFIG_STAGE2 Output dataset containing the post-process configuration for the stage 2 execution
   \param [out] FRS9_STG.POST_PROCESS_CONFIG_STAGE3 Output dataset containing the post-process configuration for the stage 3 execution
   
   \details
   Input table FRS9_CFG.EXECUTION_CONFIG is filtered on EXECUTION_GROUP = "Post-process". 
   Each of the output tables contains the records for the corresponding value of column EXECUTION_STAGE.
   
   In addition the following macro utilities are called:
   
   | Macro name                | Description                                                                                                  | Further information                           |
   |---------------------------|--------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
   | irm_session_prepare       | Reads RUN_OPTION table and sets logging options                                                              | \link irm_session_prepare.sas \endlink        |
   | irm_session_cleanup       | Removes all non-IRM WORK datasets/views and deletes all user-created macro variables from workspace session  | \link irm_session_cleanup.sas \endlink        |

   \ingroup nodes
   \author  SAS Institute Inc.
   \date    2019
*/

/* Initialize session */
%irm_session_prepare();

data  
   &ds_out_execution_stage1. (where = (execution_stage = 1))
   &ds_out_execution_stage2. (where = (execution_stage = 2))
   &ds_out_execution_stage3. (where = (execution_stage = 3))
   ;
   
   set &ds_in_execution_config. (where = (execution_group = "Post-process"));
run;

/* Cleanup session */
%irm_session_cleanup;
