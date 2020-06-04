/* ********************************************* */
/*   Data Adjustment Script: Input Parameters    */
/* ********************************************* */

/* TGT Authentication Ticket */
%let rgf_tgt_ticket = ${globals.ticket};

/* Get the root location of the SAS Risk Workgroup Application */
%let sas_risk_workgroup_dir = ${globals.sas_risk_workgroup_dir};

/* Cycle Id */
%let cycle_id = ${context.cycle.key};

/* Run Id */
%let run_id = ${context.runId};

/* Run Type */
%let run_type = ${context.runType};

/* ******************* */
/* Analysis Data Input */
/* ******************* */

/* Analysis Data key */
%let analysis_data_key = ${params.ANALYSISDATA.key};
/* Analysis Data Name */
%let analysis_data_name = ${params.ANALYSISDATA.name};
/* Analysis Data Description */
%let analysis_data_desc = ${params.ANALYSISDATA.description};

/* ********************* */

/* Reset syscc macro variable */
%let syscc = 0;

/* Output Analysis Data Name */
%let out_analysis_data_name = ${params.OUTANALYSISDATANAME};
/* Output Analysis Data Description */
%let out_analysis_data_desc = ${params.OUTANALYSISDATADESC};


/* Schema Name and Version of the Data Definition object associated with this Analysis Data object */
%let schema_name = ${params.ANALYSISDATA.nav("analysisData_dataDefinition|RMC")[0].schemaName};
%let schema_version = ${params.ANALYSISDATA.nav("analysisData_dataDefinition|RMC")[0].schemaVersion};
%let business_category = ${params.ANALYSISDATA.nav("analysisData_dataDefinition|RMC")[0].businessCategoryCd};

/* RuleSet Key */
%let ruleSet_key = ${params.RULESET.key};
/* RuleSet type: AllocationRuleSet/BusinessRuleSet */
%let ruleSet_type = ${params.RULESET.ruleSetType};

/* Log Level: 1-4 */
%let log_level = ${params.LOGLEVEL};

/* Create rules audit table (only applicable for Classification Rule Set) - this can be replaced with a model parameter in the future */
%let create_rules_audit = No;

/* ********************************************* */

/* Initialize the environment */
%include "&sas_risk_workgroup_dir./groups/Public/SASRiskManagementCore/cycles/&cycle_id./init.sas" / lrecl = 32000 source2;

/* Set logging options (based on the value of LOG_LEVEL macro variable) */
%irm_set_logging_options();

/* Get Detail Data */
%irm_get_details(libref = &dr_libref.
                 , table_name = &schema_name.
                 , table_id = &analysis_data_key.
                 , schema_version = &schema_version.
                 , out_ds = &schema_name.
                 , out_ds_meta = out_ds_meta
                 , out_partition_list = partition_list
                 , out_type = view
                 );

/* Get Rules Set table */
%irm_rest_get_rgf_rule_set(host = &rgf_protocol.://&rgf_host.
                           , server = &rgf_service.
                           , solution = &rgf_solution.
                           , port = &rgf_port.
                           , tgt_ticket = &rgf_tgt_ticket.
                           , key = &ruleSet_key.
                           , outds = rules_info
                           , outVarTicket = ticket
                           , outSuccess = httpSuccess
                           , outResponseStatus = responseStatus
                           );


