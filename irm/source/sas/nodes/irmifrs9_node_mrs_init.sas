/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Retrieve Master Risk Scenarios
   
   \param[in] ST_PRM.RUN_OPTION parameter table 
   \param[out] ST_STG.MASTER_RISK_SCENARIOS Output table containing details of the Master Risk Scenarios (and related scenarios) associated with this Analysis Run
   
   \details
  
   This node makes a call to macro \link irm_rest_get_rgf_mrs.sas \endlink to retrieve the list of Master Risk Scenarios (and related scenarios) that are linked to the current analysis run.
   
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

%let ticket =;
%irm_rest_get_rgf_mrs(host = &rgf_protocol.://&rgf_host.
                      , server = &rgf_service.
                      , solution = &rgf_solution.
                      , port = &rgf_port.
                      , tgt_ticket = &tgt_ticket.
                      , filter = filter=hasObjectLinkTo('%upcase(&rgf_solution.)','analysisRun_masterRisk', %sysfunc(coalescec(&attrib_curr_analysis_run_id., &analysis_run_id.)),0)
                      , details_flg = Y
                      , outds = curr_mrs_list
                      , outVarTicket = ticket
                      , outSuccess = httpSuccess
                      , outResponseStatus = responseStatus
                      , restartLUA = Y
                      , clearCache = Y
                      );

data &ds_out_mrs.;
   length analysis_run_id 8.;
   set curr_mrs_list;
   analysis_run_id = %sysfunc(coalescec(&attrib_curr_analysis_run_id., &analysis_run_id.));
run;


/* Retrieve MRS scenarios linked to the previous-period analysis run (in case of Attribution Analysis) */
%if %sysevalf(%superq(attrib_prev_analysis_run_id) ne, boolean) %then %do;
   %irm_rest_get_rgf_mrs(host = &rgf_protocol.://&rgf_host.
                         , server = &rgf_service.
                         , solution = &rgf_solution.
                         , port = &rgf_port.
                         , tgt_ticket = &tgt_ticket.
                         , filter = filter=hasObjectLinkTo('%upcase(&rgf_solution.)','analysisRun_masterRisk',&attrib_prev_analysis_run_id.,0)
                         , details_flg = Y
                         , outds = prev_mrs_list
                         , outVarTicket = ticket
                         , outSuccess = httpSuccess
                         , outResponseStatus = responseStatus
                         , restartLUA = Y
                         , clearCache = N
                         );
                         
   data prev_mrs_list;
      length analysis_run_id 8.;
      set prev_mrs_list;
      analysis_run_id = &attrib_prev_analysis_run_id.;
   run;
   
   /* Append list of scenarios to ouptut */
   proc append data = prev_mrs_list
               base = &ds_out_mrs.
               force;
   run;
%end;

/* Initialize Scenario Manager Rest service for downstream processing */
%let rsmTicket =;
%irm_rest_request(url = &rsm_protocol.://&rsm_host.:&rsm_port/&rsm_service./rest
                  , method = GET
                  , server = &rsm_service.
                  , tgt_ticket = &tgt_ticket.
                  , parser = restLinks
                  , outds = tmp_rsm_rest_links
                  , outVarTicket = rsmTicket
                  , outSuccess = rsmHttpSuccess
                  , outResponseStatus = rsmResponseStatus
                  , restartLUA = Y
                  , clearCache = Y
                  );
                  
/* Cleanup session */
%irm_session_cleanup;