/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Create detail data folder structure
      
   \details
   
   This node ensures that all required detail data folders are available for the downstream steps
   
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

/* Get the list of workgroups */
%rsk_dir_list(directory = &sas_risk_workgroup_dir./groups
              , ds_out = tmp_dir_content
              , recursive = N
              , include_folders = Y
              );

/* Get distinct list of detail data folders */
proc sql;
   create table tmp_workgroups  as
   select distinct
      t1.details_root
      , t1.details_app
      , t2.file_name as WORKGROUP
   from
      &ds_in. as t1
         left join
      tmp_dir_content as t2 on
            1 = 1
   ;
quit;

data &ds_out.;
   set tmp_workgroups;
   length
      DETAIL_DATA_DIR $10000.
      str $1024.
   ;
   
   drop str;

   /* Set the detail data location */
   if(not missing(details_root) and not missing(workgroup)) then do;
      details_root = resolve(details_root);
      details_app = resolve(details_app);
      if(scan(details_root, -1, "/\") = "SASRiskandFinanceWorkbench") then do;
         /* Detail data location will be under <details_root>/work_groups/<Workgroup>/detail_data */
         detail_data_dir = catx("/", details_root, ifc(upcase(workgroup) = "PUBLIC", " ", cats("work_groups/", workgroup)), "detail_data");;
      end;
      else if(scan(details_root, -1, "/\") = "SASRiskWorkGroup") then do;
         /* Detail data location will be under <details_root>/groups/<Workgroup>/<details_app>/detail_data */
         detail_data_dir = catx("/", details_root, "groups", workgroup, details_app, "detail_data");;
      end;
      else do;
         /* Detail data location will be under <Details Root>/<Workgroup> */
         detail_data_dir = catx("/", details_root, workgroup);
      end;
      
      /* Create the detail data directory (if it does not exist) */
      str = resolve(cats('%rsk_mkdirs(', detail_data_dir,')'));
   end;
run;

/* Cleanup session */
%irm_session_cleanup;