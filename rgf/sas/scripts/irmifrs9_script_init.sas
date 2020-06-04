/* ********************************************* */
/*        Init Script: Input Parameters          */
/* ********************************************* */

/* RGF Connection parameters */
%let rgf_protocol = ${globals.protocol};
%let rgf_host = ${globals.host};
%let rgf_port = ${globals.port};
%let rgf_service = ${globals.service};
%let rgf_solution = ${globals.contentId};
%let rmc_fa_id = ${globals.rmcFaId};

/* Get the root location of the SAS Risk Workgroup Application */
%let sas_risk_workgroup_dir = ${globals.sas_risk_workgroup_dir};

/* TGT Authentication Ticket */
%let rgf_tgt_ticket = ${globals.ticket};

/* Cycle Id */
%let cycle_id = ${context.cycle.key};

/* Cycle Name */
%let cycle_name = %nrbquote(${context.cycle.name});

/* Analysis Run Id */
%let analysis_run_id = ${context.analysisRun.key};

/* Entity Id */
%let entity_id = ${context.cycle.entityId};

/* Federated Area Id */
%let irm_fa_id = ${context.cycle.versionNm};

/* Base Date (format: YYYY-MM-DDZ) */
%let base_dt = ${context.cycle.baseDt};

/* Log Level: 1-4 */
%let log_level = ${params.LOGLEVEL};

/* ********************************************* */


/* ********************************************* */
/* Content specific parameters                   */
/* ********************************************* */
%let solutionId = IFRS9;
%let solutionShortName = IFRS9;
%let solutionName = SAS Solution for IFRS9;
%let solutionLibrefPrefix = FRS9;
/* ********************************************* */


/* Get the location to the IRM Federated Area */
%let irm_fa_path = %sysfunc(metadata_appprop(IRM Mid-Tier Server, com.sas.solutions.risk.irm.fa.&irm_fa_id.));
%let rmc_fa_path = %sysfunc(metadata_appprop(IRM Mid-Tier Server, com.sas.solutions.risk.irm.fa.&rmc_fa_id.));

/* Set SASAUTOS */
option insert = (
   SASAUTOS = (
      "&irm_fa_path./source/sas/ucmacros"
      "&rmc_fa_path./source/sas/ucmacros"
      )
   );

/* Set logging options (based on the value of LOG_LEVEL macro variable) */
%irm_set_logging_options();

/* Convert Base date to IRM expected format (MMDDYYYY) */
%let irm_base_dt = %sysfunc(inputn(&base_dt., yymmdd10.), mmddyyn8.);

/* Set the Cycle directory: the file init.sas will be created in this directory */
%let cycle_dir = &sas_risk_workgroup_dir./groups/Public/SASRiskManagementCore/cycles/&cycle_id.;

/* Create Cycle directory */
%rsk_mkdirs_and_verify(&cycle_dir.);

/* Data Repository Libref */
%let dr_libref = %upcase(&solutionId.)DR;
/* Data Repository Metadata Library Name */
%let dr_library_name = SAS &solutionShortName. Data Repository;
/* Assign Data Repository Library */
libname &dr_libref. meta liburi = "SASLibrary?@Name='&dr_library_name.'" metaout = data;

/* Reportmart Libref */
%let mart_libref = %upcase(&solutionLibrefPrefix.)MART;
/* Reportmart Metadata Library Name */
%let mart_library_name = SAS &solutionShortName. Reportmart;

/* SAS Risk Management Core Libref */
%let rmc_libref = RGFRMC;
/* SAS Risk Management Core Metadata Library Name */
%let rmc_library_name = SAS Risk Management Core Database;

/* Initialize the Cycle control table */
%irmc_update_ctrl_table(cycle_id = &cycle_id., dr_libref = &dr_libref.);

