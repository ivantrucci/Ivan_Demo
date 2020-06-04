/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Finalize scenario data for downstream processing
   
   \param[in] FRS9_PRM.RUN_OPTION Parameter table containing runtime configuration values
   \param[in] ds_in_cardinality (FRS9_STG.SCENARIO_CARDINALITY) Input table specifying the total number of IRM partitions
   \param[in] ds_in_mrs_scenarios (FRS9_STG.MASTER_RISK_SCENARIOS) Input table containing the list of scenarios to retrieve
   \param[in] ds_in_rsm_scenario_data (FRS9_STG.RSM_SCENARIO_DATA) Input table containing scenario data details
   \param[out] ds_out_scenario_info (FRS9_STG.SCENARIO_INFO) Output table containing the finalized list of scenarios to be consumed by the downstream processing
   \param[out] ds_out_scenario_data (FRS9_STG.SCENARIO_DATA) Output table containing the scenario data to be consumed by the downstream processing
   
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

proc sort data = &ds_in_mrs_scenarios 
                     (rename = (key = mrsKey
                                name = mrsName
                                scenarioId = rsmScenarioId
                                scenarioName = rsmScenarioName
                                )
                      )
          out = master_risk_scenarios;
   by
      analysis_run_id
      mrsKey
      forecastTime
   ;
run;

/* Finalize the Scenario name for downstream processing */
data &ds_out_scenario_info.;
   length
      scenarioId $32.
      scenarioName $1024.
   ;
   set master_risk_scenarios;
   by
      analysis_run_id
      mrsKey
      forecastTime
   ;
   
   forecastTime = sum(forecastTime, 0);
   
   /* Construct the scenario id (<MRSName>_<MRSKey>_FT<#>). This will be used as SCENARIO_NAME for the model execution */
   scenarioId = catx("_", mrsShortName, mrsKey, cats("FT", forecastTime));

   if first.forecastTime and last.forecastTime then
      /* There is only one RSM scenario for this forecastTime. */
      scenarioName = mrsName;
   else
      /* There are multiple RSM scenarios for this forecastTime: they will be collapsed into a single scenario for the downstream analysis */
      scenarioName = catx(" - ", mrsName, cats("FT", forecastTime));
run;

data tmp_scenario_data;
   length
      scenarioId $32.
      scenarioName $1024.
   ;
   set &ds_in_rsm_scenario_data(rename = (master_risk_scenario_key = mrsKey
                                          master_risk_scenario_name = mrsName
                                          scenario_id = rsmScenarioId
                                          scenario_name = rsmScenarioName
                                          )
                                );
   if _N_ = 1 then do;
      declare hash hScenInfo(dataset: "&ds_out_scenario_info.", multidata: "yes");
      hScenInfo.defineKey("analysis_run_id", "mrsKey", "rsmScenarioId");
      hScenInfo.defineData("scenarioId", "scenarioName");
      hScenInfo.defineDone();
   end;

   /* Lookup all scenarioNames associated with this RSM scenario */
   call missing(scenarioId, scenarioName);
   do while(hScenInfo.do_over() eq 0);
      /* Historical scenario values are unique across all scenarios */
      if(date <= base_dt) then
         call missing(scenarioId, scenarioName);
      output;
   end;
run;

/* Sort and remove duplicate values for historical scenario data */
proc sort data = tmp_scenario_data
          out = tmp_scenario_data_srt nodupkey;
   by
      analysis_run_id
      scenarioId
      scenarioName
      date
      horizon
      variable_name
   ;
run;

/* Transpose */
proc transpose data = tmp_scenario_data_srt
               out = &ds_out_scenario_data. (drop = _name_);
   by
      analysis_run_id
      scenarioId
      scenarioName
      date
      horizon
   ;
   id variable_name;
   var change_value;
run;


/* Make sure the scenarios are unique (duplicates would appear if multiple RSM scenarios are collapsed by the same forecast time value) */
proc sort data = &ds_out_scenario_info. (drop = rsmScenarioId rsmScenarioName) nodupkey;
   by
      analysis_run_id
      scenarioId
   ;
run;

proc sort data = &ds_out_scenario_data. nodupkey;
   by
      analysis_run_id
      scenarioId
      date
      horizon
   ;
run;


/* Cleanup session */
%irm_session_cleanup;