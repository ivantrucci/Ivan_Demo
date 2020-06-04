/* ********************************************* */
/*   Attribution Analysis: Input Parameters      */
/* ********************************************* */

/* TGT Authentication Ticket */
%let rgf_tgt_ticket = ${globals.ticket};

/* Get the root location of the SAS Risk Workgroup Application */
%let sas_risk_workgroup_dir = ${globals.sas_risk_workgroup_dir};

/* Cycle Id */
%let cycle_id = ${context.cycle.key};

/* Analysis Run Id */
%let analysis_run_id = ${context.analysisRun.key};

/* IRM Configuration Set Id */
%let config_set_id = ${params.CONFIGSETID};

%let attribution_analysis_key = ${params.ATTRIBUTIONTEMPLATE};

/* *************************** */
/* Current period parameters   */
/* *************************** */

/* Credt Risk Detail Result (Current Period) */
%let curr_result_key = ${params.CURRENTRESULT.key};

   /* Analysis Run Key (Current Period) */
   %let attrib_curr_analysis_run_id = ${params.CURRENTRESULT.nav("analysisData_analysisRun_out|RMC")[0]};
   /* ModelRun (Current Period) */
   %let credit_model_run_key = ${params.CURRENTRESULT.nav("analysisData_analysisRun_out|RMC")[0].nav("modelRun_analysisRun|RMC")[0].key};
   /* Portfolio (Current Period) */
   %let portfolio_key = ${function:findRunParameter(params.CURRENTRESULT.nav("analysisData_analysisRun_out|RMC")[0],"PORTFOLIO")};
   /* Counterparty  (Current Period) */
   %let counterparty_key = ${function:findRunParameter(params.CURRENTRESULT.nav("analysisData_analysisRun_out|RMC")[0],"CREDITMODEL", "COUNTERPARTY")};
   /* Model Input DataMap key (Current Period) */
   %let modelIn_dataMap_key = ${function:findRunParameter(params.CURRENTRESULT.nav("analysisData_analysisRun_out|RMC")[0],"MODELINPUTMAP")};
   /* Model Output DataMap key (Current Period) */
   %let modelOut_dataMap_key = ${function:findRunParameter(params.CURRENTRESULT.nav("analysisData_analysisRun_out|RMC")[0],"MODELOUTPUTMAP")};
   /* Credit Risk Detail results for the previous period */
   %let prev_fr_htm_data_key = ${context.cycle.nav("cycle_analysisData_prev|RMC").filter("eq(resultsCategoryCd,'FR_HTM')")[0]};


/* *************************** */
/* Previous period parameters  */
/* *************************** */

/* Credt Risk Detail Result (Preious Period) */
%let prev_result_key = ${params.PREVIOUSRESULT.key};

   /* Analysis Run Key (Current Period) */
   %let attrib_prev_analysis_run_id = ${params.PREVIOUSRESULT.nav("analysisData_analysisRun_out|RMC")[0]};
   /* ModelRun (Previous Period) */
   %let prev_credit_model_run_key = ${params.PREVIOUSRESULT.nav("analysisData_analysisRun_out|RMC")[0].nav("modelRun_analysisRun|RMC")[0].key};
   /* Portfolio (Previous Period) */
   %let prev_portfolio_key = ${function:findRunParameter(params.PREVIOUSRESULT.nav("analysisData_analysisRun_out|RMC")[0],"PORTFOLIO")};
   /* Counterparty (Previous Period) */
   %let prev_counterparty_key = ${function:findRunParameter(params.PREVIOUSRESULT.nav("analysisData_analysisRun_out|RMC")[0],"CREDITMODEL", "COUNTERPARTY")};
   /* Model Input DataMap key (Previous Period) */
   %let prev_modelIn_dataMap_key = ${function:findRunParameter(params.PREVIOUSRESULT.nav("analysisData_analysisRun_out|RMC")[0],"MODELINPUTMAP")};
   /* Model Output DataMap key (Previous Period) */
   %let prev_modelOut_dataMap_key = ${function:findRunParameter(params.PREVIOUSRESULT.nav("analysisData_analysisRun_out|RMC")[0],"MODELOUTPUTMAP")};
   /* Credit Risk Detail results for the period prior to the previous period (i.e. two periods back) */
   %let prev2_fr_htm_data_key = ${params.PREVIOUSRESULT.nav("analysisData_cycle|RMC")[0].nav("cycle_analysisData_prev|RMC").filter("eq(resultsCategoryCd,'FR_HTM')")[0]};

