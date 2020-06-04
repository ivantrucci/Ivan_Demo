/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Run Data Quality Rules
   
   \param[in] ST_STG.DQ_CONFIG Input table containing a record for each combination of AnalysisData key and RuleSet key
   
   \details
      
   The structure of the input table ST_STG.DQ_CONFIG is as follows:
   
   | ANALYSIS_DATA_KEY       | DQ_RULE_SET_KEY  |
   |-------------------------|------------------|
   | <AnalysisDataKey1>      | <RuleSetKey1>    |
   | <AnalysisDataKey2>      | <RuleSetKey2>    |
   | ...                     | ...              |
   | <AnalysisDataKeyN>      | <RuleSetKeyN>    |
   
   
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

%irmc_run_dq_rules(ds_in_dq_config = &ds_in_dq_config.
                    , ds_in_cardinality = &ds_in_cardinality.
                    , partition_no = &rank.
                    , dr_libref = &dr_libref.
                    , ds_out_summary = &ds_out_summary.
                    , ds_out_details = &ds_out_details.
                    );

/* Cleanup session */
%irm_session_cleanup;