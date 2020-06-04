data WORK.datastore_config;
   attrib                                                                                                                                       
      DATASTORE_GROUP_ID            length = $32.
      LIBREF                        length = $20.
      TABLE_NAME                    length = $100.
      ANALYSIS_DATA_NAME            length = $150.
      ANALYSIS_DATA_DESC            length = $250.
      DATA_DEFINITION_NAME          length = $150.
      DATA_DEFINITION_DESC          length = $250.
      SCHEMA_NAME                   length = $100.
      SCHEMA_VERSION                length = $50.
      SCHEMA_TYPE                   length = $20.
      BUSINESS_CATEGORY             length = $100.
      DATA_CATEGORY                 length = $100.
      RESULTS_CATEGORY              length = $100.
      RISK_TYPE                     length = $100.
      DATA_TYPE                     length = $100.
      REPORTMART_GROUP_ID           length = $32.
      PARTITION_VARS                length = $4096.
      FILTERABLE_VARS               length = $10000.
      CLASSIFICATION_VARS           length = $10000.
      ATTRIBUTABLE_VARS             length = $10000.
      MANDATORY_SEGMENTATION_VARS   length = $10000.
      PROJECTION_VARS               length = $10000.
      CUSTOM_CODE                   length = $10000.
      PRIMARY_KEY                   length = $10000.
      INDEX_LIST                    length = $10000.
      BUSINESS_KEY                  length = $10000.
      DIMENSION_LIST                length = $10000.
      TYPE2_COLS                    length = $10000.
      META_LIBRARY_NAME             length = $10000.
      DETAILS_ROOT                  length = $10000.
      DETAILS_APP                   length = $1024.
      CONSTRAINT_ENABLED_FLG        length = $10.
      RULE_SET_NAME                 length = $100.
      RULE_SET_DESC                 length = $250.
      RULE_SET_GROUP_ID             length = $100.
      RULE_SET_CATEGORY             length = $100.
   ;
   infile cards dsd delimiter = ',';
   input 
      DATASTORE_GROUP_ID            :$char.
      LIBREF                        :$char.
      TABLE_NAME                    :$char.
      ANALYSIS_DATA_NAME            :$char.
      ANALYSIS_DATA_DESC            :$char.
      DATA_DEFINITION_NAME          :$char.
      DATA_DEFINITION_DESC          :$char.
      SCHEMA_NAME                   :$char.
      SCHEMA_VERSION                :$char.
      SCHEMA_TYPE                   :$char.
      BUSINESS_CATEGORY             :$char.
      DATA_CATEGORY                 :$char.
      RESULTS_CATEGORY              :$char.
      RISK_TYPE                     :$char.
      DATA_TYPE                     :$char.
      REPORTMART_GROUP_ID           :$char.
      PARTITION_VARS                :$char.
      FILTERABLE_VARS               :$char.
      CLASSIFICATION_VARS           :$char.
      ATTRIBUTABLE_VARS             :$char.
      MANDATORY_SEGMENTATION_VARS   :$char.
      PROJECTION_VARS               :$char.
      CUSTOM_CODE                   :$char.
      PRIMARY_KEY                   :$char.
      INDEX_LIST                    :$char.
      BUSINESS_KEY                  :$char.
      DIMENSION_LIST                :$char.
      TYPE2_COLS                    :$char.
      META_LIBRARY_NAME             :$char.
      DETAILS_ROOT                  :$char.
      DETAILS_APP                   :$char.
      CONSTRAINT_ENABLED_FLG        :$char.
      RULE_SET_NAME                 :$char.
      RULE_SET_DESC                 :$char.
      RULE_SET_GROUP_ID             :$char.
      RULE_SET_CATEGORY             :$char.
   ;
