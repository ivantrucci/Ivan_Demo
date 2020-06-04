/*
   Copyright (C) 2019 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Run a set of programs
   
   \param [in] FRS9_STG.RUN_OPTION Specifies runtime parameters for the execution. See \link run_option.sas \endlink for details.
   \param [in] ds_in_cardinality Controls the level of parallelization for IRM data partitioning
   \param [in] ds_in_execution_config Lists the programs to be executed. See \link execution_config.sas \enlink for details.
   \param [out] ds_out Output dataset containing the list of result tables produced by each executed program
   
   \details   
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

/* Run the programs associated to the current IRM task partition */
%irmc_task_runner(ds_in_cardinality = &ds_in_cardinality.
                  , ds_in_execution_config = &ds_in_execution_config.
                  , partition_no = &rank.
                  , irm_fa_path = &fa_path.
                  , ds_out = &ds_out.
                  );

/* Cleanup session */
%irm_session_cleanup;
