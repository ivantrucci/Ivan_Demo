/* Federated Area Id (as specified in SMC) */
%let irm_fa_id = %sysget(irm_fa_id);
/* Configuration set */
%let config_set_id = %sysget(config_set_id);
/* MIP workgroup */
%let mipWorkgroup = %sysget(mipWorkgroup);
/* Reportmart Folder Name */
%let martFolderName = %sysget(martFolderName);
/* Install sample data? */
%let installSampleflg = %sysget(installSampleflg);

/* Username and password used to import MIP modeling systems */
%let sasUser = %sysget(sasUser);
%let sasPassword = %sysget(sasPassword);

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

/* Create Reportmart folder */
%rsk_mkdirs_and_verify(&irm_appdata_path./Reportmart/&martFolderName.);


/* ************************************************* */
/*            Create Sample Data                     */
/* ************************************************* */

%if(&installSampleflg. = Y) %then %do;
   /* Create sample data (triggering live ETL) */
   %irm_create_sample_data(source_path = &source_path.
                           , fa_id = &fa_name.
                           , config_set_id = &config_set_id.
                           , load_input_area = Y
                           , load_landing_area = Y
                           , live_ETL = N
                           );
%end;


/* ************************************************* */
/*           Register MIP Modeling Systems           */
/* ************************************************* */

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
   call symputx("mip_service", ksubstr(service, 2), "G");
run;

/* Get SAS Risk Workgroup root directory */
%let sas_risk_workgroup_dir = %sysfunc(metadata_appprop(Risk Work Group Svr Cfg, root.dir));

%macro tmp_import_all_mip_ms;
   %local
      TotMipMs
      ticket
      i
   ;

   /* Get a list of all MIP modeling systems */
   %rsk_dir_list(directory = &source_path./mip/modeling_system
                 , ds_out = TMP_DIR_CONTENT
                 );

   data _null_;
      set TMP_DIR_CONTENT;
      call symputx(cats("mip_ms_file_", _N_), FILE_PATH, "L");
      call symputx(cats("mip_ms_name_", _N_), FILE_NAME, "L");
   run;
   %let TotMipMs = %rsk_attrn(TMP_DIR_CONTENT, nobs);

   /* Loop through all MIP modeling systems */
   %do i = 1 %to &TotMipMs.;

      /* Copy Modeling System from the content package to the MIP location */
      %irm_file_append(file = &&mip_ms_file_&i..
                       , toFile = &sas_risk_workgroup_dir./groups/&mipWorkgroup./SASModelImplementationPlatform/input/import/modeling_systems/&&mip_ms_name_&i..
                       );

      %let mipMsName = %sysfunc(prxchange(s/\.mipms$//i, -1, %superq(mip_ms_name_&i.)));

      /* Import Modeling System */
      %irm_rest_import_mip_ms(host = &mip_protocol://&mip_host.
                              , port = &mip_port.
                              , server = &mip_service.
                              , username = &sasUser.
                              , password = &sasPassword.
                              , workgroup = &mipWorkgroup.
                              , msName = &mipMsName.
                              , outds = mip_import_details
                              );

   %end;
%mend;
%tmp_import_all_mip_ms;