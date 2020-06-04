/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Synchronize data objects for downstream execution

   \param[out] ds_out_scenario_info (FRS9_STG.SCENARIO_INFO) Empty output table needed for downstream processing (Credit Risk Analysis)
   \param[out] ds_out_scenario_data (FRS9_STG.SCENARIO_DATA) Empty output table needed for downstream processing (Credit Risk Analysis)
      
   \details
   
   This node ensure that all required tasks have been completed and tables have been created before the execution can proceed to the downstream processing (Credit Risk Analysis)
   
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

/* Create empty scenario_info table */
data &ds_out_scenario_info.;
   length
      scenarioId $32.
      scenarioName $1024.
   ;
   stop;
run;

/* Create empty scenario_data table */
data &ds_out_scenario_data;
   length
      scenarioId $32.
      scenarioName $1024.
   ;
   stop;
run;

/* Cleanup session */
%irm_session_cleanup;