/* Apply Rules */
%if(&ruleSet_type. eq AllocationRuleSet or &ruleSet_type. eq QFactorRuleSet or &ruleSet_type. eq MgtActionRuleSet) %then %do;

   /* Workaround for the SQLContraintTransformer which requires a RGF hotfix */
   data rules_info;
      set rules_info;
      filter_exp = prxchange('s/LOWER\(\s*(\w+)\s*\) like LOWER\(\s*"%([^%]+)%"\s*\)/prxmatch("\/\Q$2\E\/i", $1)/i', -1, filter_exp);
      /* Convert != to ne */
      filter_exp = prxchange("s/(!=)/ne/i", -1, filter_exp);
      /* If rule set type is Management Action, update the filter expression and drop record_id */
      if ruleSetType = "MgtActionRuleSet" then do;
         filter_exp = catt(filter_exp, " and (FORECAST_TIME ne 0)");
         drop record_id;
      end;
   run;

   /* Run Allocation Rules */
   %irm_apply_allocation_rules(ds_in = &schema_name.
                               , rule_def_ds = rules_info
                               , exclude_filter_vars = ruleSetKey
                               , custom_filter_var = filter_exp
                               , ds_out = modified_details
                               , ds_out_rule_summary = rule_summary
                               );

   /* Finalize Summary table */
   data &solutionId._alloc_rule_summary / view = &solutionId._alloc_rule_summary;
      attrib
         ruleSetKey                 length = 8.        label = "Ruleset Key"
         rule_condition             length = $10000.   label = "Rule Condition"
         adjustment_value           length = $150.     label = "Adjustment Value"
         measure_var_nm             length = $150.     label = "Measure Variable Name"
         adjustment_type            length = $150.     label = "Adjustment Type"
         allocation_method          length = $150.     label = "Allocation Method"
         aggregation_method         length = $32.      label = "Aggregation Method"
         weight_var_nm              length = $150.     label = "Weight Variable Name"
         weighted_aggregation_flg   length = $3.       label = "Weighted Aggregation Flag"
         affected_row_cnt           length = 8.        label = "Affected Row Count"
         total_row_cnt              length = 8.        label = "Total Row Count"
      ;
      set rule_summary;
      keep
         ruleSetKey
         rule_condition
         adjustment_value
         measure_var_nm
         adjustment_type
         allocation_method
         aggregation_method
         weight_var_nm
         weighted_aggregation_flg
         affected_row_cnt
         total_row_cnt
      ;
   run;

   %let rule_summary_schema_name = %lowcase(&solutionId._alloc_rule_summary);
   %let filterable_vars = measure_var_nm adjustment_type allocation_method aggregation_method weight_var_nm weighted_aggregation_flg;
   %let dataDefinition_name = Allocation Rules Summary Schema;
   %let dataDefinition_desc = Allocation Rules Summary schema definition;
%end;

%if(&ruleSet_type. eq BusinessRuleSet) %then %do;

   /* Set the name of the source and target table */
   data rules_info;
      set rules_info;
      source_table = "&schema_name.";
      source_table_desc = "&analysis_data_name. (&analysis_data_key.)";
      target_table = "modified_details";
   run;

   /* Run Business Rules */
   %irm_run_rules(ds_rule_def = rules_info
                  , ds_out_summary = rule_summary
                  );

   /* Finalize Summary table */
   data &solutionId._business_rule_summary / view = &solutionId._business_rule_summary;
      attrib
         ruleSetKey   length = 8. label = "Ruleset Key"
      ;
      set rule_summary;
      ruleSetKey = &ruleSet_key.;
   run;

   %let rule_summary_schema_name = %lowcase(&solutionId._business_rule_summary);
   %let filterable_vars = source_table rule_id rule_name rule_reporting_lev1 rule_reporting_lev2 rule_reporting_lev3 rule_message_txt source_table rule_id;
   %let dataDefinition_name = Business Rules Summary Schema;
   %let dataDefinition_desc = Business Rules Summary schema definition;
%end;

%if(&ruleSet_type. eq ClassificationRuleSet) %then %do;

   /* Workaround for the SQLContraintTransformer which requires a RGF hotfix */
   data rules_info;
      set rules_info (rename = (classification_value = adjustment_value
                                classification_field = measure_var_nm));
      filter_exp = prxchange('s/LOWER\(\s*(\w+)\s*\) like LOWER\(\s*"%([^%]+)%"\s*\)/prxmatch("\/\Q$2\E\/i", $1)/i', -1, filter_exp);
      /* Convert != to ne */
      filter_exp = prxchange("s/(!=)/ne/i", -1, filter_exp);
      /* If rule set type is Management Action, update the filter expression and drop record_id */
      if ruleSetType = "ClassificationRuleSet" then do;
         allocation_method = "INDIVIDUAL";
         adjustment_type = "ABSOLUTE";
      end;
   run;

   /* Run Allocation Rules */
   %irm_apply_allocation_rules(ds_in = &schema_name.
                               , rule_def_ds = rules_info
                               , exclude_filter_vars = ruleSetKey
                               , custom_filter_var = filter_exp
                               , ds_out = modified_details
                               , ds_out_audit = rule_details
                               , ds_out_rule_summary = rule_summary
                               );

   /* Finalize Summary table */
   data &solutionId._alloc_rule_summary / view = &solutionId._alloc_rule_summary;
      attrib
         ruleSetKey                 length = 8.        label = "Ruleset Key"
         rule_condition             length = $10000.   label = "Rule Condition"
         adjustment_value           length = $150.     label = "Adjustment Value"
         measure_var_nm             length = $150.     label = "Measure Variable Name"
         adjustment_type            length = $150.     label = "Adjustment Type"
         allocation_method          length = $150.     label = "Allocation Method"
         aggregation_method         length = $32.      label = "Aggregation Method"
         weight_var_nm              length = $150.     label = "Weight Variable Name"
         weighted_aggregation_flg   length = $3.       label = "Weighted Aggregation Flag"
         affected_row_cnt           length = 8.        label = "Affected Row Count"
         total_row_cnt              length = 8.        label = "Total Row Count"
      ;
      set rule_summary;
      keep
         ruleSetKey
         rule_condition
         adjustment_value
         measure_var_nm
         adjustment_type
         allocation_method
         aggregation_method
         weight_var_nm
         weighted_aggregation_flg
         affected_row_cnt
         total_row_cnt
      ;
   run;

   %let rule_summary_schema_name = %lowcase(&solutionId._alloc_rule_summary);
   %let filterable_vars = measure_var_nm adjustment_type allocation_method aggregation_method weight_var_nm weighted_aggregation_flg;
   %let dataDefinition_name = Allocation Rules Summary Schema;
   %let dataDefinition_desc = Allocation Rules Summary schema definition;
   