/* Output Analysis Data Name and Description */
%let out_analysis_data_name = ${params.OUTANALYSISDATANAME};
%let out_analysis_data_desc = ${params.OUTANALYSISDATADESC};

/* Number of partitions for parallel processing while performing attribution analysis */
%let attribution_n_partitions = ${params.NPARALLELRUNS};

/* Keep MIP Cube? */
%let keep_mip_cube_flg = ${params.KEEPMIPCUBE};

/* LASR load method (Append/Replace) */
%let lasr_load_method = ${params.LASRLOADMETHOD};

/* Stage Attribution Method (Model/Stage) */
%let stage_attribution_method = ${params.STAGEATTRIBUTIONMETHOD};

/* Log Level: 1-4 */
%let log_level = ${params.LOGLEVEL};

/* Maximum wait time for IRM job completion: <number of seconds> */
%let max_wait = ${params.MAXWAIT};

/* ********************************************* */

/* Initialize the environment */
%include "&sas_risk_workgroup_dir./groups/Public/SASRiskManagementCore/cycles/&cycle_id./init.sas" / lrecl = 32000 source2;

/* Set logging options (based on the value of LOG_LEVEL macro variable) */
%irm_set_logging_options();


/* Set Instance Parameters */
%let jobflow_category = Analytics;
%let jobflow_type = %lowcase(irm&solutionId._attribution_analysis);
%let instance_date = %sysfunc(date(), yymmddp10.);
%let instance_time = %sysfunc(prxchange(s/(\d+):(\d+):(\d+)/$1h$2m$3s/i, -1, %sysfunc(time(), tod8.)));
%let instanceName = Attribution Analysis &instance_date._&instance_time.;
%let instanceDesc = Attribution Analysis;

/* Process LASR load method */
%let reload_lasr_flg = %sysfunc(ifc(%upcase(&lasr_load_method.) = REPLACE, Y, N));

/* Run option table */
data work.run_option;
   length
      config_name $32.
      config_value $10000.
   ;
   config_name = "RMC_FA_ID";                      config_value = "&rmc_fa_id.";                      output;
   config_name = "CYCLE_ID";                       config_value = "&cycle_id.";                       output;
   config_name = "ANALYSIS_RUN_ID";                config_value = "&analysis_run_id.";                output;
   config_name = "ANALYSIS_TYPE";                  config_value = "FR_HTM";                           output;
   config_name = "ATTRIB_CURR_ANALYSIS_RUN_ID";    config_value = "&attrib_curr_analysis_run_id.";    output;
   config_name = "ATTRIB_PREV_ANALYSIS_RUN_ID";    config_value = "&attrib_prev_analysis_run_id.";    output;
   config_name = "MAX_WAIT";                       config_value = "&max_wait.";                       output;
   config_name = "LOG_LEVEL";                      config_value = "&log_level.";                      output;
   config_name = "RELOAD_LASR_FLG";                config_value = "&reload_lasr_flg.";                output;
   config_name = "TGT_TICKET";                     config_value = "&rgf_tgt_ticket.";                 output;
run;

