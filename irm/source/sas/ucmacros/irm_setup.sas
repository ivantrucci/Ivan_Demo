/*
 Copyright (C) 2015 SAS Institute Inc. Cary, NC, USA
*/

/**
   \file

   \brief   This macro initializes the IRM environment

   \ingroup development

   \param [in] env_path Path to the root folder of the data environment - this would be the folder that contains the landing_area
   \param [in] source_path Path to the root folder of the Federated Content Area (root folder, excluding the Federated Content folder)
   \param [in] fa_id Name of the Federated Content folder
   \param [in] config_set_id Configuration Set Id. Determines which configuration tables the libraries will point to.
   \param [in] base_dt Base Date (format: DDMMMYYY) - mutual exclusive use with base_dttm
   \param [in] base_dttm Base Datetime (format: DDMMMYYYY:HH:MM:SS) - mutual exclusive use with base_dt
   \param [in] setupLUA determines if LUA must be set up (Y) or not (N) - Default is Y
   \param [in] live_ETL determines whether to use the input_area introduced in IRM 3.4 (N = legacy behaviour thus data loaded directly in landing area)
   \param [in] (Optional) landing_area_folder  Folder in the landing_area/input_area where the data resides. This would typically be a scenario name. Leave empty when not relevant.

   \details This macro declares the following SAS libraries:
   -  FW_IN    -> Stores all historical input data
   -  FW_GBL   -> Global parameter tables
   -  LA_STAT  -> Configuration tables
   -  LA_MAP   -> Mapping tables
   -  LA_STAGE -> Staging tables (in landing area - subset of the input data for a given base date)
   -  IA_STAGE -> Staging tables (in input area - subset of the input data for a given base date - only when live_ETL = Y)

   \author  SAS Institute Inc.
   \date    2015
*/


