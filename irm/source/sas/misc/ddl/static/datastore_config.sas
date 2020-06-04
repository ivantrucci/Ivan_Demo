/*  Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
\brief   The table DATASTORE_CONFIG contains details for storing data to the Centralized Data Repository.
 
   | PK           | Variable                    | Type             | Required?  | Label                       | Description                                                                                                                                                                                                                                                                                                              |
   |--------------|-----------------------------|------------------|------------|-----------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
   | ![ ](pk.jpg) | DATASTORE_GROUP_ID          | CHARACTER(32)    | Y          | Datastore Group Identifier  | Identifier used to process tables together.                                                                                                                                                                                                                                                                              |
   | ![ ](pk.jpg) | LIBREF                      | CHARACTER(20)    | Y          | Source Libref               | Source Libref                                                                                                                                                                                                                                                                                                            |
   | ![ ](pk.jpg) | TABLE_NAME                  | CHARACTER(100)   | Y          | Source Table Name           | Source Table Name                                                                                                                                                                                                                                                                                                        |
   |              | ANALYSIS_DATA_NAME          | CHARACTER(150)   | Y          | Analysis Data Name          | Analysis Data Name                                                                                                                                                                                                                                                                                                       |
   |              | ANALYSIS_DATA_DESC          | CHARACTER(250)   | N          | Analysis Data Description   | Analysis Data Description                                                                                                                                                                                                                                                                                                |
   |              | DATA_DEFINITION_NAME        | CHARACTER(150)   | Y          | Data Definition Name        | Data Definition Name                                                                                                                                                                                                                                                                                                     |
   |              | DATA_DEFINITION_DESC        | CHARACTER(250)   | N          | Data Definition Description | Data Definition Description                                                                                                                                                                                                                                                                                              |
   |              | SCHEMA_NAME                 | CHARACTER(100)   | Y          | Schema Name                 | Logical name of the table schema                                                                                                                                                                                                                                                                                         |
   |              | SCHEMA_VERSION              | CHARACTER(50)    | Y          | Schema Version              | Identifies a specific version of the metadata. Each metadata version may specify different primary key, business key, indexes, partition scheme, etc.                                                                                                                                                                    |
   |              | SCHEMA_TYPE                 | CHARACTER(20)    | Y          | Schema Type                 | Schema Type: <br> - FLAT <br> - DIMENSION <br> - FACT                                                                                                                                                                                                                                                                    |
   |              | BUSINESS_CATEGORY           | CHARACTER(100)   | Y          | Business Category           | Business Category:<br> - ST <br> - ALM <br> - IFRS9 <br> - CECL <br> - IFRS17                                                                                                                                                                                                                                            |
   |              | DATA_CATEGORY               | CHARACTER(100)   | Y          | Data Category               | Data Category: PORTFOLIO <br> - COUNTERPARTY <br> - CASHFLOW <br> - AUDIT_SUMMARY <br> - DATA_QUALITY <br> - BALANCE_SHEET <br> - OWN_FUNDS <br> - PROFIT_LOSS <br> - RESULTS <br> - SCENARIO <br> - SYNTHETIC_INSTRUMENT <br> - MAPPING <br> - CONFIGURATION <br> - PARAMETER <br> - BUSINESS_EVOLUTION <br> - OTHER    |
   |              | RESULTS_CATEGORY            | CHARACTER(100)   | Y          | Results Category            | Results Category to assign to Analysis Data instance.  Valid values are defined in the resultCategoryCd NamedList (e.g. FR_HTM, AFS, Other).                                                                                                                                                                             |
   |              | RISK_TYPE                   | CHARACTER(100)   | Y          | Risk Type                   | Risk Type: <br> - CREDIT <br> - MARKET <br> - OPERATIONAL <br> - FINANCIAL <br> - REPUTATIONAL <br> - OTHER                                                                                                                                                                                                              |
   |              | DATA_TYPE                   | CHARACTER(100)   | N          | Data Type                   | Free text: it can be used to specify custom attributes related to this table schema                                                                                                                                                                                                                                      |
   |              | REPORTMART_GROUP_ID         | CHARACTER(32)    | N          | Reportmart Group Id         | Relevant for tables where Data Category = RESULTS. It must match the corresponding entry inside table \link reportmart_config.sas \endlink                                                                                                                                                                               |
   |              | PARTITION_VARS              | CHARACTER(4096)  | N          | Partition Vars              | List of custom partition variables. This is in addition to project_id, load_id, workgroup and entity_id                                                                                                                                                                                                                  |
   |              | FILTERABLE_VARS             | CHARACTER(10000) | N          | Filterable Vars             | List of filterable variables.  This controls which fields will have a dropdown filter in the Data View of the Analysis Data.                                                                                                                                                                                             |
   |              | CLASSIFICATION_VARS         | CHARACTER(10000) | N          | Classification Vars         | List of classification variables.  This controls which fields can be used as classification fields in the Classification Rule Set.                                                                                                                                                                                       |
   |              | ATTRIBUTABLE_VARS           | CHARACTER(10000) | N          | Attributable Vars           | List of attributable variables.  This controls which variables can be used in attribution analysis.                                                                                                                                                                                                                      |
   |              | MANDATORY_SEGMENTATION_VARS | CHARACTER(10000) | N          | Mandatory Segmentation Vars | List of mandatory segmentation variables.  This controls which variables must be part of the segmentation scheme.                                                                                                                                                                                                        |
   |              | PROJECTION_VARS             | CHARACTER(10000) | N          | Projection Vars             | List of fields that can be used for projection in Business Evolution Plans.                                                                                                                                                                                                                                              |
   |              | CUSTOM_CODE                 | CHARACTER(10000) | N          | Custom Code                 | Custom code to be executed as part of the data preparation. It must contain valid data step syntax.                                                                                                                                                                                                                      |
   |              | PRIMARY_KEY                 | CHARACTER(10000) | N          | Primary Key                 | For flat tables, it is a space separated list of columns of the input table that make up the primary key. For dimension and fact tables, it is the name that will be given to the surrogate key column.                                                                                                                  |
   |              | INDEX_LIST                  | CHARACTER(10000) | N          | Index List                  | List of indexes. These indexes are created independently on each partition.                                                                                                                                                                                                                                              |
   |              | BUSINESS_KEY                | CHARACTER(10000) | N          | Business Key                | Space separated list of columns that make up the business key. Only applicable to Dimension tables.                                                                                                                                                                                                                      |
   |              | DIMENSION_LIST              | CHARACTER(10000) | N          | Dimension List              | Space separated list of dimension tables (schema names and version) that are related to the fact table.                                                                                                                                                                                                                  |
   |              | TYPE2_COLS                  | CHARACTER(10000) | N          | Type2 Columns               | Space separated list of Type-2 columns that will be used to determine whether a new record must be added to the dimension table.                                                                                                                                                                                         |
   |              | META_LIBRARY_NAME           | CHARACTER(10000) | N          | Metadata Library Name       | Name of the metadata library where this table is stored                                                                                                                                                                                                                                                                  |
   |              | DETAILS_ROOT                | CHARACTER(10000) | N          | Details Root Location       | Root to the location where the partition tables are stored.                                                                                                                                                                                                                                                              |
   |              | DETAILS_APP                 | CHARACTER(1024)  | N          | Details Application         | Name of the SAS Application for which the detail data are stored. Used if the details_root parameter points to the <AppData>/SASRiskWorkgroup location.                                                                                                                                                                  |
   |              | CONSTRAINT_ENABLED_FLG      | CHARACTER(10)    | N          | Constraints Enabled Flag    | Flag Y/N. Controls whether index/constraint creation is enabled.                                                                                                                                                                                                                                                         |
   |              | RULE_SET_NAME               | CHARACTER(100)   | N          | Rule Set Name               | Rule Set Name                                                                                                                                                                                                                                                                                                            |
   |              | RULE_SET_DESC               | CHARACTER(250)   | N          | Rule Set Description        | Rule Set Description                                                                                                                                                                                                                                                                                                     |
   |              | RULE_SET_GROUP_ID           | CHARACTER(100)   | N          | Rule Set Group Id           | Rule Set Group Identifier. Linked to \link ruleset_config.sas \endlink                                                                                                                                                                                                                                                   |
   |              | RULE_SET_CATEGORY           | CHARACTER(100)   | N          | Rule Set Categoru           | Rule Set Category:<br> - DQ: Data Quality <br> - STAGE: Stage Allocation <br> - ADJ: Adjustments <br> - OTHER: Other                                                                                                                                                                                                     |
 
\details

   See \link irmifrs9_node_store_analysis_data.sas \endlink for details.

   Valid values for column DATASTORE_GROUP_ID are:
    - <i>Enrichment</i> - Tables in this group will be registered as part of the Data Enrichment process
    - <i>DataQuality</i> - Tables in this group will be registered as part of the Data Quality process
    - <i>CreditRisk</i> - Tables in this group will be registered as part of the Credit Stress Testing analytical process
    - <i><Any other value></i> - Custom values can be used to extend the functionality of the solution. 
   

   The following values for the LIBREF column are supported (i.e. already assigned at execution time):
    - FRS9_LND: Landing Area library (IRM Landing Area - Staging)
    - FRS9_MAP: Mapping library (IRM Landing Area - Mapping)
    - FRS9_CFG: Configuration library (IRM Landing Area - Static)
    - FRS9_PRM: Parameter library (IRM Persistence Area)
    - FRS9_STG: Staging library (IRM Persistence Area)
    
\ingroup ddlStaticFlow
\author  SAS Institute Inc.
\date    2018
*/
 
