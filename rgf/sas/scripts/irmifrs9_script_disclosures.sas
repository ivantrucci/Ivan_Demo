/* ********************************************* */
/*  Disclosure Reports Script: Input Parameters  */
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

/* List of Reports to create */
%let report_id_list = ${params.REPORTIDLIST};
/* Convert to space separated list: ["ReportId1","ReportId2",...,"ReportIdN"] --> ReportId1 ReportId2 ... ReportIdN */
%let report_id_list = %sysfunc(prxchange(s/\W+/ /i, -1, %superq(report_id_list)));

/* Credit Risk Detail key */
%let fr_htm_data_key = ${params.FRHTM.key};

/* Credit Risk Detail key */
%let aa_data_key = ${params.AA.key};

/* Previous period data */
%let prev_fr_htm_data_key = ${context.cycle.nav("cycle_analysisData_prev|RMC").filter("eq(resultsCategoryCd,'FR_HTM')")[0]};

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
%let jobflow_type = %lowcase(irm&solutionId._disclosure_reports);
%let instance_date = %sysfunc(date(), yymmddp10.);
%let instance_time = %sysfunc(prxchange(s/(\d+):(\d+):(\d+)/$1h$2m$3s/i, -1, %sysfunc(time(), tod8.)));
%let instanceName = Disclosure Reports &instance_date._&instance_time.;
%let instanceDesc = Disclosure Reports;

/* Create parameters tables */
data work.run_option;
   length
      config_name $32.
      config_value $10000.
   ;
   config_name = "RMC_FA_ID";                config_value = "&rmc_fa_id.";                   output;
   config_name = "CYCLE_ID";                 config_value = "&cycle_id.";                    output;
   config_name = "ANALYSIS_RUN_ID";          config_value = "&analysis_run_id.";             output;
   config_name = "MAX_WAIT";                 config_value = "&max_wait.";                    output;
   config_name = "LOG_LEVEL";                config_value = "&log_level.";                   output;
   config_name = "TGT_TICKET";               config_value = "&rgf_tgt_ticket.";              output;
run;

data work.report_option;
   length
      config_name $32.
      config_value $10000.
   ;
   config_name = "REPORT_ID_LIST";           config_value = "&report_id_list.";              output;
run;

data data_extraction_config;
   length
      source_data_name   $32.
      analysis_data_key  $32.
      aggregate_flg      $1.
   ;
   source_data_name = "FR_HTM_DATA";         analysis_data_key = "&fr_htm_data_key.";       aggregate_flg = "Y"; output;
   source_data_name = "PREV_FR_HTM_DATA";    analysis_data_key = "&prev_fr_htm_data_key.";  aggregate_flg = "Y"; output;
   source_data_name = "AA_DATA";             analysis_data_key = "&aa_data_key.";           aggregate_flg = "N"; output;
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
                                  , src_param_tables = work.run_option                          work.report_option
                                  , tgt_param_tables = &solutionLibrefPrefix._CFG.RUN_OPTION    &solutionLibrefPrefix._CFG.REPORT_OPTION
                                  , src_upload_tables = work.data_extraction_config
                                  , tgt_upload_tables = &solutionLibrefPrefix._CFG.DATA_EXTRACTION_CONFIG
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
                        
%if (&jobflow_status. = Successful) %then %do;
   /* Update the Cycle control table */
   %irmc_update_ctrl_table(cycle_id = &cycle_id.
                           , analysis_run_id = &analysis_run_id.
                           , dr_libref = &dr_libref.
                           , entry_type = RGF
                           , entry_id = &analysis_run_id.
                           , entry_name = Disclosures Analysis
                           , entry_location = analysisRuns
                           );
%end;