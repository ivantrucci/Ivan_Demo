/* ************************************************** *
 *           Model Post-Code Template                 *
 * ************************************************** *

Purpose: 
   Injection point for executing custom code after the MIP model execution

Details:
   The following SAS macro variables are available to the model at run time:
    - ticket: SAS authentication service ticket (useful for performing operations that require authentication, i.e. interacting with REST services).
    - rgf_protocol: Communication protocol (http/https) of the SAS Risk and Governance Framework web application
    - rgf_host: Hostname of the SAS Risk and Governance Framework web application
    - rgf_port: Port where the SAS Risk and Governance Framework web application is listening
    - ds_in_model_result: Name of the input table containing the result of the MIP model execution
    - ds_out_model_result: Name of the output table to be created by this code
   
 * ************************************************** */

/* RuleSet Key */
%let ruleSet_key = ${params.RULESET.key};

/* Get Stage allocation rules */
%irm_rest_get_rgf_rule_set(host = &rgf_protocol.://&rgf_host.
                           , server = &rgf_service.
                           , solution = &rgf_solution.
                           , port = &rgf_port.
                           , tgt_ticket = &tgt_ticket.
                           , key = &ruleSet_key.
                           , outds = rules_info
                           , outVarTicket = ticket
                           , outSuccess = httpSuccess
                           , outResponseStatus = responseStatus
                           );

/* Set the name of the source and target table */
data rules_info;
   set rules_info;
   source_table = "&ds_in_model_result.";
   target_table = "&ds_out_model_result.";
run;

/* Run stage allocation rules */
%irm_run_rules(ds_rule_def = rules_info
               , ds_out_summary = rule_summary
               );