datalines4;
Enrichment,FRS9_STG,CREDIT_PORTFOLIO,"Portfolio <MONTH, 0, SAME, yymmddd10.>","Portfolio data for the base date <MONTH, 0, SAME, yymmddd10.>.\nCreated by user &IRM_USER_ID.. on %sysfunc(datetime(), nldatmw200.)",Portfolio Definition,Portfolio schema definition,IFRS9_CREDIT_PORTFOLIO,&content_version.,FLAT,IFRS9,PORTFOLIO,,CREDIT,,,REPORTING_DT INSTTYPE,PORTFOLIO_SEGMENT ACCOUNTING_METHOD PRODUCT_TYPE_DESC LINE_OF_BUSINESS_DESC CREDIT_QUALITY_INDICATOR DPD_CLASS SECTOR_DESC COUNTERPARTYTYPE LOAN_STATUS_DESC INTEREST_RATE_TYPE POCI_FLG TDR_FLG FORECLOSURE_FLG COLLATERAL_SUPPORT_FLG FINANCIAL_DIFFICULTIES_FLG UNCONDITIONALLY_CANCELABLE_FLG REVOLVING_FLG ISSUED_GUARANTEE_FLG DRAWDOWN_PERIOD_FLG PENDING_OFFER_FLG CURRENCY ORIG_STD_RATING_GRADE STD_RATING_GRADE,,PD_SEGMENT_ID LGD_SEGMENT_ID LR_SEGMENT_ID CURVE_METHODOLOGY_CD PIT_PD LTV_RT LGD  UNPAID_BALANCE_AMT EFFECTIVE_INTEREST_RT CUM_WRITE_OFF_AMT CUM_RECOVERY_AMT OTHER_ALLOWANCE_AMT,,,,REPORTING_DT INSTID,,,,,SAS IFRS9 Data Repository,&sas_risk_workgroup_dir.,SASSolutionForIFRS9,Y,"Portfolio DQ Rule Set <MONTH, 0, SAME, yymmddd10.>","Data Quality Rule Set for the Credit Portfolio table.\nCreated by user &IRM_USER_ID.. on %sysfunc(datetime(), nldatmw200.)",CREDIT_PORTFOLIO,DQ
Enrichment,FRS9_LND,COUNTERPARTY,"Counterparty <MONTH, 0, SAME, yymmddd10.>","Counterparty data for the base date <MONTH, 0, SAME, yymmddd10.>.\nCreated by user &IRM_USER_ID.. on %sysfunc(datetime(), nldatmw200.)",Counterparty Definition,Counterparty schema definition,IFRS9_COUNTERPARTY,&content_version.,FLAT,IFRS9,COUNTERPARTY,,CREDIT,,,REPORTING_DT COUNTERPARTYTYPE,SECTOR_DESC DELINQUENCY_FLG EVER_DELINQUENT_FLG FINANCIAL_DIFFICULTIES_FLG RATING_AGENCY STD_RATING_GRADE,,,,,,REPORTING_DT COUNTERPARTYID,,,,,SAS IFRS9 Data Repository,&sas_risk_workgroup_dir.,SASSolutionForIFRS9,Y,"Counterparty DQ Rule Set <MONTH, 0, SAME, yymmddd10.>","Data Quality Rule Set for the Counterparty table.\nCreated by user &IRM_USER_ID.. on %sysfunc(datetime(), nldatmw200.)",COUNTERPARTY,DQ
Enrichment,FRS9_LND,PORTFOLIO_SPPI_DETAILS,"SPPI Test Details <MONTH, 0, SAME, yymmddd10.>","SPPI Test Details for the base date <MONTH, 0, SAME, yymmddd10.>.\nCreated by user &IRM_USER_ID.. on %sysfunc(datetime(), nldatmw200.)",SPPI Test Definition,SPPI Test schema definition,IFRS9_SPPI_DETAILS,&content_version.,FLAT,IFRS9,SPPI,,CREDIT,,,REPORTING_DT,SPPI_PRODUCT_TYPE_CD SPPI_PRODUCT_SUBTYPE_CD NON_RECOURSE_PROVISION_FLG MATURITY_CAP_INT_FLG DEFERRAL_POSSIBLE_FLG INT_COMPOUNDING_FLG LOSSES_TO_HOLDER_FLG INTEREST_BASE_OUTSTANDING_FLG INTEREST_PAYM_CANCELLABLE_FLG INTEREST_PAYM_DEFERRABLE_FLG DEFERRED_INT_PMNT_ACCRUE_FLG CF_INDEXED_FLG INVERSE_FLOATING_FLG FINANCIAL_LEVERAGE_FLG INTEREST_EXT_FIXED_FLG INTEREST_EXT_FIXED_COM_FLG PREPAYMENT_POSSIBLE_FLG PREPAYMENT_AMT_CAP_INT_FLG ORIGINATED_PREM_DISCOUNT_FLG SIGNIFICANT_AMT_FLG MATURITY_EXT_POSSIBLE_FLG INT_MARKET_RATE_FLG MATURITY_EXT_CAP_INT_FLG SPPI_TEST,,,,,,REPORTING_DT INSTID,,,,,SAS IFRS9 Data Repository,&sas_risk_workgroup_dir.,SASSolutionForIFRS9,Y,"SPPI Test DQ Rule Set <MONTH, 0, SAME, yymmddd10.>","Data Quality Rule Set for the SPPI Test Details table.\nCreated by user &IRM_USER_ID.. on %sysfunc(datetime(), nldatmw200.)",PORTFOLIO_SPPI_DETAILS,SPPI
Enrichment,FRS9_STG,CREDIT_CASHFLOW,"Cashflow <MONTH, 0, SAME, yymmddd10.>","Cashflow data related to the credit portfolio or AFS securities input for the base date <MONTH, 0, SAME, yymmddd10.>.\nCreated by user &IRM_USER_ID.. on %sysfunc(datetime(), nldatmw200.)",Cashflow Definition,Cashflow schema definition,IFRS9_CASHFLOW,&content_version.,FLAT,IFRS9,CASHFLOW,,CREDIT,,,REPORTING_DT CASHFLOW_LEG,CASHFLOW_LEG,,,,,,REPORTING_DT INSTID CASHFLOW_LEG CASHFLOW_DT,,,,,SAS IFRS9 Data Repository,&sas_risk_workgroup_dir.,SASSolutionForIFRS9,Y,,,,
Enrichment,FRS9_LND,RF_CURVE,"Risk Factor Curve <MONTH, 0, SAME, yymmddd10.>","Risk Factor Curves for the base date <MONTH, 0, SAME, yymmddd10.>.\nCreated by user &IRM_USER_ID.. on %sysfunc(datetime(), nldatmw200.)",Risk Factor Curve Definition,Risk Factor Curve schema definition,IFRS9_RF_CURVE,&content_version.,FLAT,IFRS9,RF_CURVE,,CREDIT,,,REPORTING_DT CURVE_TYPE_CD,SEGMENT_ID,,,,,,,,,,,SAS IFRS9 Data Repository,&sas_risk_workgroup_dir.,SASSolutionForIFRS9,Y,,,,
Enrichment,FRS9_STG,INDIVIDUAL_ADJUSTMENT,"Individual Adjustment <MONTH, 0, SAME, yymmddd10.>","Individual Adjustment data for the base date <MONTH, 0, SAME, yymmddd10.>.\nCreated by user &IRM_USER_ID.. on %sysfunc(datetime(), nldatmw200.)",Individual Adjustment Definition,Individual Adjustment schema definition,IFRS9_INDIVIDUAL_ADJUSTMENT,&content_version.,FLAT,IFRS9,INDIVIDUAL_ADJUSTMENT,,CREDIT,,,REPORTING_DT,MOVEMENT_TYPE_CD ADJUSTMENT_TYPE,,,,,,REPORTING_DT INSTID,,,,,SAS IFRS9 Data Repository,&sas_risk_workgroup_dir.,SASSolutionForIFRS9,Y,,,,
Data Quality,FRS9_STG,DQ_SUMMARY,Data Quality Summary - &current_dt_ymd. &current_tm_tod.,"Data Quality Summary results for the base date <MONTH, 0, SAME, yymmddd10.>.\nCreated by user &IRM_USER_ID. on %sysfunc(datetime(), nldatmw200.)",DQ Summary Definition,Data Quality Summary schema definition,IFRS9_DQ_SUMMARY,&content_version.,FLAT,IFRS9,DATA_QUALITY,,OTHER,Summary,,,SOURCE_TABLE RULE_ID RULE_NAME RULE_REPORTING_LEV1 RULE_REPORTING_LEV2 RULE_REPORTING_LEV3 RULE_MESSAGE_TXT,,,,,,SOURCE_TABLE RULE_ID,,,,,SAS IFRS9 Data Repository,&sas_risk_workgroup_dir.,SASSolutionForIFRS9,Y,,,,
Data Quality,FRS9_STG,DQ_DETAILS,Data Quality Details - &current_dt_ymd. &current_tm_tod.,"Data Quality Details results for the base date <MONTH, 0, SAME, yymmddd10.>.\nCreated by user &IRM_USER_ID. on %sysfunc(datetime(), nldatmw200.)",DQ Details Definition,Data Quality Details schema definition,IFRS9_DQ_DETAILS,&content_version.,FLAT,IFRS9,DATA_QUALITY,,OTHER,Details,,,SOURCE_TABLE RULE_ID RULE_NAME RULE_REPORTING_LEV1 RULE_REPORTING_LEV2 RULE_REPORTING_LEV3 RULE_MESSAGE_TXT,,,,,,,,,,,SAS IFRS9 Data Repository,&sas_risk_workgroup_dir.,SASSolutionForIFRS9,Y,,,,
Credit Risk,FRS9_STG,CREDIT_RISK_DETAIL,Credit Risk Detail - &current_dt_ymd. &current_tm_tod.,"Credit Risk results detail for the base date <MONTH, 0, SAME, yymmddd10.>.\nCreated by user &IRM_USER_ID. on %sysfunc(datetime(), nldatmw200.)",Credit Risk Detail Definition,Credit Risk Detail schema definition,IFRS9_CREDIT_RISK_DETAIL,&content_version.,FLAT,IFRS9,RESULTS,&analysis_type.,CREDIT,,Credit Risk,REPORTING_DT MOVEMENT_ID MOVEMENT_TYPE_CD INSTTYPE,PRODUCT_LEV1 PRODUCT_LEV2 PRODUCT_LEV3 LOB_LEV1 LOB_LEV2 LOB_LEV3 GEOGRAPHY_LEV1 GEOGRAPHY_LEV2 GEOGRAPHY_LEV3 GEOGRAPHY_LEV4 ORIG_STD_RATING_GRADE STD_RATING_GRADE REVOLVING_FLG DELINQUENCY_FLG EVER_DELINQUENT_FLG POCI_FLG TDR_FLG FORECLOSURE_FLG FINANCIAL_DIFFICULTIES_FLG UNCONDITIONALLY_CANCELABLE_FLG MOVEMENT_DESC MOVEMENT_TYPE MOVEMENT_CATEGORY FORECAST_PERIOD SCENARIO_ID SCENARIO_NAME,,ECL_12M ECL_LIFETIME ECL WRITE_OFF_AMT CUM_WRITE_OFF_AMT RECOVERY_AMT CUM_RECOVERY_AMT NET_WRITE_OFF_AMT PROVISION_EXPENSE_AMT ALLOWANCE_AMT,,,,REPORTING_DT INSTID SCENARIO_ID FORECAST_TIME MOVEMENT_ID,,,,,SAS IFRS9 Data Repository,&sas_risk_workgroup_dir.,SASSolutionForIFRS9,Y,,,,
;;;;
run;