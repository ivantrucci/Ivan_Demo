/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Retrieve Rule Set from SAS Risk Governance Framework
   
   \param[in] ST_PRM.RUN_OPTION parameter table 
   \param[in] %ds_in_config Macrovarload table containing the required parameter RULESET_KEY
   \param[out] %ds_out Output table containing details of the RuleSet
   
   \details
  
   This node makes a call to macro \link irm_rest_get_rgf_rule_set.sas \endlink to retrieve the ruleSet definition from SAS Risk Governance Framework.
   
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

%let ticket =;
%irm_rest_get_rgf_rule_set(host = &rgf_protocol.://&rgf_host.
                           , server = &rgf_service.
                           , solution = &rgf_solution.
                           , port = &rgf_port.
                           , tgt_ticket = &tgt_ticket.
                           , username = &irm_user_id.
                           , password = &irm_user_password.
                           , key = &ruleSet_key.
                           , outds = rule_set_info
                           , outVarTicket = ticket
                           , outSuccess = httpSuccess
                           , outResponseStatus = responseStatus
                           , restartLUA = Y
                           , clearCache = Y
                           );
/* Workaround for the SQLContraintTransformer which requires a RGF hotfix */
data &ds_out.;
   set rule_set_info;
   filter_exp = prxchange('s/LOWER\(\s*(\w+)\s*\) like LOWER\(\s*"%([^%]+)%"\s*\)/prxmatch("\/\Q$2\E\/i", $1)/i', -1, filter_exp);
   /* Convert != to <> */
   filter_exp = prxchange("s/(!=)/ne/i", -1, filter_exp);
   /* If rule set type is Management Action, set the allocation method */
   if ruleSetType = "MgtActionRuleSet" then do;
      allocation_method = "INDIVIDUAL";
      adjustment_type = "INCREMENT";
      filter_exp = catt(filter_exp, " and (FORECAST_TIME ne 0)");
      drop record_id;
   end;
run;

/* Cleanup session */
%irm_session_cleanup;