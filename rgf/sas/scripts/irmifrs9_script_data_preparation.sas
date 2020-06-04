/* ********************************************* */
/*   Data Preparation Script: Input Parameters   */
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

/* Enrich Portfolio table with Counterparty data: Y/N */
%let enrich_counterparty_flg = ${params.COUNTERPARTYENRICHMENT};

/* Enrich Portfolio table with Sppi data: Y/N */
%let enrich_sppi_flg = ${params.SPPIENRICHMENT};

/* Register Rule Sets: Y/N */
%let register_rulesets_flg = ${params.RULESETREGISTRATION};

/* List of tables to register */
%let dstore_table_list = ${params.DATASTORETABLELIST};
/* Convert to space separated list: ["TableName1","TableName2",...,"TableNameN"] --> TableName1 TableName2 ... TableNameN */
%let dstore_table_list = %sysfunc(prxchange(s/\W+/ /i, -1, %superq(dstore_table_list)));

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
%let jobflow_type = %lowcase(irm&solutionId._data_preparation);
%let instance_date = %sysfunc(date(), yymmddp10.);
%let instance_time = %sysfunc(prxchange(s/(\d+):(\d+):(\d+)/$1h$2m$3s/i, -1, %sysfunc(time(), tod8.)));
%let instanceName = Data Preparation &instance_date._&instance_time.;
%let instanceDesc = Data Preparation;

/* Create parameters table */
data work.run_option;
   length
      config_name $32.
      config_value $10000.
   ;
   config_name = "RMC_FA_ID";                config_value = "&rmc_fa_id.";                output;
   config_name = "CYCLE_ID";                 config_value = "&cycle_id.";                 output;
   config_name = "ANALYSIS_RUN_ID";          config_value = "&analysis_run_id.";          output;
   config_name = "REGISTER_RULESETS_FLG";    config_value = "&register_rulesets_flg.";    output;
   config_name = "MAX_WAIT";                 config_value = "&max_wait.";                 output;
   config_name = "LOG_LEVEL";                config_value = "&log_level.";                output;
run;

data work.enrichment_config;
   length
      config_name $32.
      config_value $10000.
   ;
   config_name = "DSTORE_TABLE_LIST";        config_value = "&dstore_table_list.";        output;
   config_name = "ENRICH_COUNTERPARTY_FLG";  config_value = "&enrich_counterparty_flg.";  output;
   config_name = "ENRICH_SPPI_FLG";          config_value = "&enrich_sppi_flg.";          output;
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
                                  , src_param_tables = work.run_option                          work.enrichment_config
                                  , tgt_param_tables = &solutionLibrefPrefix._CFG.RUN_OPTION    &solutionLibrefPrefix._CFG.ENRICHMENT_CONFIG
                                  , wait_flg = Y
                                  , pollInterval = 3
                                  , maxWait = &max_wait.
                                  , host = &irm_protocol.://&irm_host.
                                  , port = &irm_port.
                                  , tgt_ticket = &rgf_tgt_ticket.
                                  , outvar = instanceKey
                                  , outVarStatus = jobflow_status
                                  );

/* Update the Cycle control table */
%irmc_update_ctrl_table(cycle_id = &cycle_id.
                        , analysis_run_id = &analysis_run_id.
                        , dr_libref = &dr_libref.
                        , entry_type = IRM
                        , entry_id = &instanceKey.
                        , entry_name = &instanceName.
                        );
