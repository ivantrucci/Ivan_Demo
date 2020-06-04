/*
@ @licstart  The following is the entire license notice for the
JavaScript code in this file.

Copyright (C) 1997-2017 by Dimitri van Heesch

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

@licend  The above is the entire license notice
for the JavaScript code in this file
*/
var NAVTREE =
[
  [ "SAS® Solution for IFRS9", "index.html", [
    [ "Introduction", "index.html", [
      [ "Overview of SAS Solution for IFRS 9", "index.html#IntroPlatform", null ],
      [ "SAS Solution for IFRS9 Framework", "index.html#IntroFrameworkElements", [
        [ "Data Management, Data Quality, and Overrides", "index.html#DataManagement", null ],
        [ "Scenario Design", "index.html#ScenarioManagement", null ],
        [ "Execution Engine and Simulation Environment", "index.html#Models", null ],
        [ "Orchestration and Risk Consolidation", "index.html#Orchestration", null ],
        [ "Dynamic Reporting", "index.html#Reporting", null ]
      ] ],
      [ "Products Involved and Their Various Roles", "index.html#IntroComponents", [
        [ "SAS Risk Governance Framework", "index.html#RGF", null ],
        [ "SAS Model Implementation Platform", "index.html#MIP", null ],
        [ "SAS Infrastructure for Risk Management", "index.html#IRM", null ]
      ] ],
      [ "Disclaimer", "index.html#disclaimer", null ]
    ] ],
    [ "Solution Architecture", "dd/dcf/050solarchitecture.html", [
      [ "Introduction", "dd/dcf/050solarchitecture.html#SAIntroduction_key", null ],
      [ "Landing Area", "dd/dcf/050solarchitecture.html#SALandingData_key", null ],
      [ "Analysis Data", "dd/dcf/050solarchitecture.html#SALandingAnalysisData_key", null ],
      [ "Output Data", "dd/dcf/050solarchitecture.html#SALandingOutputData_key", null ]
    ] ],
    [ "Process Flow", "d1/d11/040workflowIFRS9.html", [
      [ "IFRS9 Planning Cycle", "d1/d11/040workflowIFRS9.html#IFRS9Cycle_key", [
        [ "The Initialize Cycle Task", "d1/d11/040workflowIFRS9.html#intCycle", null ],
        [ "(Data Processing) The Data Preparation Task", "d1/d11/040workflowIFRS9.html#dataPrep", null ],
        [ "(Data Processing) The Run Data Quality Task", "d1/d11/040workflowIFRS9.html#runDataQuality", null ],
        [ "(Data Processing) The Review Data Quality Task", "d1/d11/040workflowIFRS9.html#reviewDataQuality", null ],
        [ "(Data Processing) The Manual Adjustments Task", "d1/d11/040workflowIFRS9.html#manualAdj", null ],
        [ "(Data Classification) The Run Classification Task", "d1/d11/040workflowIFRS9.html#dataclassrun", null ],
        [ "(Data Classification) The Review Classification Task", "d1/d11/040workflowIFRS9.html#dataclassrev", null ],
        [ "(Data Classification) The Adjust Classification Task", "d1/d11/040workflowIFRS9.html#dataclassadj", null ],
        [ "(Prepare Scenarios) The Configure Master Risk Scenarios Task", "d1/d11/040workflowIFRS9.html#prepMRS", null ],
        [ "The Credit Risk Analysis Task", "d1/d11/040workflowIFRS9.html#ECLAnalysis", null ],
        [ "The Credit Risk Adjustments Task", "d1/d11/040workflowIFRS9.html#adjAndAlloc", null ],
        [ "The Review Credit Risk Results Task", "d1/d11/040workflowIFRS9.html#reviewECLResults", null ],
        [ "(Prepare) The Prepare Attribution Templates Task", "d1/d11/040workflowIFRS9.html#prepAT", null ],
        [ "(Attribution) The Attribution Analysis Task", "d1/d11/040workflowIFRS9.html#AttrAnalysis", null ],
        [ "(Attribution) The Review Attribution Analysis Results Task", "d1/d11/040workflowIFRS9.html#reviewAttResults", null ],
        [ "(Generate Disclosures) The Generate Disclosures Task", "d1/d11/040workflowIFRS9.html#disclosures", null ],
        [ "(Generate Disclosures) The Review Reports Task", "d1/d11/040workflowIFRS9.html#revDisclosures", null ],
        [ "The Sign-Off Task", "d1/d11/040workflowIFRS9.html#signoff", null ],
        [ "Creating a New Cycle", "d1/d11/040workflowIFRS9.html#CreatingCycle", null ]
      ] ]
    ] ],
    [ "Building Your Data", "d5/ddb/150buildingYourData.html", [
      [ "Guide to Registering Data", "d5/ddb/150buildingYourData.html#OOBProcess_key", [
        [ "Where to Find Preloaded Data", "d5/ddb/150buildingYourData.html#RegisteringData_key", null ]
      ] ],
      [ "Static Configuration Tables", "d5/ddb/150buildingYourData.html#configTables_Key", null ],
      [ "Loading New Data into the Solution", "d5/ddb/150buildingYourData.html#CustomDataLoad_key", [
        [ "What is the IFRS 9 Data Repository?", "d5/ddb/150buildingYourData.html#IFRS9DR_key", null ]
      ] ],
      [ "Configuring and Importing Scenarios", "d5/ddb/150buildingYourData.html#ScenarioConfig_key", null ],
      [ "Models Used in SAS Solution for IFRS 9", "d5/ddb/150buildingYourData.html#UsingTheModel_key", [
        [ "Models to Evaluate the Current Expected Credit Loss", "d5/ddb/150buildingYourData.html#IFRS9Models", [
          [ "The ECL - ECL Curves Template", "d5/ddb/150buildingYourData.html#ECL_curves_key", null ],
          [ "The ECL - Mixed Models Template", "d5/ddb/150buildingYourData.html#ECL_mixed_models_key", null ]
        ] ]
      ] ]
    ] ],
    [ "Configuring Models", "dd/d0c/150configuringModels.html", [
      [ "What are \"Models\" in SAS Solution for IFRS9?", "dd/d0c/150configuringModels.html#ModelIntro_key", null ],
      [ "Configuring Model Parameters", "dd/d0c/150configuringModels.html#modelParam_key", null ],
      [ "Configuring Model Parameters Layout", "dd/d0c/150configuringModels.html#modelParamLayout_key", null ],
      [ "Configuring Model Code (Execution Configuration)", "dd/d0c/150configuringModels.html#modelCode_key", null ],
      [ "Using a Model in a Cycle Workflow", "dd/d0c/150configuringModels.html#UsingModelInCycleWorkflow", null ]
    ] ],
    [ "Data Quality and Data Adjustment", "dc/dc0/040DataQuality_8txt.html", [
      [ "Introduction", "dc/dc0/040DataQuality_8txt.html#DataQualityIntroduction", null ],
      [ "Rules and Rule Sets", "dc/dc0/040DataQuality_8txt.html#RuleSetOverview", null ],
      [ "Data Quality Checking", "dc/dc0/040DataQuality_8txt.html#DataQualityHow_key", [
        [ "Data Quality Rule Set Configuration and Execution", "dc/dc0/040DataQuality_8txt.html#DataQualityConfiguration_key", null ],
        [ "Pre-Configured Data Quality Rules", "dc/dc0/040DataQuality_8txt.html#DataQualityProvidedRules_key", null ],
        [ "Data Quality Reporting", "dc/dc0/040DataQuality_8txt.html#DataQualityReporting_key", [
          [ "The Data Quality Summary Report", "dc/dc0/040DataQuality_8txt.html#DataQualitySummary_key", null ],
          [ "The Data Quality Details Report", "dc/dc0/040DataQuality_8txt.html#DataQualityDetails_key", null ]
        ] ]
      ] ],
      [ "Data Adjustment", "dc/dc0/040DataQuality_8txt.html#DataAdjustmentHow_key", [
        [ "Data Adjustment Rule Set Configuration and Execution", "dc/dc0/040DataQuality_8txt.html#DataAdjustConfiguration_key", null ],
        [ "Pre-Configured Data Adjustment Rules", "dc/dc0/040DataQuality_8txt.html#DataAdjustmentProvidedRules_key", null ]
      ] ],
      [ "Data Classification", "dc/dc0/040DataQuality_8txt.html#DataClassifications_key", [
        [ "Running SPPI Tests", "dc/dc0/040DataQuality_8txt.html#DC_RunSPPI_key", null ],
        [ "Template for SPPI Test", "dc/dc0/040DataQuality_8txt.html#Template_SPPI_key", null ]
      ] ],
      [ "Configuring Additional Rules and Rule Sets", "dc/dc0/040DataQuality_8txt.html#DataQualityAdditionalRules_key", null ],
      [ "Overlays & Manual Adjustments", "dc/dc0/040DataQuality_8txt.html#AllocationAdjustments_key", [
        [ "Introduction", "dc/dc0/040DataQuality_8txt.html#AllocAdjustment_key", null ],
        [ "Adjustment Allocation Details", "dc/dc0/040DataQuality_8txt.html#AllocAdjustment_details", null ]
      ] ],
      [ "Regulation", "dc/dc0/040DataQuality_8txt.html#RegulationLinks", [
        [ "References", "dc/dc0/040DataQuality_8txt.html#BCBSReferences", null ]
      ] ]
    ] ],
    [ "Attribution Analysis", "d0/d17/1522attribAnalysis.html", [
      [ "Introduction to Attribution Analysis", "d0/d17/1522attribAnalysis.html#OO9Introduction_key", null ],
      [ "Creating Attribution Templates", "d0/d17/1522attribAnalysis.html#OO9Creating_key", [
        [ "Attribution Template Details", "d0/d17/1522attribAnalysis.html#AFDEtails", null ],
        [ "Attribution Factors Order", "d0/d17/1522attribAnalysis.html#AFOrder", [
          [ "Adding Additional Attribution Factors", "d0/d17/1522attribAnalysis.html#AFAddFacs", null ],
          [ "Ordering Attribution Factors", "d0/d17/1522attribAnalysis.html#AFOrderFacs", null ],
          [ "Grouping Factors", "d0/d17/1522attribAnalysis.html#AFGroupFacs", null ],
          [ "Adding to a Group", "d0/d17/1522attribAnalysis.html#AFAddToGroup", null ],
          [ "Ungrouping Rows", "d0/d17/1522attribAnalysis.html#AFUngroupFacs", null ],
          [ "Moving With Groups", "d0/d17/1522attribAnalysis.html#AFMoveWithGroups", null ],
          [ "Adding new Factors With Groups", "d0/d17/1522attribAnalysis.html#AFAddWithGroups", null ]
        ] ],
        [ "Choosing Output Variables", "d0/d17/1522attribAnalysis.html#O12SelectOutput_key", null ]
      ] ],
      [ "The Attribution Analysis Model", "d0/d17/1522attribAnalysis.html#AttributionModels", null ]
    ] ],
    [ "Reporting", "d2/dee/153Reporting_8txt.html", [
      [ "Introduction", "d2/dee/153Reporting_8txt.html#ReportingIntro", null ],
      [ "Disclosure Reporting", "d2/dee/153Reporting_8txt.html#DisclosureIntro", [
        [ "Sample Disclosure Reports", "d2/dee/153Reporting_8txt.html#OO2SampleReports_key", [
          [ "Collateral Held Carrying Value", "d2/dee/153Reporting_8txt.html#Collheld", null ],
          [ "Credit Concentrations by Asset Type", "d2/dee/153Reporting_8txt.html#CredConAsset", null ],
          [ "Credit Concentrations by Product", "d2/dee/153Reporting_8txt.html#CredConProd", null ],
          [ "Credit Concentrations by Region", "d2/dee/153Reporting_8txt.html#CredConReg", null ],
          [ "Credit Quality Allowance Overview", "d2/dee/153Reporting_8txt.html#CreditQualAllow", null ],
          [ "Credit Quality Analysis", "d2/dee/153Reporting_8txt.html#CreditQualAna", null ],
          [ "Credit Loss Reconciliation", "d2/dee/153Reporting_8txt.html#CreditLossRecon", null ],
          [ "Loan-to-Value", "d2/dee/153Reporting_8txt.html#LTV", null ],
          [ "Scenario Attribution", "d2/dee/153Reporting_8txt.html#ScenAtt", null ]
        ] ],
        [ "Creating Custom Disclosure Reports", "d2/dee/153Reporting_8txt.html#creatingCustomReports", null ]
      ] ],
      [ "FINREP Reporting", "d2/dee/153Reporting_8txt.html#FINREPIntro", [
        [ "FINREP 4.3 - Financial assets at fair value through other comprehensive income", "d2/dee/153Reporting_8txt.html#FINREP43", null ],
        [ "FINREP 4.4 - Financial assets at amortized cost", "d2/dee/153Reporting_8txt.html#FINREP44", null ],
        [ "FINREP 6.1 - Breakdown of loans and advances other than held for trading to non-financial corporations by NACE codes", "d2/dee/153Reporting_8txt.html#FINREP61", null ],
        [ "FINREP 7.1 -  Financial assets subject to impairment that are past due", "d2/dee/153Reporting_8txt.html#FINREP71", null ],
        [ "FINREP 12.1 -  Movements in allowances and provisions for credit losses", "d2/dee/153Reporting_8txt.html#FINREP121", null ],
        [ "FINREP 12.2 -  Movements in allowances for credit losses, provisions: Transfers between impairment stages (gross basis presentation)", "d2/dee/153Reporting_8txt.html#FINREP122", null ]
      ] ]
    ] ],
    [ "Debt Securities", "d0/dc1/154debtSecurities.html", [
      [ "Debt Securities", "d0/dc1/154debtSecurities.html#DebtSecuritiesIntro", null ]
    ] ],
    [ "Individual Assessment", "db/d0a/155individualAssessment.html", [
      [ "Introduction to Individual Assessment", "db/d0a/155individualAssessment.html#IndividudalAssessmentIntro", null ],
      [ "Individual Assessment Details", "db/d0a/155individualAssessment.html#IndividudalAssessmentDetails", null ]
    ] ],
    [ "Frequently Asked Questions (FAQ)", "d6/d3a/190FAQ.html", [
      [ "What is the difference between a model run and an analysis run?", "d6/d3a/190FAQ.html#ModelRunAnalysisRun", null ],
      [ "How can I run models without following the steps in a cycle?", "d6/d3a/190FAQ.html#adhocModelRun", null ],
      [ "How Do I Contact SAS?", "d6/d3a/190FAQ.html#FAQContacts", null ]
    ] ],
    [ "Product Versions and Release Information", "dd/d35/225Versions.html", [
      [ "SAS Solution for IFRS9 v01.2020", "dd/d35/225Versions.html#Ver042019", [
        [ "Summary", "dd/d35/225Versions.html#Ver052019Summary", null ],
        [ "Compatibility", "dd/d35/225Versions.html#Ver042019Compatibility", null ]
      ] ]
    ] ],
    [ "Modules", "modules.html", "modules" ],
    [ "Files", "files.html", [
      [ "File List", "files.html", "files_dup" ]
    ] ]
  ] ]
];

var NAVTREEINDEX =
[
"d0/d0a/irmifrs9__node__dq__init_8sas.html",
"dc/dc0/040DataQuality_8txt.html#DataQualityConfiguration_key"
];

var SYNCONMSG = 'click to disable panel synchronisation';
var SYNCOFFMSG = 'click to enable panel synchronisation';