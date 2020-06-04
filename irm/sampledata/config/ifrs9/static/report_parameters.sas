/* Copyright (C) 2019 SAS Institute Inc. Cary, NC, USA */

/*!
   \file
   \brief   Sample data for REPORT_PARAMETERS.

   \details Sample data for REPORT_PARAMETERS. For documentation and guidance please refer to the corresponding ddl file.

   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2019
*/

data WORK.REPORT_PARAMETERS;
   attrib                                                                                                                                       
      REPORT_ID        length = $100.
      PARAMETER_NAME   length = $256.
      PARAMETER_VALUE  length = $256.
      PARAMETER_DESC   length = $256.
   ;
   infile cards dsd delimiter = ',';
   input 
      REPORT_ID        :$char.
      PARAMETER_NAME   :$char.
      PARAMETER_VALUE  :$char.
      PARAMETER_DESC   :$char.
   ;
   
datalines4;
CollHeld_CarryingValue,DATA_RANGE,CollHeld_Data,Collateral Held Analysis Data Range
CollHeld_CarryingValue,MEASURES,COLLATERAL_VALUE_AMT,Collateral Held Analysis Measures
CollHeld_CarryingValue,DIMENSIONS,COUNTERPARTY_TYPE COLLATERAL_TYPE,Collateral Held Analysis Dimensions
Credit_Concentrations_by_Asset_Type,DATA_RANGE,Credit_Concentrations_A_T_Data,Credit Concentrations by Asset Type Data Range
Credit_Concentrations_by_Asset_Type,MEASURES,NOMINAL_AMT,Credit Concentrations by Asset Type Measures
Credit_Concentrations_by_Asset_Type,DIMENSIONS,COUNTERPARTY_TYPE ASSET_TYPE_DESC,Credit Concentrations by Asset Type Dimensions
Credit_Concentrations_by_Product,DATA_RANGE,Credit_Concentrations_Prod_Data,Credit Concentrations by Product Data Range
Credit_Concentrations_by_Product,MEASURES,NOMINAL_AMT,Credit Concentrations by Product Measures
Credit_Concentrations_by_Product,DIMENSIONS,COUNTERPARTY_TYPE PRODUCT_LEV1 PRODUCT_LEV2 PRODUCT_LEV3,Credit Concentrations by Product Dimensions
Credit_Concentrations_by_Region,DATA_RANGE,Credit_Concentrations_Rgn_Data,Credit Concentrations by Region Data Range
Credit_Concentrations_by_Region,MEASURES,NOMINAL_AMT,Credit Concentrations by Region Measures
Credit_Concentrations_by_Region,DIMENSIONS,COUNTERPARTY_TYPE GEOGRAPHY_LEV2 GEOGRAPHY_LEV3,Credit Concentrations by Region Dimensions
Credit_Quality_Allowance,DATA_RANGE,Credit_Quality_Data,Credit Quality Allowance Data Range
Credit_Quality_Allowance,MEASURES,AMORTIZED_COST_AMT ECL,Credit Quality Allowance Measures
Credit_Quality_Allowance,DIMENSIONS,PRODUCT_LEV1 STD_RATING_GRADE ECL_STAGE,Credit Quality Allowance Dimensions
Credit_Quality_Analysis,DATA_RANGE,CreditQualityAnal_Data,Credit Quality Analysis Data Range
Credit_Quality_Analysis,MEASURES,NOMINAL_AMT ALLOWANCE_AMT,Credit Quality Analysis Measures
Credit_Quality_Analysis,DIMENSIONS,COUNTERPARTY_TYPE ASSET_TYPE_DESC ECL_STAGE STD_RATING_GRADE,Credit Quality Analysis Dimensions
CreditLoss_Reconciliation,DATA_RANGE,CredLossRecon_Data,Credit Loss Reconciliation Data Range
CreditLoss_Reconciliation,MEASURES,ECL,Credit Loss Reconciliation Measures
CreditLoss_Reconciliation,DIMENSIONS,PRODUCT_LEV1 MOVEMENT_CATEGORY PREV_ECL_STAGE,Credit Loss Reconciliation Dimensions
Scenario_Attribution,DATA_RANGE,Scen_Attr_Data,Scenario Attribution Data Range
Scenario_Attribution,MEASURES,ECL ALLOWANCE_AMT,Scenario Attribution Measures
Scenario_Attribution,DIMENSIONS,ASSET_TYPE_DESC ECL_STAGE SCENARIO_NAME,Scenario Attribution Dimensions
LTV,DATA_RANGE,LTV_Data,Loan to Value Data Range
LTV,MEASURES,NOMINAL_AMT,Loan to Value Measures
LTV,DIMENSIONS,ECL_STAGE COLLATERAL_TYPE LTV_DESC,Loan to Value Dimensions
;;;;
run;
