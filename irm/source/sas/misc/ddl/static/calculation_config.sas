/*
 Copyright (C) 2015 SAS Institute Inc. Cary, NC, USA
*/
 
/**
   \file
   \brief   The table CALCULATION_CONFIG contains a list of fields to calculate.  It allows for expressions based on previous period fields.  
 
   |PK |Variable                  |Type              |Not Null * |Label                                |Description                                                                                                                         |
   |---|--------------------------|------------------|-----------|-------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|
   |   | WORKGROUP                | CHARACTER(32)    | Y         |  Risk Workgroup                     | Risk Workgroup                                                                                                                     |
   |   | MODELING_SYSTEM          | CHARACTER(150)   | Y         |  Modeling System (Name and Version) | Expected format: <i>&lt;Modeling System Name&gt; <b>[</b>(&lt;Version&gt;)<b>]</b></i>.                                            |
   |   | ANALYSIS_TYPE            | CHARACTER(32)    | Y         |  Analysis Type                      | Analysis type (FR_HTM or AFS)                                                                                                      |
   |   | MAP_TYPE                 | CHARACTER(100)   | Y         |  Map Type                           | Indicates which target table the mapping refers to.                                                                                |
   |   | PREV_PERIOD_VAR          | CHARACTER(32)    | N         |  Previous Period Variable           | Name of a field to pull from the previous period data set                                                                          |
   |   | PREV_PERIOD_VAR_RENAME   | CHARACTER(32)    | N         |  Name for Previous Period Variable  | Name to assign to the field pulled from the previous period data set.  If empty, the assigned name will be PREV_<field_name>       |
   |   | TARGET_VAR_NAME          | CHARACTER(32)    | N         |  Target Variable Name               | Name of the target variable                                                                                                        |
   |   | EXPRESSION_TXT           | CHARACTER(4096)  | N         |  Expression text                    | Expression. Can be any of the following: <br> - &lt;Variable Name&gt;: it will result in the variable being renamed. <br> - =&lt;assignment&gt; (i.e.: = Var1 + Var2): any valid SAS statement. <br> - &lt;Blank&gt;: This expression will be ignored.  |
   |   | MAPPING_DESC             | CHARACTER(1024)  | N         |  Mapping Description                | (Optional) Description about the purpose of the mapping rule.                                                                      |
   |   | TARGET_VAR_LENGTH        | CHARACTER(32)    | N         |  Target Variable Length             | (Optional) Set the length of the target variable (i.e.: $32. for characters or 8. for numeric variables).                          |
   |   | TARGET_VAR_LABEL         | CHARACTER(150)   | N         |  Target Variable Label              | (Optional) Set the label for the target variable (Do not include quotes!).                                                         |
   |   | TARGET_VAR_FMT           | CHARACTER(32)    | N         |  Target Variable Format             | (Optional) Set the format of the target variable.                                                                                  |
   (*) indicates a not-nullable variable.
 
 
   \details  

   If multiple fields are needed from the previous period data set, these should be defined in separate rows.
   
   For example, to set Z = sum(X from previous period, Y from previous period) on CREDIT_RISK_DETAIL, this table may have the following entries (Note that the third row could be combined into the second row):

   |WORKGROUP |MODELING_SYSTEM |ANALYSIS_TYPE |MAP_TYPE             |PREV_PERIOD_VAR          |PREV_PERIOD_VAR_RENAME |TARGET_VAR_NAME      |EXPRESSION_TXT       |MAPPING_DESC            |TARGET_VAR_LENGTH |TARGET_VAR_LABEL |TARGET_VAR_FMT   |
   |----------|----------------|--------------|---------------------|-------------------------|-----------------------|---------------------|---------------------|------------------------|------------------|-----------------|-----------------|
   | *        | *              | *            | CREDIT_RISK_DETAIL  | X                       | PREV_X                |                     |                     | Pull previous period X |                  |                 |                 |
   | *        | *              | *            | CREDIT_RISK_DETAIL  | Y                       | PREV_Y                |                     |                     | Pull previous period Y |                  |                 |                 |
   | *        | *              | *            | CREDIT_RISK_DETAIL  |                         |                       | Z                   | SUM(PREV_X, PREV_Y) | Calculate Z            | 8.               | Z               |                 |
 
   Note: If any calculations are based on fields that could be adjusted (e.g. via an Allocation Rule Set), the VAR_DEPENDENCY_CONFIG table should also be updated with similar expressions.

   \ingroup ddlStaticAnalytics
   \author  SAS Institute Inc.
   \date    2018
*/
CREATE TABLE &LIBREF..calculation_config (
   WORKGROUP               VARCHAR(32)    label='Risk Workgroup',                       
   MODELING_SYSTEM         VARCHAR(150)   label='Modeling System (Name and Version)',       
   ANALYSIS_TYPE           VARCHAR(32)    label='Analysis Type',             
   MAP_TYPE                VARCHAR(100)   label='Map Type',             
   PREV_PERIOD_VAR         VARCHAR(32)    label='Previous Period Variable',
   PREV_PERIOD_VAR_RENAME  VARCHAR(32)    label='Name for Previous Period Variable',
   TARGET_VAR_NAME         VARCHAR(32)    label='Target Variable Name',              
   EXPRESSION_TXT          VARCHAR(4096)  label='Expression', 
   MAPPING_DESC            VARCHAR(1024)  label='Mapping Description ', 
   TARGET_VAR_LENGTH       VARCHAR(32)    label='Target Variable Length', 
   TARGET_VAR_LABEL        VARCHAR(150)   label='Target Variable Label', 
   TARGET_VAR_FMT          VARCHAR(32)    label='Target Variable Format'
   );