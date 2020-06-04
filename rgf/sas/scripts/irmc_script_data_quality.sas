/* ********************************************* */
/*   Data Quality Script: Input Parameters       */
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
%let analysis_data_key = ${params.PORTFOLIO.key};

/* RuleSet Key */
%let ruleSet_key = ${params.RULESET.key};

/* Generate Data Quality Details table? Y/N  */
%let dq_details_flg = ${params.DQDETAILS};

/* Log Level: 1-4 */
%let log_level = ${params.LOGLEVEL};

/* Maximum wait time for IRM job completion: <number of seconds> */
%let max_wait = ${params.MAXWAIT};

/* LASR load method (Append/Replace) */
%let lasr_load_method = ${params.LASRLOADMETHOD};

/* ********************************************* */

/* Initialize the environment */
%include "&sas_risk_workgroup_dir./groups/Public/SASRiskManagementCore/cycles/&cycle_id./init.sas" / lrecl = 32000 source2;

/* Set logging options (based on the value of LOG_LEVEL macro variable) */
%irm_set_logging_options();

/* Set Instance Parameters */
%let jobflow_category = Analytics;
%let jobflow_type = irm%lowcase(&solutionId.)_data_quality;
%let instance_date = %sysfunc(date(), yymmddp10.);
%let instance_time = %sysfunc(prxchange(s/(\d+):(\d+):(\d+)/$1h$2m$3s/i, -1, %sysfunc(time(), tod8.)));
%let instanceName = Data Quality &instance_date._&instance_time.;
%let instanceDesc = Data Quality;

/* Process LASR load method */
%let reload_lasr_flg = %sysfunc(ifc(%upcase(&lasr_load_method.) = REPLACE, Y, N));

/* Create parameters table */
data work.run_option;
   length
      config_name $32.
      config_value $10000.
   ;
   config_name = "RMC_FA_ID";          config_value = "&rmc_fa_id.";           output;
   config_name = "CYCLE_ID";           config_value = "&cycle_id.";            output;
   config_name = "ANALYSIS_RUN_ID";    config_value = "&analysis_run_id.";     output;
   config_name = "MAX_WAIT";           config_value = "&max_wait.";            output;
   config_name = "LOG_LEVEL";          config_value = "&log_level.";           output;
   config_name = "RELOAD_LASR_FLG";    config_value = "&reload_lasr_flg.";     output;
run;

data work.dq_config;
   length
      config_name $32.
      config_value $256.
   ;
   config_name = "ANALYSIS_DATA_KEY_LIST";        config_value = "&analysis_data_key.";    output;
   config_name = "DQ_RULE_SET_KEY_LIST";          config_value = "&ruleSet_key.";          output;
   config_name = "DQ_DETAILS_FLG";                config_value = "&dq_details_flg.";       output;
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
                                  , src_param_tables = work.run_option                          work.dq_config
                                  , tgt_param_tables = &solutionLibrefPrefix._CFG.RUN_OPTION    &solutionLibrefPrefix._CFG.DQ_CONFIG
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
                                  , mart_table_name = &solutionId._DQ_SUMMARY
                                  , rls_table_name = &solutionId._DQ_SUMMARY_RLS
                                  , meta_repository = &meta_repository.
                                  , lasr_library_name = &lasr_library_name.
                                  , lasr_meta_folder = &lasr_meta_folder.
                                  );

   %irmc_refresh_lasr_schema_view(lasr_lib = &lasr_libref.
                                  , mart_table_name = &solutionId._DQ_DETAILS
                                  , rls_table_name = &solutionId._DQ_DETAILS_RLS
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