%macro irm_setup(env_path =
                 , source_path =
                 , fa_id =
                 , config_set_id =
                 , base_dt =
                 , base_dttm =
                 , setupLUA = Y
                 , live_ETL = Y
                 , landing_area_folder =
                 , rmc_fa_id = rmc.*
                 , rmc_fa_path = 
                 );
   %local
      libpath
      existing_lua
      lua_insert
   ;

   /* Remove the fa_id from the source_path if it is already included (as a leaf folder) */
   %if(%sysevalf(%superq(fa_id) ne, boolean)) %then
      %let source_path = %sysfunc(prxchange(s/([\\\/]&fa_id.)?[\\\/]*$//, 1, &source_path.));

   /* If missing, set the value of env_path to the location of the federated area */
   %if (%length(&env_path.) = 0) %then
      %let env_path = &source_path./&fa_id.;

   /* Make sure the rmc_fa_id parameter has been set */
   %if %sysevalf(%superq(rmc_fa_id) =, boolean) %then
      %let rmc_fa_id = rmc.*;
            
   /* ***************************************************************************/
   /* Update sasautos and setup LUA paths                                       */
   /* ***************************************************************************/
   %if(%length(&source_path.)) %then %do;

      /* Add macros to the auto search path */
      options insert = (sasautos = ("&source_path./&fa_id./source/sas/ucmacros"));
      
      %if %sysevalf(%superq(rmc_fa_path) =, boolean) %then %do;
         %put NOTE: Input parameter RMC_FA_PATH has not been set.;
         %put NOTE: Fetching RMC federated area location from metadata searching for IRM Mid-Tier Server property: com.sas.solutions.risk.irm.fa.&rmc_fa_id.;
      %end;

      /* Set SASAUTOS for RMC */
      %irm_set_fa_sasautos(fa_id = &rmc_fa_id.
                           , fa_path = &rmc_fa_path.
                           , mode = insert
                           , insert_after = &source_path./&fa_id.
                           , limit = 1
                           , outvar_prefix = irm_setup_rmc_fa
                           );
                           
      /* Throw a warning if we haven't found any RMC federated area */
      %if(&irm_setup_rmc_fa_count. = 0) %then
         %put WARNING: Could not find any federated area with id: com.sas.solutions.risk.irm.fa.&rmc_fa_id.;

      %if %upcase(&setupLUA.) = Y %then %do;

         /* Set LUAPATH for the current FA */
         %irm_set_fa_luapath(fa_path = &source_path./&fa_id./source/lua
                             , mode = insert
                             );

         /* Add RMC to the LUAPATH */
         %irm_set_fa_luapath(fa_id = &rmc_fa_id.
                             , mode = insert
                             , insert_after = &source_path./&fa_id.
                             , limit = 1
                             );

      %end;
   %end;

   /* ***************************************************************************/
   /* Declare libraries in Read/Write mode (create folders if they don't exist) */
   /* ***************************************************************************/

   /* Input Data (full history) */
   %let libpath = &env_path./input;
   %rsk_mkdirs_and_verify(&libpath.);
   %rsk_allocate_data_mart_lib(libref = in_data, dir = &libpath., allochow = RW);

   /* Landing Area -> Global Parameters */
   %let libpath = &env_path./landing_area/base/global;
   %rsk_mkdirs_and_verify(&libpath.);
   %rsk_allocate_data_mart_lib(libref = la_gbl, dir = &libpath., allochow = RW);

   %if(%length(&config_set_id.)) %then %do;
      /* Landing Area -> Configuration */
      %let libpath = &env_path./landing_area/base/%lowcase(&config_set_id.)/static;
      %rsk_mkdirs_and_verify(&libpath.);
      %rsk_allocate_data_mart_lib(libref = la_stat, dir = &libpath., allochow = RW);

      /* Landing Area -> Mapping */
      %let libpath = &env_path./landing_area/base/%lowcase(&config_set_id.)/mapping;
      %rsk_mkdirs_and_verify(&libpath.);
      %rsk_allocate_data_mart_lib(libref = la_map, dir = &libpath., allochow = RW);
   %end;

   %if %sysevalf(%superq(base_dt)^=,boolean) %then %do;

      /* Landing Area -> Staging */
      %if %sysevalf(%superq(landing_area_folder)^=,boolean) %then %do;
         %let libpath1 = &env_path./landing_area/%sysfunc(putn("&base_dt."d, mmddyyn8.))/&landing_area_folder.;
         %let libpath2 = &env_path./landing_area/%sysfunc(putn("&base_dt."d, mmddyyn8.));
      %end;
      %else
         %let libpath1 = &env_path./landing_area/%sysfunc(putn("&base_dt."d, mmddyyn8.));
      %rsk_mkdirs_and_verify(&libpath1.);
      %rsk_allocate_data_mart_lib(libref = la_stage, dir = &libpath1., allochow = RW);
      %if %sysevalf(%superq(landing_area_folder)^=,boolean) %then
         %rsk_allocate_data_mart_lib(libref = la_stgrt, dir = &libpath2., allochow = RW);

   %end;
   %else %if %sysevalf(%superq(base_dttm)^=,boolean) %then %do;

      data _null_;
          day = put(datepart("&base_dttm."dt), mmddyyn8.);
          time = compress(put(timepart("&base_dttm."dt), time8.), ":");
          call symputx("daytime", cats(day, time));
      run;

      /* Landing Area -> Staging */
      %if %sysevalf(%superq(landing_area_folder)^=,boolean) %then %do;
         %let libpath1 = &env_path./landing_area/&daytime/&landing_area_folder.;
         %let libpath2 = &env_path./landing_area/&daytime;
      %end;
      %else
         %let libpath1 = &env_path./landing_area/&daytime;
      %rsk_mkdirs_and_verify(&libpath1.);
      %rsk_allocate_data_mart_lib(libref = la_stage, dir = &libpath1., allochow = RW);
      %if %sysevalf(%superq(landing_area_folder)^=,boolean) %then
         %rsk_allocate_data_mart_lib(libref = la_stgrt, dir = &libpath2., allochow = RW);
   %end;

   /* ******************************************************************************/
   /* Optionally, create the input_area folders */
   /* ******************************************************************************/

   %if &live_ETL eq Y %then %do;

       %if %sysevalf(%superq(base_dt)^=,boolean) %then %do;

          /* Input Area -> Staging */
          %if %sysevalf(%superq(landing_area_folder)=,boolean) %then
              %let libpath1 = &env_path./input_area/%sysfunc(putn("&base_dt."d, mmddyyn8.));
          %else %do;
             %let libpath1 = &env_path./input_area/%sysfunc(putn("&base_dt."d, mmddyyn8.))/&landing_area_folder.;
             %let libpath2 = &env_path./input_area/%sysfunc(putn("&base_dt."d, mmddyyn8.));
          %end;
          %rsk_mkdirs_and_verify(&libpath1.);
          %rsk_allocate_data_mart_lib(libref = ia_stage, dir = &libpath1., allochow = RW);
          %if %sysevalf(%superq(landing_area_folder)^=,boolean) %then
            %rsk_allocate_data_mart_lib(libref = la_stgrt, dir = &libpath2., allochow = RW);

       %end;
       %else %if %sysevalf(%superq(base_dttm)^=,boolean) %then %do;

          data _null_;
              day = put(datepart("&base_dttm."dt), mmddyyn8.);
              time = compress(put(timepart("&base_dttm."dt), time8.), ":");
              call symputx("daytime", cats(day, time));
          run;

          /* Input Area -> Staging */
          %if %sysevalf(%superq(landing_area_folder)=,boolean) %then
             %let libpath1 = &env_path./input_area/&daytime;
          %else %do;
             %let libpath1 = &env_path./input_area/&daytime/&landing_area_folder.;
             %let libpath2 = &env_path./input_area/&daytime;
          %end;
          %rsk_mkdirs_and_verify(&libpath1.);
          %rsk_allocate_data_mart_lib(libref = ia_stage, dir = &libpath1., allochow = RW);
          %if %sysevalf(%superq(landing_area_folder)^=,boolean) %then
            %rsk_allocate_data_mart_lib(libref = la_stgrt, dir = &libpath2., allochow = RW);
       %end;

   %end;



%mend;