CREATE TABLE &LIBREF..DATASTORE_CONFIG (
   DATASTORE_GROUP_ID           VARCHAR(32)     label = 'Datastore Group Identifier',
   LIBREF                       VARCHAR(20)     label = 'Source Libref',
   TABLE_NAME                   VARCHAR(100)    label = 'Source Table Name',
   ANALYSIS_DATA_NAME           VARCHAR(150)    label = 'Analysis Data Name',
   ANALYSIS_DATA_DESC           VARCHAR(250)    label = 'Analysis Data Description',
   DATA_DEFINITION_NAME         VARCHAR(150)    label = 'Data Definition Name',
   DATA_DEFINITION_DESC         VARCHAR(250)    label = 'Data Definition Description',
   SCHEMA_NAME                  VARCHAR(100)    label = 'Schema Name',
   SCHEMA_VERSION               VARCHAR(50)     label = 'Schema Version',
   SCHEMA_TYPE                  VARCHAR(20)     label = 'Schema Type',
   BUSINESS_CATEGORY            VARCHAR(100)    label = 'Business Category',
   DATA_CATEGORY                VARCHAR(100)    label = 'Data Category',
   RESULTS_CATEGORY             VARCHAR(100)    label = 'Results Category',
   RISK_TYPE                    VARCHAR(100)    label = 'Risk Type',
   DATA_TYPE                    VARCHAR(100)    label = 'Data Type',
   REPORTMART_GROUP_ID          VARCHAR(32)     label = 'Reportmart Group Id',
   PARTITION_VARS               VARCHAR(4096)   label = 'Partition Vars',
   FILTERABLE_VARS              VARCHAR(10000)  label = 'Filterable Vars',
   CLASSIFICATION_VARS          VARCHAR(10000)  label = 'Classification Vars',
   ATTRIBUTABLE_VARS            VARCHAR(10000)  label = 'Attributable Vars',
   MANDATORY_SEGMENTATION_VARS  VARCHAR(10000)  label = 'Mandatory Segmentation Vars',
   PROJECTION_VARS              VARCHAR(10000)  label = 'Projection Vars',
   CUSTOM_CODE                  VARCHAR(10000)  label = 'Custom Code',
   PRIMARY_KEY                  VARCHAR(10000)  label = 'Primary Key',
   INDEX_LIST                   VARCHAR(10000)  label = 'Index List',
   BUSINESS_KEY                 VARCHAR(10000)  label = 'Business Key',
   DIMENSION_LIST               VARCHAR(10000)  label = 'Dimension List',
   TYPE2_COLS                   VARCHAR(10000)  label = 'Type2 Columns',
   META_LIBRARY_NAME            VARCHAR(10000)  label = 'Metadata Library Name',
   DETAILS_ROOT                 VARCHAR(10000)  label = 'Details Root Location',
   DETAILS_APP                  VARCHAR(1024)   label = 'Details Application',
   CONSTRAINT_ENABLED_FLG       VARCHAR(10)     label = 'Constraints Enabled Flag',
   RULE_SET_NAME                VARCHAR(100)    label = 'Rule Set Name',
   RULE_SET_DESC                VARCHAR(250)    label = 'Rule Set Description',
   RULE_SET_GROUP_ID            VARCHAR(100)    label = 'Rule Set Group Id',
   RULE_SET_CATEGORY            VARCHAR(100)    label = 'Rule Set Category',
   CONSTRAINT PRIM_KEY PRIMARY KEY (DATASTORE_GROUP_ID, LIBREF, TABLE_NAME)
);
