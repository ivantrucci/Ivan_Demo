/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Initialize jobflow parameters
      
   \details
   
   This node performs the following tasks:
   - Get REST service information for interacting with SAS Risk Governance Framework (see macro \link irm_get_service_info.sas \endlink for details)
   - Prepare parameter table for downstream processing
   
   
   In addition the following macro utilities are called:
   
   | Macro name                | Description                                                                                                  | Further information                           |
   |---------------------------|--------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
   | irm_session_prepare       | Reads RUN_OPTION table and sets logging options                                                              | \link irm_session_prepare.sas \endlink        |
   | irm_session_cleanup       | Removes all non-IRM WORK datasets/views and deletes all user-created macro variables from workspace session  | \link irm_session_cleanup.sas \endlink        |

   \ingroup nodes
   \author  SAS Institute Inc.
   \date    2018
*/

/* Initialize session */
%irm_session_prepare();

/* ************************************************************* */
/* Step 1: Get Rest service infos                                */
/* ************************************************************* */
                      
/* Set metadata credentials */
%irm_set_meta_connection(IRM_GENERATED_PW_MACVAR = IRM_USER_PASSWORD_1);

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

/* Set metadata credentials */
%irm_set_meta_connection(IRM_GENERATED_PW_MACVAR = IRM_USER_PASSWORD_2);

/* Get the connection details for the RSM Server */
%irm_get_service_info(SWCName = Risk Scenario Manager
                      , DeployedComponentName = Registered SAS Application
                      , ds_out = rsm_info
                      );

/* Load connection details into macro variables */
data _null_;
   set rsm_info;
   call symputx("rsm_protocol", protocol, "G");
   call symputx("rsm_host", host, "G");
   call symputx("rsm_port", port, "G");
   call symputx("rsm_service", ksubstr(service, 2), "G");
run;

/* Set metadata credentials */
%irm_set_meta_connection(IRM_GENERATED_PW_MACVAR = IRM_USER_PASSWORD_3);

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

/* Set metadata credentials */
%irm_set_meta_connection(IRM_GENERATED_PW_MACVAR = IRM_USER_PASSWORD_4);

/* Get SAS Risk Workgroup root directory */
%let sas_risk_workgroup_dir = %sysfunc(metadata_appprop(Risk Work Group Svr Cfg, root.dir));


/* ****************************************************************** */
/*  Step 2: Retrieve Cycle information                                */
/* ****************************************************************** */

%let ticket =;
%let httpSuccess = 0;
%let responseStatus =;
%irm_rest_get_rgf_cycle(host = &rgf_protocol.://&rgf_host.
                        , server = &rgf_service.
                        , solution = &rgf_solution.
                        , port = &rgf_port.
                        , tgt_ticket = &tgt_ticket.
                        , username = &irm_user_id.
                        , password = &irm_user_password_5.
                        , key = &cycle_id.
                        , outds = cycle_info
                        , outVarTicket = ticket
                        , outSuccess = httpSuccess
                        , outResponseStatus = responseStatus
                        );

                        
/* ****************************************************************** */
/*  Step 2: Retrieve Analysis Run information                         */
/* ****************************************************************** */

%let httpSuccess = 0;
%let responseStatus =;                        
%irm_rest_get_rgf_analysis_run(host = &rgf_protocol.://&rgf_host.
                               , server = &rgf_service.
                               , solution = &rgf_solution.
                               , port = &rgf_port.
                               , tgt_ticket = &tgt_ticket.
                               , username = &irm_user_id.
                               , password = &irm_user_password_6.
                               , key = &analysis_run_id.
                               , outds = analysis_run
                               , outds_params = analysis_run_params
                               , fout_code =
                               , outVarTicket = ticket
                               , outSuccess = httpSuccess
                               , outResponseStatus = responseStatus                                     
                               );

/* Get the Analysis Run attributes (name and production flag) */
data _null_;
   set analysis_run;
   call symputx("analysis_run_name", name, "G");
   call symputx("analysis_run_type", ifc(prodRunFlg = "true", "Production", "What-If"), "G");
run;
                              
/* Set metadata credentials */
%irm_set_meta_connection(IRM_GENERATED_PW_MACVAR = IRM_USER_PASSWORD_7);

