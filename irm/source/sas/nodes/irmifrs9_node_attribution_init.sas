/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Retrieve Attribution Analysis Configuration
   
   \param[in] FRS9_PRM.RUN_OPTION parameter table 
   \param[out] FRS9_STG.ATTRIBUTION_CONFIG Output table containing details of the Attribution Analysis
   
   \details
  
   This node makes a call to macro \link irm_rest_get_rgf_attribution.sas \endlink to retrieve the attribution analysis configuration that is linked to the current analysis run.
   
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
%irm_rest_get_rgf_attribution(host = &rgf_protocol.://&rgf_host.
                              , server = &rgf_service.
                              , solution = &rgf_solution.
                              , port = &rgf_port.
                              , tgt_ticket = &tgt_ticket.
                              , key = &attribution_analysis_key.
                              , details_flg = Y
                              , outds = tmp_attribution_config
                              , outVarTicket = ticket
                              , outSuccess = httpSuccess
                              , outResponseStatus = responseStatus
                              , restartLUA = Y
                              , clearCache = Y
                              );

proc sort data = tmp_attribution_config;
   by attributionGroupNo;
run;

/* Post-process */
data &ds_out_attribution_config.
     &ds_out_attribution_run_config. (drop = attributeName attributionType);
   length
      attributionKey                8.
      attributionGroupNo            8.
      run_sequence_no               8.
      runFlg                        $1.
      previous_result_key           $100.
      current_result_key            $100.
      previous_portfolio_key        $100.
      current_portfolio_key         $100.
      portfolio_switch_flg          $1.
      portfolio_override_varlist    $10000.
      previous_analysis_run_id      $32.
      current_analysis_run_id       $32.
      scenario_switch_flg           $1.
      scenario_override_varlist     $10000.
      previous_model_run_key        $32.
      current_model_run_key         $32.
      model_switch_flg              $1.
      previous_counterparty_key     $100.
      current_counterparty_key      $100.
      previous_mitigant_key         $100.
      current_mitigant_key          $100.
      previous_modelInputMap_key    $100.
      current_modelInputMap_key     $100.
      previous_modelOutputMap_key   $100.
      current_modelOutputMap_key    $100.
      previous_ia_data_key          $100.
      current_ia_data_key           $100.
      previous2_fr_htm_data_key     $100.
      previous_fr_htm_data_key      $100.
      previous2_afs_data_key        $100.
      previous_afs_data_key         $100.
   ;
   set tmp_attribution_config(rename = (key = attributionKey));
   by attributionGroupNo;
   
   retain
      portfolio_switch_flg "N"
      scenario_switch_flg  "N"
      model_switch_flg     "N"
   ;
   
   retain
      runFlg
      portfolio_override_varlist
      scenario_override_varlist
   ;
   
   drop cum_sequence_no;
   retain cum_sequence_no;

   /* Set static parameters */
   attributionKey = &attribution_analysis_key.;
   previous_result_key = "&prev_result_key.";
   current_result_key = "&curr_result_key.";
   previous_portfolio_key = "&prev_portfolio_key.";
   current_portfolio_key = "&portfolio_key.";
   previous_analysis_run_id = "&attrib_prev_analysis_run_id.";
   current_analysis_run_id = "&attrib_curr_analysis_run_id.";
   previous_model_run_key = "&prev_credit_model_run_key.";
   current_model_run_key = "&credit_model_run_key.";
   previous_counterparty_key = "&prev_counterparty_key.";
   current_counterparty_key = "&counterparty_key.";
   previous_mitigant_key = "&prev_mitigant_key.";
   current_mitigant_key = "&mitigant_key.";
   previous_modelInputMap_key = "&prev_modelin_datamap_key.";
   current_modelInputMap_key = "&modelin_datamap_key.";
   previous_modelOutputMap_key = "&prev_modelout_datamap_key.";
   current_modelOutputMap_key = "&modelout_datamap_key.";
   previous_ia_data_key = "&prev_ia_data.";
   current_ia_data_key = "&ia_data.";
   previous2_fr_htm_data_key = "&prev2_fr_htm_data.";
   previous_fr_htm_data_key = "&prev_fr_htm_data.";
   previous2_afs_data_key = "&prev2_afs_data.";
   previous_afs_data_key = "&prev_afs_data.";

   /* Reset RunFlg */
   if(first.attributionGroupNo) then
      runFlg = "N";

   /* Flag which changes require a model run */
   if(attributionType in ("PortfolioAging" "PortfolioAttribute" "PortfolioSwitch" "ScenarioRiskFactor" "ScenarioSwitch" "Model")) then
      runFlg = "Y";

   if(attributionType = "PortfolioSwitch") then do;
      portfolio_switch_flg = "Y";
      call missing(portfolio_override_varlist);
   end;
      
   if(attributionType = "ScenarioSwitch") then do;
      scenario_switch_flg = "Y";
      call missing(scenario_override_varlist);
   end;
   
   if(attributionType = "Model") then
      model_switch_flg = "Y";

   /* Keep track of all portfolio attributes being changed (cumulative override) */
   if(attributionType = "PortfolioAttribute" and portfolio_switch_flg = "N") then
      portfolio_override_varlist = catx(" ", portfolio_override_varlist, attributeName);

   /* Keep track of all portfolio attributes being changed (cumulative override) */
   if(attributionType = "ScenarioRiskFactor" and scenario_switch_flg = "N") then
      scenario_override_varlist = catx(" ", scenario_override_varlist, attributeName);
   

   /* No need to run anything if we have switched Porflio, Scenarios and Model (-> this is the current period result) */
   if(portfolio_switch_flg = "Y" and scenario_switch_flg = "Y" and model_switch_flg = "Y") then
      runFlg = "N";
         
   if last.attributionGroupNo and runFlg = "Y" then do;
      cum_sequence_no + 1;
      run_sequence_no = cum_sequence_no;
      output &ds_out_attribution_run_config.;
   end;
   
   output &ds_out_attribution_config.;
      
run;

data &ds_out_attribution_option.;
   set &ds_in_run_option.;
   /* Override the number of partitions to be used for the attribution analysis */
   if config_name = "N_PARTITIONS" then
      config_value = "&attribution_n_partitions.";
run;

/* Cleanup session */
%irm_session_cleanup;