data WORK.credit_risk_config;
   attrib                                                                                                                                       
      CONFIG_NAME                      length = $40.
      CONFIG_VALUE                     length = $256.
      CONFIG_VALUE_DESC                length = $150.
   ;
   infile cards dsd delimiter = ',';
   input 
      CONFIG_NAME                      :$char.
      CONFIG_VALUE                     :$char.
      CONFIG_VALUE_DESC                :$char.
   ;
      
datalines4;
CREDIT_MODEL_RUN_KEY,,Credit Model Run Key
PORTFOLIO_KEY,,Portfolio Table Key
OUT_ANALYSIS_DATA_NAME,,Name of the output Analysis Data instance to be created
OUT_ANALYSIS_DATA_DESC,,Description of the output Analysis Data instance to be created
COUNTERPARTY_KEY,,Counterparty Table Key
MITIGANT_KEY,,Credit Risk Mitigant Table Key
IA_DATA,,Individual Adjustment Dataset or Table Key
FR_HTM_DATA,,Current Period Financing Receivables/HTM results
MODELIN_DATAMAP_KEY,,DataMap Key for mapping the variables of the portfolio table to those expected by the model
MODELOUT_DATAMAP_KEY,,DataMap Key for mapping the variables of the model result table to the reporting mart
ATTRIBUTION_ANALYSIS_KEY,,Attribution Analysis Key
CURR_RESULT_KEY,,Analysis Data key for the current period result
PREV_RESULT_KEY,,Analysis Data key for the previous period result
PREV_CREDIT_MODEL_RUN_KEY,,Previous Period Credit Model Run Key
PREV_PORTFOLIO_KEY,,Previous Period Portfolio Table Key
PREV_COUNTERPARTY_KEY,,Previous Period Counterparty Table Key
PREV_MITIGANT_KEY,,Previous Period Credit Risk Mitigant Table Key
PREV_IA_DATA,,Previous Period Individual Adjustment Dataset or Table Key
PREV_FR_HTM_DATA,,Previous Period Financing Receivables/HTM results
PREV_AFS_DATA,,Previous Period AFS results
PREV_MODELIN_DATAMAP_KEY,,DataMap Key for mapping the variables of the portfolio table to those expected by the model (previous period)
PREV_MODELOUT_DATAMAP_KEY,,DataMap Key for mapping the variables of the model result table to the reporting mart (previous period)
PREV2_FR_HTM_DATA,,Financing Receivables/HTM results for the period prior to the previous period (i.e. two periods back)
PREV2_AFS_DATA,,AFS results for the period prior to the previous period (i.e. two periods back)
SCENARIO_SELECTION,Weighted,Name of the scenario to be extracted for Individual Assessment and Attribution Analysis
ATTRIBUTION_N_PARTITIONS,AUTO,Number of partitions for parallel processing while performing attribution analysis
STAGE_ATTRIBUTION_METHOD,Stage,Controls how the ECL change is decomposed into model contribution and stage change contribution when an instrument changes stage across the two runs. Model: Model change -> Stage change, Stage: Stage change -> Model change.
MART_TABLE_NAME,CREDIT_RISK_DETAIL,Name of the Reportmart table where the results will be loaded
MART_MOVEMENT_TYPE_CD,CR_MODEL,Value for the Movement Type Code to be used for tagging the model results
MIP_NAME_PREFIX,FRS9,Prefix used to set the name of the MIP artifacts (run instances and pre/post execution programs)
KEEP_MIP_CUBE_FLG,N,Flag (Y/N). Controls whether to keep the MIP cubes that were created during the credit risk analysis.
;;;;
run;