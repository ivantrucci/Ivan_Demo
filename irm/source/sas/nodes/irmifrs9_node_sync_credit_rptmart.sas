/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Synchronize data objects for downstream execution
      
   \details
   
   This node ensure that all required tasks have been completed before the execution can proceed to the downstream processing (Load/Update the Reportmart)
   
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

/* Delete reportmart_config table (if exists). It will be created using proc sql below */
%if(%rsk_dsexist(&ds_out_reportmart_config.)) %then %do;
   proc sql;
      drop table &ds_out_reportmart_config.;
   quit;
%end;

/* Create the reportmart_config table */
proc sql;
   create table &ds_out_reportmart_config. as
   select
      t2.key as ANALYSIS_DATA_KEY
      , t1.*
   from
      &ds_in_reportmart_config. as t1
         join
      &ds_in_analysis_data. as t2 on
            lowcase(t1.schema_name) = t2.schemaName
            and resolve(t1.schema_version) = t2.schemaVersion
   where
      reportmart_group_id = "Credit Risk"
   ;
quit;

/* Cleanup session */
%irm_session_cleanup;