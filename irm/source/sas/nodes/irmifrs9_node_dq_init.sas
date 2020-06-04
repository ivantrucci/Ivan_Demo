/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Initialize Data Quality parameters
   
   \param[in] ds_in_dq_config parameter table containing the list of AnalysisData keys and related RuleSet keys 
   \param[out] ds_out_dq_config Output table containing a record for each combination of AnalysisData key and RuleSet key
   
   \details
   
   This node converts the structure of the input table into a table with one record for each combination of AalysisData key and the corresponding RuleSet key
   
   The structure of the input table ST_CFG.DQ_CONFIG is as follows:
   
   | CONFIG_NAME             | CONFIG_VALUE                                                  | CONFIG_VALUE_DESC                                               |
   |-------------------------|---------------------------------------------------------------|-----------------------------------------------------------------|
   | ANALYSIS_DATA_KEY_LIST  | <AnalysisDataKey1> <AnalysisDataKey2> .. <AnalysisDataKeyN>   | Space separated list of Analysis Data Keys                      |
   | DQ_RULE_SET_KEY_LIST    | <RuleSetKey1> <RuleSetKey2> .. <RuleSetKeyN>                  | Space separated list of Rule Set Keys                           |
   | DQ_DETAILS_FLG          | <Y/N>                                                         | Controls whether to produce detailed data quality information   |
   
   The structure of the output table ST_STG.DQ_CONFIG is as follows:
   
   | ANALYSIS_DATA_KEY       | DQ_RULE_SET_KEY  | DQ_DETAILS_FLG |
   |-------------------------|------------------|----------------|
   | <AnalysisDataKey1>      | <RuleSetKey1>    | <Y/N>          |
   | <AnalysisDataKey2>      | <RuleSetKey2>    | <Y/N>          |
   | ...                     | ...              | <Y/N>          |
   | <AnalysisDataKeyN>      | <RuleSetKeyN>    | <Y/N>          |
   
   
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

data &ds_out_dq_config.;
   length
      analysis_data_key 8.
      dq_rule_set_key 8.
      dq_details_flg $3.
   ;
   
   dq_details_flg = "%upcase(&dq_details_flg.)";
   %if(/* analysis_data_key_list is not missing */
       %sysevalf(%superq(analysis_data_key_list) ne, boolean)
       /* the lists have the same number of items */
       and %sysfunc(countw(&analysis_data_key_list., %str( ))) = %sysfunc(countw(&dq_rule_set_key_list., %str( )))
       ) %then %do;
       
      array analysis_data_list {%sysfunc(countw(&analysis_data_key_list., %str( )))} _temporary_ (&analysis_data_key_list.);
      array dq_rule_set_list {%sysfunc(countw(&dq_rule_set_key_list., %str( )))} _temporary_ (&dq_rule_set_key_list.);
      drop i;
      do i = 1 to dim(analysis_data_list);
         analysis_data_key = analysis_data_list[i];
         dq_rule_set_key = dq_rule_set_list[i];
         output;
      end;
   %end;
   %else %do;
      /* Create empty table */
      stop;
   %end;
   
run;

/* Cleanup session */
%irm_session_cleanup;