/* Get current LUAPATH */
%let existing_lua = %sysfunc(prxchange(s/[()]//, -1, %sysget(SASLUA)));
/* Set LUAPATH */
filename LUAPATH ("&irm_fa_path./source/lua" "&rmc_fa_path./source/lua" &existing_lua.);

/* Get the connection details for the IRM Server */
%irm_get_service_info(SWCName = IRM Mid-Tier Server
                      , DeployedComponentName = Registered SAS Application
                      , ds_out = irm_info
                      );

/* Load connection details into macro variables */
data _null_;
   set irm_info;
   call symputx("irm_protocol", protocol, "G");
   call symputx("irm_host", host, "G");
   call symputx("irm_port", port, "G");
run;

/* Get the connection details for the VA Server */
%irm_get_service_info(SWCName = Visual Analytics Transport Service
                      , DeployedComponentName = Registered SAS Application
                      , ds_out = va_info
                      , exact_match = N
                      );

/* Load connection details into macro variables */
data _null_;
   set va_info;
   call symputx("va_protocol", protocol, "G");
   call symputx("va_host", host, "G");
   call symputx("va_port", port, "G");
run;

/* Get the connection details for the RFW Server */
%irm_get_service_info(SWCName = Risk Financ Wkbnch Mid-Tier
                      , DeployedComponentName = Registered SAS Application
                      , ds_out = rfw_info
                      );

/* Load connection details into macro variables */
data _null_;
   set rfw_info;
   call symputx("rfw_protocol", protocol, "G");
   call symputx("rfw_host", host, "G");
   call symputx("rfw_port", port, "G");
run;

/* Get the connection details for the MIP Server */
%irm_get_service_info(SWCName = Model Imp Pltfrm Mid-Tier
                      , DeployedComponentName = Registered SAS Application
                      , ds_out = mip_info
                      );

/* Load connection details into macro variables */
data _null_;
   set mip_info;
   call symputx("mip_protocol", protocol, "G");
   call symputx("mip_host", host, "G");
   call symputx("mip_port", port, "G");
run;

/* Set the Java classpath macro variable */
%irm_get_java_classpath(path = &irm_fa_path./source/java/lib/pdfUtils.jar
                        , outvar = classpath
                        , update_flg = N
                        );

/* Get Entity info from IRM */
%irm_rest_get_entities(host = &irm_protocol.://&irm_host.
                       , port = &irm_port.
                       , tgt_ticket = &rgf_tgt_ticket.
                       , outds = entities
                       );

/* Get Entity Role Key: (SOLO -> 1, GROUP -> 2) */
%let entity_role_key =;
data _null_;
   set entities (where = (id = "&entity_id." /* and federatedAreaId = "&irm_fa_id." */ and baseDate = "&irm_base_dt."));
   call symputx("entity_role_key", role_type, "G");
run;
/* Abort if we cannot retrieve the entity role */
%if %sysevalf(%superq(entity_role_key) =, boolean) %then %do;
   %irm_terminate(msg = Could not retrieve entity role for  entity &entity_id. and baseDate &irm_base_dt.);
%end;

%let content_version =;
data _null_;
   length
      property_name $1000.
      property_value $1000.
   ;
   
   %if %quote(%substr(%sysfunc(Reverse(&irm_fa_path.)),1,1))=%quote(/) %then %do;
      infile "&irm_fa_path.../version.txt" dlm = ":=";
   %end;
   %else %do;
      infile "&irm_fa_path./../version.txt" dlm = ":=";
   %end; 

   input
      property_name $
      property_value $
   ;
   if property_name = "Version" then
      call symputx("content_version", property_value, "G");
run;

/* Resolve the META libname statement into the actual SASIOLA libname statement */
%let lasr_libname_stmt =;
%irm_get_libdebug(libname_stmt = libname rmclasr meta liburi = "SASLibrary?@Name='SAS &solutionShortName. LASR'" metaout = data
                  , outvar = lasr_libname_stmt
                  );

/* Extract the libref from the libname statement */
%let lasr_libref = %scan(%superq(lasr_libname_stmt), 2, %str( ));

/* ************************************************ */
/*    Start creation of init.sas script file        */
/* ************************************************ */
data _null_;
   file "&cycle_dir./init.sas" lrecl = 32000 termstr = nl;

   length str $10000.;
   str = cat("/*  - Cycle Name: &cycle_name.", repeat(" ", %sysfunc(max(1, 45 - %length(%superq(cycle_name))))), "*/");

   put '/****************************************************************/';
   put '/* Initialization Script                                        */';
   put "/*  - Cycle Id: &cycle_id.                                           */";
   put str;
   put "/*  - Creation Date: %sysfunc(date(), yymmddd10.) %sysfunc(time(), tod8.)                        */";
   put "/*  - Analysis Run Id: &analysis_run_id.                                    */";
   put '/****************************************************************/';
   put;
   put '/* Content Version */';
   put '%let content_version = ' "&content_version.;";
   put;
   put '/* Solution Id */';
   put '%let solutionId = ' "&solutionId.;";
   put;
   put '/* Solution library prefix */';
   put '%let solutionLibrefPrefix = ' "&solutionLibrefPrefix.;";
   put;
   put '/* Solution Short Name */';
   put '%let solutionShortName = ' "&solutionShortName.;";
   put;
   put '/* Solution Name */';
   put '%let solutionName = ' "&solutionName.;";
   put;
   put '/* Cycle directory */';
   put '%let cycle_dir = ' "&cycle_dir.;";
   put;
   put '/* Solution FA Id */';
   put '%let irm_fa_id = ' "&irm_fa_id.;";
   put;
   put '/* RMC FA Id */';
   put '%let rmc_fa_id = ' "&rmc_fa_id.;";
   put;
   put '/* Metadata Repository */';
   put '%let meta_repository = Foundation;';
   put;
   put "/* &solutionShortName. Data Repository Libref */";
   put '%let dr_libref = ' "&dr_libref.;";
   put;
   put "/* &solutionShortName. Data Repository Metadata Library Name */";
   put '%let dr_library_name = ' "&dr_library_name.;";
   put;
   put "/* &solutionShortName. Reportmart Libref */";
   put '%let mart_libref = ' "&mart_libref.;";
   put;
   put "/* &solutionShortName. Rerportmart Metadata Library Name */";
   put '%let mart_library_name = ' "&mart_library_name.;";
   put;
   put "/* &solutionShortName. LASR Libref */";
   put '%let lasr_libref = ' "&lasr_libref.;";
   put;
   put "/* &solutionShortName. LASR Metadata Library Name */";
   put '%let lasr_library_name = ' "SAS &solutionShortName. LASR;";
   put;
   put '/* Metadata folder for the LASR tables */';
   put '%let lasr_meta_folder = ' "/Products/&solutionName./Data/Visual Analytics;";
   put;
   put '/* Solution FA path */';
   put '%let irm_fa_path = ' "&irm_fa_path.;";
   put;
   put '/* RMC FA path */';
   put '%let rmc_fa_path = ' "&rmc_fa_path.;";
   put;
   put '/* Entity Id */';
   put '%let entity_id = ' "&entity_id.;";
   put;
   put '/* Entity Role Key: 1 -> SOLO, 2 -> GROUP */';
   put '%let entity_role_key = ' "&entity_role_key.;";
   put;
   put '/* Base Date (YYYY-MM-DD) */';
   put '%let base_dt = ' "&base_dt.;";
   put;
   put '/* IRM Base Date (MMDDYYYY) */';
   put '%let irm_base_dt = ' "&irm_base_dt.;";
   put;
   put '/* SAS Risk Workgroup Root directory */';
   put '%let sas_risk_workgroup_dir = ' "&sas_risk_workgroup_dir.;";
   put;
   put '/* RGF Connection parameters */';
   put '%let rgf_protocol = ' "&rgf_protocol.;";
   put '%let rgf_host = ' "&rgf_host.;";
   put '%let rgf_port = ' "&rgf_port.;";
   put '%let rgf_service = ' "&rgf_service.;";
   put '%let rgf_solution = ' "&rgf_solution.;";
   put;
   put '/* IRM Connection parameters */';
   put '%let irm_protocol = ' "&irm_protocol.;";
   put '%let irm_host = ' "&irm_host.;";
   put '%let irm_port = ' "&irm_port.;";
   put;
   put '/* MIP Connection parameters */';
   put '%let mip_protocol = ' "&mip_protocol.;";
   put '%let mip_host = ' "&mip_host.;";
   put '%let mip_port = ' "&mip_port.;";
   put;
   put '/* VA Connection parameters */';
   put '%let va_protocol = ' "&va_protocol.;";
   put '%let va_host = ' "&va_host.;";
   put '%let va_port = ' "&va_port.;";
   put;
   put '/* Set SASAUTOS and Java CLASSPATH */';
   put 'options ';
   put '   insert = (sasautos = (';
   put "                ""&irm_fa_path./source/sas/ucmacros""";
   put "                ""&rmc_fa_path./source/sas/ucmacros""";
   put '                )';
   put '            )';
   put "   set = CLASSPATH ""&classpath.""";
   put ';';
   put;
   put 'options ibufsize = 32760;';
   put;
   put '/* Set compress option */';
   put 'options compress = binary;';
   put;
   put '/* Enable direct execution of sql statement using database engine (for DB libraries) */';
   put 'options dbidirectexec;';
   put;
   put '/* Set LUAPATH */';
   put "filename LUAPATH (""&irm_fa_path./source/lua""";
   put "                  ""&rmc_fa_path./source/lua""";
   put "                  %sysfunc(prxchange(s/[""]/""/i, -1, &existing_lua.))";
   put '                  );';
   put;
   put "/* &solutionShortName. Data Repository */";
   put "libname &dr_libref. meta liburi = ""SASLibrary?@Name='&dr_library_name.'"" metaout = data;";
   put;
   put "/* &solutionShortName. Reportmart */";
   put "libname &mart_libref. meta liburi = ""SASLibrary?@Name='&mart_library_name.'"" metaout = data;";
   put;
   put "/* &solutionShortName. LASR */";
   put "%sysfunc(prxchange(s/[""]/""/i, -1, %superq(lasr_libname_stmt)))";
   put;
   put "/* SAS Risk Management Core Database */";
   put "libname &rmc_libref. meta liburi = ""SASLibrary?@Name='&rmc_library_name.'"" metaout = data;";

run;