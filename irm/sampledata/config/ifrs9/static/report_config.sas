/* Copyright (C) 2019 SAS Institute Inc. Cary, NC, USA */

/*!
   \file
   \brief   Sample data for REPORT_CONFIG.

   \details Sample data for REPORT_CONFIG. For documentation and guidance please refer to the corresponding ddl file.

   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2019
*/

data WORK.report_config;
   attrib                                                                                                                                       
      REPORT_ID        length = $100.
      REPORT_NAME      length = $256.
      TEMPLATE_NAME    length = $256.
      SOURCE_CODE      length = $256.
   ;
   infile cards dsd delimiter = ',';
   input 
      REPORT_ID        :$char.
      REPORT_NAME      :$char.
      TEMPLATE_NAME    :$char.
      SOURCE_CODE      :$char.
   ;
   
datalines4;
CollHeld_CarryingValue,Collateral Held Carrying Value,CollHeld_CarryingValue.xlsx,irmifrs9_task_rpt_collheld.sas
Credit_Concentrations_by_Asset_Type,Credit Concentrations by Asset Type,CreditConcentrationsByAssetType.xlsx,irmifrs9_task_rpt_credit_con.sas
Credit_Concentrations_by_Product,Credit Concentrations by Product,CreditConcentrationsByProduct.xlsx,irmifrs9_task_rpt_credit_con.sas
Credit_Concentrations_by_Region,Credit Concentrations by Region,CreditConcentrationsByRegion.xlsx,irmifrs9_task_rpt_credit_con.sas
CreditLoss_Reconciliation,Credit Loss Reconciliation,CreditLoss_Reconciliation.xlsx,irmifrs9_task_rpt_credloss_recon.sas
Credit_Quality_Allowance,Credit Quality Allowance Overview,CreditQualityAndAllowancesOverview.xlsx,irmifrs9_task_rpt_creditquality.sas
Credit_Quality_Analysis,Credit Quality Analysis,CreditQualityAnalysis.xlsx,irmifrs9_task_rpt_creditqual_ana.sas
Scenario_Attribution,Scenario Attribution,ScenarioAttribution.xlsx,irmifrs9_task_rpt_scenatt.sas
LTV,Loan-to-value,Loan_to_Value.xlsx,irmifrs9_task_rpt_ltv.sas
;;;;
run;