%end;

%if(&ruleSet_type. eq ClassificationRuleSet and &create_rules_audit eq Yes) %then %do;
   /* Retrieve the primary key */
   data _null_;
      set out_ds_meta;
      call symputx("primary_key", primary_key, "L");
   run;
   /* Classification audit table */
   data &solutionId._alloc_rule_detail;
      attrib
         table_id              length = 8.       label = "Table Id"
         project_id            length = 8        label = "Analysis Cycle Id"
         load_id               length = $32.     label = "Load Id"
         entity_id             length = $32.     label = "Entity Id"
         workgroup             length = $32.     label = "Risk Workgroup"
         reporting_dt          length = 8.       label = "Base Date"                   format = yymmddd10.
      ;
      set &schema_name. (keep = &primary_key.);
      attrib
         measure_name          length = $32.     label = "Classification Field"
         current_txt_value     length = $150.    label = "Current Value"
         previous_txt_value    length = $150.    label = "Previous Value"
         processed_dttm        length = 8.       label = "Processed Datetime"          format = datetime21.
      ;
      stop;
   run;
   /* Append modified_delta to the output details table */
   proc append base = &solutionId._alloc_rule_detail
               data = rule_details force;
   run;
   /* Set the parameters needed to store the analysis data */
   %let rule_audit_dtl_schema_name = %lowcase(&solutionId._alloc_rule_audit);
   %let filterable_vars_dtl = classification_field;
   %let dataDef_name_audit_dtl = Rules Audit Definition;
   %let dataDef_desc_audit_dtl = Rules Audit schema definition;
%end;

