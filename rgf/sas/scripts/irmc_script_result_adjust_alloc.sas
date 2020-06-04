/* ************************************************ */
/*  Adjustment Allocation Script: Input Parameters  */
/* ************************************************ */

/* TGT Authentication Ticket */
%let rgf_tgt_ticket = ${globals.ticket};

/* Get the root location of the SAS Risk Workgroup Application */
%let sas_risk_workgroup_dir = ${globals.sas_risk_workgroup_dir};

/* Cycle Id */
%let cycle_id = ${context.cycle.key};

/* Analysis Run Id */
%let analysis_run_id = ${context.analysisRun.key};

/* Analysis Data key */
%let analysis_data_key = ${params.ANALYSISDATA.key};

/* Adjustment Analysis Data key */
%let adjustment_data_key = ${params.ADJUSTMENTDATA.key};

/* Schema Name and Version of the Data Definition object associated with this Analysois Data object */
%let schema_name = ${params.ANALYSISDATA.nav("analysisData_dataDefinition|RMC")[0].schemaName};
%let schema_version = ${params.ANALYSISDATA.nav("analysisData_dataDefinition|RMC")[0].schemaVersion};

/* RuleSet Key */
%let ruleSet_key = ${params.RULESET.key};

/* Movement Type code */
%let movement_type_cd = ${params.MOVEMENTTYPECD};

/* Movement Description */
%let movement_desc = ${params.MOVEMENTDESC};

/* IRM Configuration Set Id */
%let config_set_id = ${params.CONFIGSETID};

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

/* Assign config and mapping libraries */
libname cfg_lib "&irm_fa_path./landing_area/base/%lowcase(&config_set_id.)/static";
libname map_lib "&irm_fa_path./landing_area/base/%lowcase(&config_set_id.)/mapping";

/* Process LASR load method */
%let reload_lasr_flg = %sysfunc(ifc(%upcase(&lasr_load_method.) = REPLACE, Y, N));

/* Set the reportmart group id */
%let reportmart_group_id = Credit Risk;
%let reload_key_list =;

%if (&movement_type_cd. eq IA_ADJ) %then %do;
   %let jobflow_status=Unknown;
   /* Run the individual adjustments */
   %irmc_run_ia(credit_risk_data_key = &analysis_data_key.
             , adjustment_data_key = &adjustment_data_key.
             , run_id = &analysis_run_id.
             , dr_libref = &dr_libref.
             , dr_library_name = &dr_library_name.
             , schema_name = &schema_name.
             , schema_version = &schema_version.
             , cycle_id = &cycle_id.
             , entity_id = &entity_id.
             , rgf_tgt_ticket = &rgf_tgt_ticket.
             , rgf_protocol = &rgf_protocol.
             , rgf_host = &rgf_host.
             , rgf_port = &rgf_port.
             , rgf_service = &rgf_service.
             , rgf_solution = &rgf_solution.
             , reportmart_group_id = &reportmart_group_id.
             );
   /* Load the reportmart table */
   %irmc_load_reportmart(partition_no = 1
                      , ds_in_cardinality =
                      , ds_in_reportmart_config = reportmart_config
                      , ds_out_load_result = load_result
                      , irm_input_libraries =
                      , dr_libref = &dr_libref.
                      , dr_library_name = &dr_library_name.
                      , mart_libref = &mart_libref.
                      , rgf_protocol = &rgf_protocol.
                      , rgf_host = &rgf_host.
                      , rgf_port = &rgf_port.
                      , rgf_service = &rgf_service.
                      , rgf_solution = &rgf_solution.
                      , rgf_tgt_ticket = &rgf_tgt_ticket.
                      );
%end; /* end %if (movement_type_cd eq IA_ADJ) */
%else %do;
   /* Set Instance Parameters */
   %let jobflow_category = Analytics;
   %let jobflow_type = %lowcase(irm&solutionId._adjustment_allocation);
   %let instance_date = %sysfunc(date(), yymmddp10.);
   %let instance_time = %sysfunc(prxchange(s/(\d+):(\d+):(\d+)/$1h$2m$3s/i, -1, %sysfunc(time(), tod8.)));
   %let instanceName = Adjustment Allocation &instance_date._&instance_time.;
   %let instanceDesc = Adjustment Allocation;

   /* Run option table */
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

   /* Credit Stress parameters table */
   data work.allocation_config;
      length
         config_name $32.
         config_value $100.
      ;
      config_name = "ANALYSIS_DATA_KEY";        config_value = "&analysis_data_key.";   output;
      config_name = "ANALYSIS_DATA_DS_NAME";    config_value = "&schema_name.";         output;
      config_name = "RULESET_KEY";              config_value = "&ruleSet_key.";         output;
      config_name = "MOVEMENT_TYPE_CD";         config_value = "&movement_type_cd.";    output;
      config_name = "MOVEMENT_DESC";            config_value = "&movement_desc.";       output;
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
                                     , src_param_tables = work.run_option                         work.allocation_config
                                     , tgt_param_tables = &solutionLibrefPrefix._CFG.RUN_OPTION   &solutionLibrefPrefix._CFG.ALLOCATION_CONFIG
                                     , autoRun = true
                                     , wait_flg = Y
                                     , pollInterval = 3
                                     , maxWait = &max_wait.
                                     , host = &irm_protocol.://&irm_host.
                                     , port = &irm_port.
                                     , tgt_ticket = &rgf_tgt_ticket.
                                     , outvar = instanceKey
                                     , outVarStatus = jobflow_status
                                     );
%end;

%if(&movement_type_cd. = IA_ADJ or &jobflow_status. = Successful) %then %do;
   /* Refresh the Star Schema Views */
   %irmc_refresh_lasr_schema_view(lasr_lib = &lasr_libref.
                                  , mart_table_name = &schema_name.
                                  , rls_table_name = &schema_name._rls
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