%let fa_id =;
%let content_version =;
data _null_;
   length
      str $1000.
      version_fpath $4000.
      content_version $100.
   ;

   set cycle_info;
   
   /* Get the path to the requested IRM federated area */
   fa_path = metadata_appprop("IRM Mid-Tier Server",cats("com.sas.solutions.risk.irm.fa.", versionNm));
   version_fpath = catx("/../", fa_path, "version.txt");
   /* Set the filename to the version.txt file (one directory level up from the IRM fa location) */
   rc = filename("fref", version_fpath);
   if rc = 0 then do;
      /* Open the version.txt file */
      fid = fopen("fref");
      if fid > 0 then do;
         rc = fsep(fid, '#');
         found = 0;
         rc_fread = 0;
         /* Loop through all records */
         do while(found = 0 and rc_fread = 0);
            /* Read a record to the file data buffer */
            rc_fread = fread(fid);
            if(rc_fread = 0) then do;
               /* Copy the content of the file data buffer to the STR variable */
               rc = fget(fid, str);
               /* Check if this record starts with "Version:" or "Version=" */
               if prxmatch("/^Version:/i", str) then do;
                  found = 1;
                  /* Get the content version */
                  content_version = prxchange("s/^Version:\s*//i", -1, str);
               end;
                  else if prxmatch("/^Version=/i", str) then do;
                  found = 1;
                  /* Get the content version */
                  content_version = prxchange("s/^Version=\s*//i", -1, str);
               end;
            end; /* if(rc_fread = 0) */
         end; /* Loop through all records */
      end; /* if fid > 0 */
      else do;
         put "WARNING: Could not open file " version_fpath;
      end;
   end; /* if rc = 0 */
   else do;
      put "WARNING: Could not assign a filename to " version_fpath;
   end;
   
   /* Set macro variables */
   call symputx("fa_id", versionNm, "G");
   call symputx("fa_path", fa_path, "G");
   call symputx("content_version", content_version, "G");
   call symputx("cycle_name", name, "G");
run;

/* Process the libnames.txt to retrieve the list of input/generic librefs */
data _null_;
   infile "&fa_path./config/libnames.txt" lrecl = 32000 end = last;
   length irm_input_libraries $10000.;
   retain irm_input_libraries;
   retain rx;
   
   input;
   
   /* Compile regular expression to extract the libref */
   if _N_ = 1 then
      rx = prxparse("s/(LIBREF\s+)?(\w+)=.*/$2/i");
   
   if(prxmatch(rx, _infile_)) then
      irm_input_libraries = catx(" ", irm_input_libraries, prxchange(rx, -1, _infile_));
   
   if last then
      call symputx("irm_input_libraries", irm_input_libraries, "G");;
run;

/* ****************************************************************** */
/*  Step 3: Prepare Parameter table for downstream processing         */
/* ****************************************************************** */

data &ds_out_run_option.;
   set
      &ds_in_run_option.
      &ds_in_system_option. end = last
   ;
   output;
   if last then do;
      config_name = "RGF_PROTOCOL";             config_value = "&rgf_protocol.";             config_value_desc = "SAS Risk Governamce Framework connection protocol";      output;
      config_name = "RGF_HOST";                 config_value = "&rgf_host.";                 config_value_desc = "SAS Risk Governamce Framework connection host";          output;
      config_name = "RGF_PORT";                 config_value = "&rgf_port.";                 config_value_desc = "SAS Risk Governamce Framework connection port";          output;
      config_name = "RGF_SERVICE";              config_value = "&rgf_service.";              config_value_desc = "SAS Risk Governamce Framework connection service";       output;
      config_name = "RSM_PROTOCOL";             config_value = "&rsm_protocol.";             config_value_desc = "SAS Risk Scenario Manager connection protocol";          output;
      config_name = "RSM_HOST";                 config_value = "&rsm_host.";                 config_value_desc = "SAS Risk Scenario Manager connection host";              output;
      config_name = "RSM_PORT";                 config_value = "&rsm_port.";                 config_value_desc = "SAS Risk Scenario Manager connection port";              output;
      config_name = "RSM_SERVICE";              config_value = "&rsm_service.";              config_value_desc = "SAS Risk Scenario Manager connection service";           output;
      config_name = "MIP_PROTOCOL";             config_value = "&mip_protocol.";             config_value_desc = "SAS Model Implementation Platform connection protocol";  output;
      config_name = "MIP_HOST";                 config_value = "&mip_host.";                 config_value_desc = "SAS Model Implementation Platform connection host";      output;
      config_name = "MIP_PORT";                 config_value = "&mip_port.";                 config_value_desc = "SAS Model Implementation Platform connection port";      output;
      config_name = "MIP_SERVICE";              config_value = "&mip_service.";              config_value_desc = "SAS Model Implementation Platform connection service";   output;
      config_name = "SAS_RISK_WORKGROUP_DIR";   config_value = "&sas_risk_workgroup_dir.";   config_value_desc = "SAS Risk Workgroup root directory";                      output;
      config_name = "FA_ID";                    config_value = "&fa_id.";                    config_value_desc = "Federated Area Id";                                      output;
      config_name = "FA_PATH";                  config_value = "&fa_path.";                  config_value_desc = "Federated Area Path";                                    output;
      config_name = "CONTENT_VERSION";          config_value = "&content_version.";          config_value_desc = "Content Version";                                        output;
      config_name = "CYCLE_NAME";               config_value = "&cycle_name.";               config_value_desc = "Cycle Name";                                             output;
      config_name = "ANALYSIS_RUN_NAME";        config_value = "&analysis_run_name.";        config_value_desc = "Analysis Run Name";                                      output;
      config_name = "ANALYSIS_RUN_TYPE";        config_value = "&analysis_run_type.";        config_value_desc = "Analysis Run Type: Production/What-If";                  output;
      config_name = "IRM_INPUT_LIBRARIES";      config_value = "&irm_input_libraries.";      config_value_desc = "List of IRM input/generic libraries";                    output;
   end;
run;

/* Cleanup session */
%irm_session_cleanup;