/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Retrieve Analysis Data for the report generation
   
   \param[in] RUN_OPTION Global parameter table for the jobflow execution
   \param[in] REPORT_OPTION Global parameter table for the report generation
   \param[in] %ds_in_rpt_config Input report configuration table. Contains the list of all available reports
   \param[in] %ds_in_data_source_config Input configuration table. Contains the list of analysis data objects to retrieve from the data repository
   \param[out] %ds_out_rpt_config Output report configuration table. Subset of the input report configuration table: contains the list of reports to be generated
   \param[out] %ds_out_rpt_analysis_data Output table containing metadata information about all analysis data objects that were retrieved from the data repository.
   
   \details
  
   This node makes a call to macro \link irm_rgf_retrieve_analysis_data.sas \endlink to retrieve the requested tables from the data repository.
   
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

/* Subset the REPORT_CONFIG table, processing only the selected reports */
data &ds_out_rpt_config.;
   set &ds_in_rpt_config. 
      %if %sysevalf(%superq(report_id_list) ne, boolean) %then %do;
         (where = (report_id in (%sysfunc(prxchange(s/(\w+)/"$1"/i, -1, &report_id_list.)))))
      %end;
   ;
run;

/* Retrieve all analysis data */
%irm_rgf_retrieve_data(dr_libref = &dr_libref.
                       , dr_library_name = &dr_library_name.
                       , ds_in = &ds_in_data_source_config.
                       , ds_out = &ds_out_rpt_analysis_data.
                       , out_type = deferred
                       , rgf_protocol = &rgf_protocol.
                       , rgf_host = &rgf_host.
                       , rgf_service = &rgf_service.
                       , rgf_solution = &rgf_solution.
                       , rgf_port = &rgf_port.
                       , tgt_ticket = &tgt_ticket.
                       );

/* Cleanup session */
%irm_session_cleanup;
