/*
   Copyright (C) 2019 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Generate Excel reports
   
   \param [in] FRS9_STG.RUN_OPTION Specifies runtime parameters for the execution. See \link run_option.sas \endlink for details.
   \param [in] ds_in_cardinality Controls the level of parallelization for IRM data partitioning
   \param [in] ds_in_rpt_config Lists the reports to be generated. See \link report_config.sas \enlink for details.
   \param [in] ds_in_rpt_parameters Contains report-specific parameters that control the generation process. See \link report_parameters.sas \enlink for details.
   \param [in] ds_in_rpt_sources Contains the list of all data sources that were extracted from the data repository.
   \param [out] ds_out Output dataset containing the list of reports generated
   
   \details   
   In addition the following macro utilities are called:
   
   | Macro name                | Description                                                                                                  | Further information                           |
   |---------------------------|--------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
   | irm_session_prepare       | Reads RUN_OPTION table and sets logging options                                                              | \link irm_session_prepare.sas \endlink        |
   | irm_session_cleanup       | Removes all non-IRM WORK datasets/views and deletes all user-created macro variables from workspace session  | \link irm_session_cleanup.sas \endlink        |

   \ingroup nodes
   \author  SAS Institute Inc.
   \date    2019
*/

/* Initialize session */
%irm_session_prepare();

/* Run the programs associated to the current IRM task partition */
%irmc_task_runner(ds_in_cardinality = &ds_in_cardinality.
                  , ds_in_execution_config = &ds_in_rpt_config.
                  , ds_in_rpt_parameters = &ds_in_rpt_parameters.
                  , ds_in_rpt_sources = &ds_in_rpt_sources.
                  , partition_no = &rank.
                  , irm_fa_path = &fa_path.
                  , report_flg = Y
                  , report_tpl_lib = &rpt_libref.
                  , ds_out = &ds_out.
                  , host = &rgf_protocol.://&rgf_host.
                  , server = &rgf_service.
                  , solution = &rgf_solution.
                  , port = &rgf_port.
                  , tgt_ticket = &tgt_ticket.
                  , object_key = &analysis_run_id.
                  , object_type = analysisRuns
                  , group_no = 30
                  );

/* Cleanup session */
%irm_session_cleanup;
