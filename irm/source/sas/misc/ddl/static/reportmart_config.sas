/*  Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
\brief   The table REPORTMART_CONFIG contains details for storing data to the Report Mart.
 
   | PK           | Variable                   | Type           | Required?  | Label                          | Description                                                                                                                              |
   |--------------|----------------------------|----------------|------------|--------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|
   | ![ ](pk.jpg) | <b>REPORTMART_GROUP_ID</b> | VARCHAR(32)    | Y          | Reportmart Group Identifier    | Reportmart Group Identifier                                                                                                              |
   | ![ ](pk.jpg) | <b>SCHEMA_NAME</b>         | VARCHAR(100)   | Y          | Schema Name                    | Schema Name                                                                                                                              |
   | ![ ](pk.jpg) | <b>SCHEMA_VERSION</b>      | VARCHAR(50)    | Y          | Schema Version                 | Schema Version                                                                                                                           |
   |              | WHERE_CLAUSE               | VARCHAR(10000) |            | Where Clause                   | Optional where condition applied when extracting the data from the Stress Testing Data Repository                                        |
   |              | CUSTOM_CODE                | VARCHAR(10000) |            | Custom Code                    | Optional custom code applied when extracting the data from the Stress Testing Data Repository. This code is executed within a data step. |
   |              | RLS_TABLE_NAME             | VARCHAR(100)   | Y          | Row-Level Security Table Name  | Name of the table that controls row-level security                                                                                       |
   | ![ ](pk.jpg) | <b>MART_TABLE_NAME</b>     | VARCHAR(100)   | Y          | Mart Table Name                | Name of the target Report Mart table                                                                                                     |
 
\details

   See \link irmc_node_load_reportmart.sas \endlink for details.
    
\ingroup ddlStaticAnalytics
\author  SAS Institute Inc.
\date    2018
*/
 
CREATE TABLE &LIBREF..REPORTMART_CONFIG (
   REPORTMART_GROUP_ID     VARCHAR(32)     label = 'Reportmart Group Identifier',
   SCHEMA_NAME             VARCHAR(100)    label = 'Schema Name',
   SCHEMA_VERSION          VARCHAR(50)     label = 'Schema Version',
   WHERE_CLAUSE            VARCHAR(10000)  label = 'Where Clause',
   CUSTOM_CODE             VARCHAR(10000)  label = 'Custom Code',
   RLS_TABLE_NAME          VARCHAR(100)    label = 'Visibility Table Name',
   MART_TABLE_NAME         VARCHAR(100)    label = 'Mart Table Name',
   CONSTRAINT PRIM_KEY PRIMARY KEY (REPORTMART_GROUP_ID, SCHEMA_NAME, SCHEMA_VERSION, MART_TABLE_NAME)
);