/* Register results only if there are no errors */
%if &syscc. <= 4 %then %do;
   /* Store the modified table to the Data Repository and register it in RGF */
   %irm_rgf_store_analysis_data(ds_in = modified_details
                                /* Analysis Data Parameters */
                                , analysis_data_name = &out_analysis_data_name.
                                , analysis_data_desc = &out_analysis_data_desc.
                                , base_date = &base_dt.
                                , cycle_id = &cycle_id.
                                , entity_id = &entity_id.
                                , status_cd = Preliminary
                                , %sysfunc(ifc(&run_type = Analysis Run, analysis_run_id = &run_id., model_run_id = &run_id.))

                                /* Data Definition Parameters */
                                , libref = &dr_libref.
                                , schema_name = &schema_name.
                                , schema_version = &schema_version.

                                /* Output tables */
                                , out_exceptions = data_exceptions
                                , out_analysis_data = new_analysys_data
                                , out_partition_list = new_partitions
                                , out_data_definition = data_definition
                                , out_link_instance = link_instance

                                /* Connection Parameters */
                                , host = &rgf_protocol.://&rgf_host.
                                , server = &rgf_service.
                                , solution = &rgf_solution.
                                , port = &rgf_port.
                                , tgt_ticket = &rgf_tgt_ticket.
                                , outVarTicket = ticket
                                , outSuccess = httpSuccess
                                , outResponseStatus = responseStatus
                                );


   /* Store the audit summary table to the Data Repository and register it in RGF */
   %irm_rgf_store_analysis_data(ds_in = &rule_summary_schema_name.
                                /* Analysis Data Parameters */
                                , analysis_data_name = Adjustments Summary (&analysis_data_name.) - %sysfunc(date(), yymmdd10.) %sysfunc(time(), tod8.)
                                , analysis_data_desc = Summary information about the adjustments that were applied on Analysis Data object &analysis_data_name. (Object Id: &analysis_data_key.).
                                , base_date = &base_dt.
                                , cycle_id = &cycle_id.
                                , entity_id = &entity_id.
                                , status_cd = Preliminary
                                , %sysfunc(ifc(&run_type = Analysis Run, analysis_run_id = &run_id., model_run_id = &run_id.))

                                /* Data Definition Parameters */
                                , data_definition_name = &dataDefinition_name.
                                , data_definition_desc = &dataDefinition_desc.
                                , libref = &dr_libref.
                                , engine = META
                                , meta_library_name = &dr_library_name.
                                , schema_name = &rule_summary_schema_name.
                                , schema_version = &content_version.
                                , schema_type = FLAT
                                , business_category = &business_category.
                                , data_category = AUDIT_SUMMARY
                                , risk_type = OTHER
                                , data_type = &ruleSet_type.
                                , partition_vars =
                                , filterable_vars = &filterable_vars.
                                , classification_vars =
                                , attributable_vars =
                                , mandatory_segmentation_vars =
                                , projection_vars =
                                , custom_code =
                                , constraint_enabled_flg = N

                                /* Output tables */
                                , out_exceptions = audit_data_exceptions
                                , out_analysis_data = audit_analysys_data
                                , out_partition_list = audit_partitions
                                , out_data_definition = audit_data_definition
                                , out_link_instance = audit_link_instance

                                /* Connection Parameters */
                                , host = &rgf_protocol.://&rgf_host.
                                , server = &rgf_service.
                                , solution = &rgf_solution.
                                , port = &rgf_port.
                                , tgt_ticket = &rgf_tgt_ticket.
                                , outVarTicket = ticket
                                , outSuccess = httpSuccess
                                , outResponseStatus = responseStatus
                                );
%end;

/* Register classification rules audit table if necessary and if there were no errors */
%if (&syscc. <= 4 and (&ruleSet_type. eq ClassificationRuleSet and &create_rules_audit eq Yes) )%then %do;
   /* Store the audit details table to the Data Repository and register it in RGF */
   %irm_rgf_store_analysis_data(ds_in = &solutionId._alloc_rule_detail
                                /* Analysis Data Parameters */
                                , analysis_data_name = Classification Audit (&analysis_data_name.) - %sysfunc(date(), yymmdd10.) %sysfunc(time(), tod8.)
                                , analysis_data_desc = Audit information about the classifications that were applied on Analysis Data object &analysis_data_name. (Object Id: &analysis_data_key.).
                                , base_date = &base_dt.
                                , cycle_id = &cycle_id.
                                , entity_id = &entity_id.
                                , status_cd = Preliminary
                                , %sysfunc(ifc(&run_type = Analysis Run, analysis_run_id = &run_id., model_run_id = &run_id.))

                                /* Data Definition Parameters */
                                , data_definition_name = &dataDef_name_audit_dtl.
                                , data_definition_desc = &dataDef_desc_audit_dtl.
                                , libref = &dr_libref.
                                , engine = META
                                , meta_library_name = &dr_library_name.
                                , schema_name = &rule_audit_dtl_schema_name.
                                , schema_version = &content_version.
                                , schema_type = FLAT
                                , business_category = &business_category.
                                , data_category = AUDIT_SUMMARY
                                , risk_type = OTHER
                                , data_type = &ruleSet_type.
                                , partition_vars =
                                , filterable_vars = &filterable_vars.
                                , classification_vars =
                                , attributable_vars =
                                , mandatory_segmentation_vars =
                                , projection_vars =
                                , custom_code =
                                , constraint_enabled_flg = N

                                /* Output tables */
                                , out_exceptions = audit_dtl_data_exceptions
                                , out_analysis_data = audit_dtl_analysys_data
                                , out_partition_list = audit_dtl_partitions
                                , out_data_definition = audit_dtl_data_definition
                                , out_link_instance = audit_dtl_link_instance

                                /* Connection Parameters */
                                , host = &rgf_protocol.://&rgf_host.
                                , server = &rgf_service.
                                , solution = &rgf_solution.
                                , port = &rgf_port.
                                , tgt_ticket = &rgf_tgt_ticket.
                                , outVarTicket = ticket
                                , outSuccess = httpSuccess
                                , outResponseStatus = responseStatus
                                );
%end;