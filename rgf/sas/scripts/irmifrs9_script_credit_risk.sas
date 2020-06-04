/* ********************************************* */
/*   Credit Risk Analysis: Input Parameters    */
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

/* Portfolio key */
%let portfolio_key = ${params.PORTFOLIO.key};

/* Counterparty key */
%let counterparty_key = ${params.CREDITMODEL.params.COUNTERPARTY.key};

/* IA data key */
%let ia_data_key = ${params.IADATA.key};

/* Previous period data */
%let prev_fr_htm_data_key = ${context.cycle.nav("cycle_analysisData_prev|RMC").filter("eq(resultsCategoryCd,'FR_HTM')")[0]};

/* Model Input DataMap key */
%let modelIn_dataMap_key = ${params.MODELINPUTMAP.key};

/* Model Output DataMap key */
%let modelOut_dataMap_key = ${params.MODELOUTPUTMAP.key};

/* Model Run Key */
%let model_run_key = ${params.CREDITMODEL.rels("context").modelRun.key};

/* Keep MIP Cube? */
%let keep_mip_cube_flg = ${params.KEEPMIPCUBE};

/* LASR load method (Append/Replace) */
%let lasr_load_method = ${params.LASRLOADMETHOD};

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
%let jobflow_type = %lowcase(irm&solutionId._credit_risk);
%let instance_date = %sysfunc(date(), yymmddp10.);
%let instance_time = %sysfunc(prxchange(s/(\d+):(\d+):(\d+)/$1h$2m$3s/i, -1, %sysfunc(time(), tod8.)));
%let instanceName = Credit Risk Analysis &instance_date._&instance_time.;
%let instanceDesc = Credit Risk Analysis;

/* Process LASR load method */
%let reload_lasr_flg = %sysfunc(ifc(%upcase(&lasr_load_method.) = REPLACE, Y, N));

/* Run option table */
data work.run_option;
   length
      config_name $32.
      config_value $10000.
   ;
   config_name = "RMC_FA_ID";          config_value = "&rmc_fa_id.";           output;
   config_name = "CYCLE_ID";           config_value = "&cycle_id.";            output;
   config_name = "ANALYSIS_RUN_ID";    config_value = "&analysis_run_id.";     output;
   config_name = "ANALYSIS_TYPE";      config_value = "FR_HTM";                output;
   config_name = "MAX_WAIT";           config_value = "&max_wait.";            output;
   config_name = "LOG_LEVEL";          config_value = "&log_level.";           output;
   config_name = "RELOAD_LASR_FLG";    config_value = "&reload_lasr_flg.";     output;
   config_name = "TGT_TICKET";         config_value = "&rgf_tgt_ticket.";      output;
run;

/* Credit Stress parameters table */
data work.credit_risk_config;
   length
      config_name $32.
      config_value $100.
   ;
   config_name = "CREDIT_MODEL_RUN_KEY";    config_value = "&model_run_key.";          output;
   config_name = "PORTFOLIO_KEY";           config_value = "&portfolio_key.";          output;
   config_name = "COUNTERPARTY_KEY";        config_value = "&counterparty_key.";       output;
   config_name = "IA_DATA";                 config_value = "&ia_data_key.";            output;
   config_name = "PREV_FR_HTM_DATA";        config_value = "&prev_fr_htm_data_key.";   output;
   config_name = "MODELIN_DATAMAP_KEY";     config_value = "&modelIn_dataMap_key.";    output;
   config_name = "MODELOUT_DATAMAP_KEY";    config_value = "&modelOut_dataMap_key.";   output;
   config_name = "KEEP_MIP_CUBE_FLG";       config_value = "&keep_mip_cube_flg.";      output;
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