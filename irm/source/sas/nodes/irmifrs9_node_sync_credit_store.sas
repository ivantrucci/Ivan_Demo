/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Synchronize data objects for downstream execution
      
   \details
   
   This node ensure that all required tasks have been completed before the execution can proceed to the downstream processing (RGF data registration)
   
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

data &ds_out_datastore_config.;
   set &ds_in_datastore_config. (where = (datastore_group_id = "Credit Risk"));
      %if(%symexist(OUT_ANALYSIS_DATA_NAME)) %then %do;
         analysis_data_name = cats("&OUT_ANALYSIS_DATA_NAME", ' - &current_dt_ymd. &current_tm_tod.');
      %end;
      %if(%symexist(OUT_ANALYSIS_DATA_DESC)) %then %do;
         analysis_data_desc = cats("&OUT_ANALYSIS_DATA_DESC", 'for the base date <MONTH, 0, SAME, yymmddd10.>.\nCreated by user &IRM_USER_ID. on %sysfunc(datetime(), nldatmw200.)');
      %end;
run;

/* Cleanup session */
%irm_session_cleanup;