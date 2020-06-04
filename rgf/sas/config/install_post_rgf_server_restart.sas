/* Federated Area Id (as specified in SMC) */
%let irm_fa_id = %sysget(irm_fa_id);
/* Configuration set */
%let config_set_id = %sysget(config_set_id);

/* Server connection credentials */
%let metaserver = %sysget(metaserver);
%let sasAdminUser = %sysget(sasAdminUser);
%let sasAdminPassword = %sysget(sasAdminPassword);

/* Username and password used to register the Data Definition instance in RGF */
%let sasUser = %sysget(sasUser);
%let sasPassword = %sysget(sasPassword);


/* Set Credentials */
option
   metaserver = "&metaserver."
   metauser = "&sasAdminUser." 
   metapass = "&sasAdminPassword."
;

/* Data Repository Libref */
%let dr_libref = %upcase(&config_set_id.DR);

/* Get the path to the FA from metadata */
%let irm_fa_path = %sysfunc(metadata_appprop(IRM Mid-Tier Server, com.sas.solutions.risk.irm.fa.&irm_fa_id.));
%let irm_appdata_path = %sysfunc(metadata_appprop(IRM Mid-Tier Server, com.sas.solutions.risk.irm.server.appdata));

/* Extract the irm folder name and the source path */
%let fa_name = %scan(%bquote(&irm_fa_path.), -1, /\);
%let source_path = %sysfunc(prxchange(s/[\\\/]&fa_name.$//i, -1, %bquote(&irm_fa_path.)));

/* Update the macro search path */
option insert = (sasautos = ("&irm_fa_path./source/sas/ucmacros"));
option mprint;

/* Setup environment */
%irm_setup(source_path = &source_path.
           , fa_id = &fa_name.
           );

/* Retrieve the content version from the version.txt file */
%let content_version = %irm_get_content_version(irm_fa_path = &irm_fa_path.);

/* Read run_option table */
%include "&irm_fa_path./sampledata/config/%lowcase(&config_set_id.)/static/run_option.sas" / lrecl = 32000;

/* Load global parameters */
data _null_;
   set run_option;
   call symputx(config_name, config_value, "L");
run;

/* ************************************************* */
/*  Register Data Definitions                        */
/* ************************************************* */

/* Get the connection details for the RGF Server */
%irm_get_service_info(SWCName = Risk Gov Frwk Mid-Tier
                      , DeployedComponentName = Registered SAS Application
                      , ds_out = rgf_info
                      );

/* Load connection details into macro variables */
data _null_;
   set rgf_info;
   call symputx("rgf_protocol", protocol, "G");
   call symputx("rgf_host", host, "G");
   call symputx("rgf_port", port, "G");
   call symputx("rgf_service", ksubstr(service, 2), "G");
run;


/* Read datastore configuration table */
%let libref = work;
%include "&irm_fa_path./sampledata/config/%lowcase(&config_set_id.)/static/datastore_config.sas" / lrecl = 32000;

/* Create Data Definition for Credit Risk Detail reportmart table */
%let ticket =;
%irm_create_data_def_from_ddl(table_name = credit_risk_detail
                              , ddl_file = credit_risk_detail.sas
                              , ddl_folder = reportmart
                              , datastore_config = work.datastore_config
                              , irm_fa_path = &irm_fa_path.
                              , dr_libref = &dr_libref.
                              , outds = data_definition
                              , rgf_solution = &rgf_solution.
                              , username = &sasUser.
                              , password = &sasPassword.
                              , rgf_protocol = &rgf_protocol.
                              , rgf_host = &rgf_host.
                              , rgf_port = &rgf_port.
                              , rgf_service = &rgf_service.
                             );


/* Read staging and mapping tables for enrichment */
%let libref = work;
%include "&irm_fa_path./sampledata/staging/counterparty.sas" / lrecl = 32000;
%include "&irm_fa_path./sampledata/staging/portfolio_sppi_details.sas" / lrecl = 32000;
%include "&irm_fa_path./sampledata/config/%lowcase(&config_set_id.)/mapping/map_geo_hierarchy.sas" / lrecl = 32000;
%include "&irm_fa_path./sampledata/config/%lowcase(&config_set_id.)/mapping/map_product_hierarchy.sas" / lrecl = 32000;
%include "&irm_fa_path./sampledata/config/%lowcase(&config_set_id.)/mapping/map_lob_hierarchy.sas" / lrecl = 32000;
%include "&irm_fa_path./sampledata/config/%lowcase(&config_set_id.)/mapping/map_dpd_type.sas" / lrecl = 32000;
%include "&irm_fa_path./sampledata/config/%lowcase(&config_set_id.)/mapping/map_ltv_type.sas" / lrecl = 32000;

/* Create an enrichment table containing all fields to add to Portfolio */
data work.portfolio_enrichment;
   attrib
      %irm_get_attrib_def(ds_in = work.counterparty)
      %irm_get_attrib_def(ds_in = work.portfolio_sppi_details)
      %irm_get_attrib_def(ds_in = map_geo_hierarchy)
      %irm_get_attrib_def(ds_in = map_product_hierarchy)
      %irm_get_attrib_def(ds_in = map_lob_hierarchy)
      %irm_get_attrib_def(ds_in = map_dpd_type)
      %irm_get_attrib_def(ds_in = map_ltv_type)
      ORIG_CREDIT_STATE        length = 8.    label = "Credit State at origination"
      CREDIT_STATE             length = 8.    label = "Current Credit State"
   ;
   stop;
run;

/* Store a list of fields to drop from the Portfolio table */
%let ptf_drop_vars = geography_cd product_cd lob_id dpd_start dpd_end ltv_start ltv_end;

/* Create Data Definition for Portfolio table */
%let ticket =;
%irm_create_data_def_from_ddl(table_name = credit_portfolio
                              , ddl_file = credit_portfolio.sas
                              , ddl_folder = staging
                              , datastore_config = work.datastore_config
                              , enrichment_table = work.portfolio_enrichment
                              , drop_vars = &ptf_drop_vars.
                              , irm_fa_path = &irm_fa_path.
                              , dr_libref = &dr_libref.
                              , outds = data_definition_ptf
                              , rgf_solution = &rgf_solution.
                              , username = &sasUser.
                              , password = &sasPassword.
                              , rgf_protocol = &rgf_protocol.
                              , rgf_host = &rgf_host.
                              , rgf_port = &rgf_port.
                              , rgf_service = &rgf_service.
                             );


/* ************************************************* */
/*  Register Stage Allocation rules                  */
/* ************************************************* */

/* Load Stage allocation rules */
%include "&irm_fa_path./sampledata/config/%lowcase(&config_set_id.)/static/rule_set_config.sas" / lrecl = 32000;
data crd_rule_set_config;
   set rule_set_config (where = (rule_set_group_id = "CREDIT_RISK_DETAIL"));
run;
/* Create RuleSet */
%irm_rest_create_rgf_ruleset(host = &rgf_protocol://&rgf_host.
                              , server = &rgf_service.
                              , solution = &rgf_solution.
                              , port = &rgf_port.
                              , username = &sasUser.
                              , password = &sasPassword.
                              , name = Stage Allocation Rule Set - &content_version.
                              , description = Sample stage allocation rules
                              , ds_in = crd_rule_set_config
                              , ruleset_type = BusinessRuleSet
                              , ruleset_category = STAGE
                              , outds = ruleSetInfo
                              , outVarTicket = ticket
                              , outSuccess = httpSuccess
                              , outResponseStatus = responseStatus
                              , debug = false
                              , logOptions =
                              , restartLUA = Y
                              , clearCache = Y
                              );

/* Get the rule set key */
%let rule_set_key =;
data _null_;
   set ruleSetInfo(obs = 1);
   call symputx("rule_set_key", ruleSetKey, "L");
run;

/* Get the data definition key */
%let data_definition_key =;
data _null_;
   set data_definition;
   call symputx("data_definition_key", key, "L");
run;

/* Create the 360 link between the Rule Set and the Data Definition */
%irm_rest_create_rgf_link_inst(host = &rgf_protocol.://&rgf_host.
                               , server = &rgf_service.
                               , solution = &rgf_solution.
                               , port = &rgf_port.
                               , username = &sasUser.
                               , password = &sasPassword.
                               , link_type = ruleSet_dataDefinition
                               , business_object1 = &rule_set_key.
                               , business_object2 = &data_definition_key.   
                               , outds = rule_link_instance
                               , outVarTicket = ticket
                               , outSuccess = httpSuccess
                               , outResponseStatus = responseStatus
                               , restartLUA = Y
                               , clearCache = Y
                               );

/* ************************************************* */
/*  Register SPPI rules                              */
/* ************************************************* */

/* Load SPPI Test rules */
%include "&irm_fa_path./sampledata/config/%lowcase(&config_set_id.)/static/rule_set_config.sas" / lrecl = 32000;
data sppi_rule_set_config;
   set rule_set_config (where = (rule_set_group_id = "PORTFOLIO_SPPI_DETAILS"));
run;

/* Create RuleSet */
%irm_rest_create_rgf_ruleset(host = &rgf_protocol://&rgf_host.
                              , server = &rgf_service.
                              , solution = &rgf_solution.
                              , port = &rgf_port.
                              , username = &sasUser.
                              , password = &sasPassword.
                              , name = SPPI Test Set - &content_version.
                              , description = Sample SPPI Test rules
                              , ds_in = sppi_rule_set_config
                              , ruleset_type = BusinessRuleSet
                              , ruleset_category = SPPI
                              , outds = ruleSetInfoSPPI
                              , outVarTicket = ticket
                              , outSuccess = httpSuccess
                              , outResponseStatus = responseStatus
                              , debug = false
                              , logOptions =
                              , restartLUA = Y
                              , clearCache = Y
                              );

/* Get the rule set key */
%let rule_set_sppi_key =;
data _null_;
   set ruleSetInfoSPPI(obs = 1);
   call symputx("rule_set_sppi_key", ruleSetKey, "L");
run;

/* Get the data definition key */
%let data_def_ptf_key =;
data _null_;
   set data_definition_ptf;
   call symputx("data_def_ptf_key", key, "L");
run;

/* Create the 360 link between the Rule Set and the Data Definition */
%irm_rest_create_rgf_link_inst(host = &rgf_protocol.://&rgf_host.
                               , server = &rgf_service.
                               , solution = &rgf_solution.
                               , port = &rgf_port.
                               , username = &sasUser.
                               , password = &sasPassword.
                               , link_type = ruleSet_dataDefinition
                               , business_object1 = &rule_set_sppi_key.
                               , business_object2 = &data_def_ptf_key.   
                               , outds = rule_sppi_link_instance
                               , outVarTicket = ticket
                               , outSuccess = httpSuccess
                               , outResponseStatus = responseStatus
                               , restartLUA = Y
                               , clearCache = Y
                               );

/* ************************************************* */
/*  Register Data Quality (DQ) rules                  */
/* ************************************************* */

/* Load DQ rules */
%include "&irm_fa_path./sampledata/config/%lowcase(&config_set_id.)/static/rule_set_config.sas" / lrecl = 32000;
data dq_rule_set_config;
   set rule_set_config (where = (rule_set_group_id = "CREDIT_PORTFOLIO"));
run;
/* Create RuleSet */
%irm_rest_create_rgf_ruleset(host = &rgf_protocol://&rgf_host.
                              , server = &rgf_service.
                              , solution = &rgf_solution.
                              , port = &rgf_port.
                              , username = &sasUser.
                              , password = &sasPassword.
                              , name = DQ Rule Set - &content_version.
                              , description = Sample Data Quality rules
                              , ds_in = dq_rule_set_config
                              , ruleset_type = BusinessRuleSet
                              , ruleset_category = DQ
                              , outds = ruleSetInfoDQ
                              , outVarTicket = ticket
                              , outSuccess = httpSuccess
                              , outResponseStatus = responseStatus
                              , debug = false
                              , logOptions =
                              , restartLUA = Y
                              , clearCache = Y
                              );

/* Get the rule set key */
%let rule_set_dq_key =;
data _null_;
   set ruleSetInfoDQ(obs = 1);
   call symputx("rule_set_dq_key", ruleSetKey, "L");
run;

/* Get the data definition key */
%let data_def_ptf_key =;
data _null_;
   set data_definition_ptf;
   call symputx("data_def_ptf_key", key, "L");
run;

/* Create the 360 link between the Rule Set and the Data Definition */
%irm_rest_create_rgf_link_inst(host = &rgf_protocol.://&rgf_host.
                               , server = &rgf_service.
                               , solution = &rgf_solution.
                               , port = &rgf_port.
                               , username = &sasUser.
                               , password = &sasPassword.
                               , link_type = ruleSet_dataDefinition
                               , business_object1 = &rule_set_dq_key.
                               , business_object2 = &data_def_ptf_key.   
                               , outds = rule_dq_link_instance
                               , outVarTicket = ticket
                               , outSuccess = httpSuccess
                               , outResponseStatus = responseStatus
                               , restartLUA = Y
                               , clearCache = Y
                               );


/* ************************************************* */
/*  Load VA report configuration table               */
/* ************************************************* */

/* Set Reportmart library */
%let libref = MART_DP;
libname &libref. meta liburi = "SASLibrary?@Name = '&mart_library_name.'" metaout = data;

/* Create VA report configuration data structure */
proc sql;
%include "&irm_fa_path./source/sas/misc/ddl/static/va_report_config.sas" / lrecl = 32000;
quit;
proc datasets library = &libref. nolist nodetails nowarn;
   delete ifrs9_va_report_config;
   change va_report_config = ifrs9_va_report_config;
quit;
/* Load configuration data */
%include "&irm_fa_path./sampledata/config/%lowcase(&config_set_id.)/static/va_report_config.sas" / lrecl = 32000;
proc append
   base = &libref..ifrs9_va_report_config
   data = va_report_config;
run;   

/* Load to LASR */
%irm_upload_to_lasr(ds_in = &libref..ifrs9_va_report_config
                    , lasr_library_name = &lasr_library_name.
                    , target_table_nm = ifrs9_va_report_config
                    , meta_repository = Foundation
                    , meta_folder = &lasr_meta_folder.
                    , mode = replace
                    , squeeze = yes
                    );