/* Credit Stress parameters table */
data work.credit_risk_config;
   length
      config_name $32.
      config_value $100.
   ;
   config_name = "ATTRIBUTION_ANALYSIS_KEY";       config_value = "&attribution_analysis_key.";       output;
   config_name = "CURR_RESULT_KEY";                config_value = "&curr_result_key.";                output;
   config_name = "CREDIT_MODEL_RUN_KEY";           config_value = "&credit_model_run_key.";           output;
   config_name = "PORTFOLIO_KEY";                  config_value = "&portfolio_key.";                  output;
   config_name = "COUNTERPARTY_KEY";               config_value = "&counterparty_key.";               output;
   config_name = "MODELIN_DATAMAP_KEY";            config_value = "&modelIn_dataMap_key.";            output;
   config_name = "MODELOUT_DATAMAP_KEY";           config_value = "&modelOut_dataMap_key.";           output;
   config_name = "PREV_FR_HTM_DATA";               config_value = "&prev_fr_htm_data_key.";           output;

   config_name = "PREV_RESULT_KEY";                config_value = "&prev_result_key.";                output;
   config_name = "PREV_CREDIT_MODEL_RUN_KEY";      config_value = "&prev_credit_model_run_key.";      output;
   config_name = "PREV_PORTFOLIO_KEY";             config_value = "&prev_portfolio_key.";             output;
   config_name = "PREV_COUNTERPARTY_KEY";          config_value = "&prev_counterparty_key.";          output;
   config_name = "PREV_MODELIN_DATAMAP_KEY";       config_value = "&prev_modelIn_dataMap_key.";       output;
   config_name = "PREV_MODELOUT_DATAMAP_KEY";      config_value = "&prev_modelOut_dataMap_key.";      output;
   config_name = "PREV2_FR_HTM_DATA";              config_value = "&prev2_fr_htm_data_key.";          output;
   config_name = "KEEP_MIP_CUBE_FLG";              config_value = "&keep_mip_cube_flg.";              output;
   config_name = "ATTRIBUTION_N_PARTITIONS";       config_value = "&attribution_n_partitions.";       output;
   config_name = "OUT_ANALYSIS_DATA_NAME";         config_value = "&out_analysis_data_name.";         output;
   config_name = "OUT_ANALYSIS_DATA_DESC";         config_value = "&out_analysis_data_desc.";         output;
   config_name = "STAGE_ATTRIBUTION_METHOD";       config_value = "&stage_attribution_method.";       output;
run;

data work.attribution_scenario_map;
   length
      from_scenario_id $32.
      to_scenario_id $32.
   ;
   stop;
run;

%let instanceKey =;
%let jobflow_status = Unknown;
/* Create job flow instance and wait for completion */
%irm_rest_create_jobflow_instance(instance_name = &instanceName.
                                  , description = &instanceDesc.
                                  , entityId = &entity_id.
                                  , entityRoleKey = &entity_role_key.
                                  , category = &jobflow_category.
                                  , jobflowFile = &jobflow_type.
                                  , baseDate = &irm_base_dt.
                                  , configSetId = &config_set_id.
                                  , federatedAreaID = &irm_fa_id.
                                  , sourceFederatedAreaId = &irm_fa_id.
                                  , src_param_tables = work.run_option                          work.credit_risk_config
                                  , tgt_param_tables = &solutionLibrefPrefix._CFG.RUN_OPTION    &solutionLibrefPrefix._CFG.CREDIT_RISK_CONFIG
                                  , src_upload_tables = work.attribution_scenario_map
                                  , tgt_upload_tables = &solutionLibrefPrefix._CFG.ATTRIBUTION_SCENARIO_MAP
                                  , wait_flg = Y
                                  , pollInterval = 3
                                  , maxWait = &max_wait.
                                  , host = &irm_protocol.://&irm_host.
                                  , port = &irm_port.
                                  , tgt_ticket = &rgf_tgt_ticket.
                                  , outvar = instanceKey
                                  , outVarStatus = jobflow_status
                                  );

%if(&jobflow_status. = Successful) %then %do;
   /* Refresh the Star Schema Views */
   %irmc_refresh_lasr_schema_view(lasr_lib = &lasr_libref.
                                  , mart_table_name = &solutionId._CREDIT_RISK_DETAIL
                                  , rls_table_name = &solutionId._CREDIT_RISK_DETAIL_RLS
                                  , meta_repository = &meta_repository.
                                  , lasr_library_name = &lasr_library_name.
                                  , lasr_meta_folder = &lasr_meta_folder.
                                  );
%end;

/* Update the Cycle control table */
%irmc_update_ctrl_table(cycle_id = &cycle_id.
                        , analysis_run_id = &analysis_run_id.
                        , dr_libref = &dr_libref.
                        , entry_type = IRM
                        , entry_id = &instanceKey.
                        , entry_name = &instanceName.
                        );