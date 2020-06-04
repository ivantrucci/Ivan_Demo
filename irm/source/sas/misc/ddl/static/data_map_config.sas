/*
 Copyright (C) 2015 SAS Institute Inc. Cary, NC, USA
*/
 
/**
   \file
   \brief   The table DATA_MAP_CONFIG is a generic mapper used to rename/map or compute new columns.
 
   |PK |Variable                  |Type              |Not Null * |Label                                |Description                                                                                                                         |
   |---|--------------------------|------------------|-----------|-------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|
   |   | WORKGROUP                | CHARACTER(32)    | Y         |  Risk Workgroup                     | Risk Workgroup                                                                                                                     |
   |   | MODELING_SYSTEM          | CHARACTER(150)   | Y         |  Modeling System (Name and Version) | Expected format: <i>&lt;Modeling System Name&gt; <b>[</b>(&lt;Version&gt;)<b>]</b></i>.                                            |
   |   | MAP_TYPE                 | CHARACTER(100)   | Y         |  Map Type                           | Indicates which target table the mapping refers to. <br> Expected values: <br> - PRE_STAGE_ALLOC: Mapping performed before stage allocation. <br> - POST_STAGE_ALLOC: Mapping performed after stage allocation. <br> - DETAIL_DATA: Mapping to detail data structure. <br> - RPTMART_DETAIL: Mapping to the report mart detail data structure. <br> - RPTMART_MOVEMENTS: Mapping to the report mart movements (waterfall) data structure. |
   |   | TARGET_VAR_NAME          | CHARACTER(32)    | N         |  Target Variable Name               | Name of the target variable.                                                                                                       |
   |   | EXPRESSION_TXT           | CHARACTER(4096)  | N         |  Expression text                    | Expression. Can be any of the following: <br> - &lt;Variable Name&gt;: it will result in the variable being renamed. <br> - =&lt;assignment&gt; (i.e.: = Var1 + Var2): any valid SAS statement. <br> - &lt;Blank&gt;: This record will be ignored.  |
   |   | MAPPING_DESC             | CHARACTER(1024)  | N         |  Mapping Description                | (Optional) Description about the purpose of the mapping rule.                                                             |
   |   | TARGET_VAR_LENGTH        | CHARACTER(32)    | N         |  Target Variable Length             | (Optional) Set the length of the target variable (i.e.: $32. for characters or 8. for numeric variables).                 |
   |   | TARGET_VAR_LABEL         | CHARACTER(150)   | N         |  Target Variable Label              | (Optional) Set the label for the target variable (Do not include quotes!).                                                |
   |   | TARGET_VAR_FMT           | CHARACTER(32)    | N         |  Target Variable Format             | (Optional) Set the format of the target variable.                                                                         |
   (*) indicates a not-nullable variable.
 
 
   \details
 
   \ingroup ddlStaticAnalytics
   \author  SAS Institute Inc.
   \date    2018
*/
CREATE TABLE &LIBREF..DATA_MAP_CONFIG (
   WORKGROUP         VARCHAR(32)   label='Risk Workgroup',                       
   MODELING_SYSTEM   VARCHAR(150)  label='Modeling System (Name and Version)',       
   MAP_TYPE          VARCHAR(100)  label='Map Type',             
   TARGET_VAR_NAME   VARCHAR(32)   label='Target Variable Name',              
   EXPRESSION_TXT    VARCHAR(4096) label='Expression', 
   MAPPING_DESC      VARCHAR(1024)  label='Mapping Description ', 
   TARGET_VAR_LENGTH VARCHAR(32)   label='Target Variable Length', 
   TARGET_VAR_LABEL  VARCHAR(150)  label='Target Variable Label', 
   TARGET_VAR_FMT    VARCHAR(32)   label='Target Variable Format'
   );