/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Retrieve Scenario Data
   
   \param[in] ST_PRM.RUN_OPTION Parameter table containing runtime configuration values
   \param[in] %ds_in_cardinality = ST_STG.MRS_CARDINALITY Input table specifying the total number of IRM partitions
   \param[in] %ds_in = ST_STG.MASTER_RISK_SCENARIOS Input table containing the list of scenarios to retrieve
   \param[out] %ds_out = ST_PART.RSM_SCENARIO_DATA Output partition table containing scenario data
   
   \details
  
   This node makes a call to macro \link irmc_get_mrs_data.sas \endlink to retrieve the scenario data from SAS Risk Scenario Manager. <br>
   The following parameters are expected inside table ST_PRM.RUN_OPTION (these parameters are set by \link irmc_node_init.sas \endlink based on metadata configuration):
      - rsm_protocol: http(s) Protocol where SAS Risk Scenario Manager web application is running
      - rsm_host: hostname where SAS Risk Scenario Manager web application is running
      - rsm_port: port where SAS Risk Scenario Manager web application is listening
      - rsm_service: End-point application (i.e. /SASRiskScenarioManager)
   
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

/* Get Scenarios for the current irm partition */
%irmc_get_mrs_data(ds_in_mrs_config = &ds_in.
                    , ds_in_cardinality = &ds_in_cardinality.
                    , partition_no = &rank.
                    , ds_out = &ds_out.
                    , tgt_ticket = &tgt_ticket.
                    , irm_user_id = &irm_user_id.
                    , irm_user_password = &irm_user_password.
                    );

/* Cleanup session */
%irm_session_cleanup;