/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Retrieve Analysis Data
   
   \param[in] ST_PRM.RUN_OPTION parameter table 
   \param[in] %ds_in_config Macrovarload table containing the required parameters ANALYSIS_DATA_KEY and ANALYSIS_DATA_DS_NAME
   \param[out] %ds_out_sync Output synchronization table for the data view.
   \param[out] %ds_out_dataInfo Output table containing metadata information about the table that was retrieved.
   \param[out] %ds_out_partition_list Output table containing the list of partition tables that were retrieved from the data repository.
   
   \details
  
   This node makes a call to macro \link irm_rgf_retrieve_analysis_data.sas \endlink to retrieve the requested table from the data repository.
   
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

/* Extract the libref from the output table parameter */
%let out_libref = %scan(&ds_out_sync., 1, .);

%let ticket =;
%irm_rgf_retrieve_analysis_data(key = &analysis_data_key.
                                , libref = &dr_libref.
                                , dr_library_name = &dr_library_name.
                                , outds_meta = &ds_out_meta.
                                , outds = &out_libref..&analysis_data_ds_name.
                                , outds_partition_list = &ds_out_partition_list.
                                , out_type = deferred
                                , outds_dataInfo = analysis_dataInfo
                                , outds_dataDef = analysis_dataDef
                                , host = &rgf_protocol.://&rgf_host.
                                , server = &rgf_service.
                                , solution = &rgf_solution.
                                , port = &rgf_port.
                                , tgt_ticket = &tgt_ticket.
                                , username = &irm_user_id.
                                , password = &irm_user_password.
                                , outVarTicket = ticket
                                , outSuccess = httpSuccess
                                , outResponseStatus = responseStatus
                                , restartLUA = Y
                                , clearCache = Y
                                );

/* Create synchronization table for downstream processing */
data &ds_out_sync.;
   length
      table_name $100.
      data_type $20.
      status $20.
   ;
   table_name = "%upcase(&out_libref..&analysis_data_ds_name.)";
   data_type = "View";
   status = "Created";
run;

/* Create dataInfo table */
data &ds_out_dataInfo.;
   merge
      analysis_dataInfo(rename = (key = analysisDataKey name = analysisDataName))
      analysis_dataDef(rename = (key = dataDefinitionKey name = dataDefinitionName))
   ;
run;

/* Cleanup session */
%irm_session_cleanup;