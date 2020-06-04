/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Run the selected model
   
   \param[in] ST_PRM.RUN_OPTION Parameter table containing runtime configuration values
   \param[in] ST_CFG.CREDIT_STRESS_CONFIG Table containing Credit Risk Analysis configuration parameters
   \param[in] ST_STG.SCENARIO_DATA Scenario Dataset
   \param[in] ST_STG.SYNTHETIC_POSITION Synthetic positions to be added to the portfolio
   \param[in] ST_STG.SHORT_POSITION Portfolio positions to be eliminated from the portfolio
   \param[in] RQSST Enterprise Wide Data Repository library
   \param[out] ST_STG.STRESS_ECL_RWA Output table containing Stressed ECL and RWA results
   
   \details
     
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

%irmc_run_rgf_model(model_run_key = &credit_model_run_key.
                     , portfolio = &portfolio_key.
                     , counterparty = &counterparty_key.
                     , mitigant = &mitigant_key.
                     , ds_in_scen_info = &ds_in_scenario_info.
                     , ds_in_scen_data = &ds_in_scenario_data.
                     , ds_in_map_config = &ds_in_map_config.
                     , dr_libref = &dr_libref.
                     , dr_library_name = &dr_library_name.
                     , tmp_libref = &tmp_libref.
                     , mip_name_prefix = &mip_name_prefix.
                     , modelIn_dataMap_key = &modelIn_dataMap_key.
                     , sas_risk_workgroup_dir = &sas_risk_workgroup_dir.
                     , base_dt = %sysfunc(datepart(&base_dttm.))
                     , keep_cube_flg = &keep_mip_cube_flg.
                     , maxWait = &max_wait.
                     , pollInterval = &poll_interval.
                     , ds_out_model_run_info = &ds_out_model_run_info.
                     , ds_out_model_run_parms = &ds_out_model_run_parms.
                     , ds_out_model_result = &ds_out_model_result.
                     , tgt_ticket = &tgt_ticket.
                     , irm_user_id = &irm_user_id.
                     , irm_user_password = &irm_user_password.
                     );
                     
/* Cleanup session */
%irm_session_cleanup;