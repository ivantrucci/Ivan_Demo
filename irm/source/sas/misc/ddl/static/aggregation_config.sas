/*
 Copyright (C) 2015 SAS Institute Inc. Cary, NC, USA
*/
 
/**
   \file
   \brief   The table AGGREGATION_CONFIG defines aggregation rules for any given data definition.
 
   |PK |Variable              |Type              | Required? |Label                     |Description                                                                                            |
   |---|----------------------|------------------|-----------|--------------------------|-------------------------------------------------------------------------------------------------------|
   |   | SCHEMA_NAME          | CHARACTER(100)   | Y         | Schema Name              | Logical name of the table schema                                                                      |
   |   | SCHEMA_VERSION       | CHARACTER(50)    | Y         | Schema Version           | Identifies a specific version of the table metadata.                                                  |
   |   | VARIABLE_NAME        | CHARACTER(32)    | Y         | Variable Name            | Name of the variable for which the aggregation function is being defined                              |
   |   | AGGREGATION_METHOD   | CHARACTER(32)    | Y         | Aggregation Method       | Aggregation function: any funcion supported by the HPSUMMARY procedure. Example: SUM, MEAN, MAX, etc. |
   |   | WEIGHT_VAR           | CHARACTER(32)    | N         | Weight Variable          | Expression. The following code will be generated &lt;Variable Name&gt; = &lt;Expression&gt;           |
   
   (*) indicates a required variable.
 
 
   \details
 
   This table is used during the adjustmet allocation process to define aggregation functions for each variable of the report mart tables.
   Any valid aggregation function supported by the proc HPSUMMARY procedure can be specified.
   
   \ingroup ddlStaticAnalytics
   \author  SAS Institute Inc.
   \date    2018
*/
CREATE TABLE &LIBREF..AGGREGATION_CONFIG (
   SCHEMA_NAME           VARCHAR(150)   label='Schema Name',
   SCHEMA_VERSION        VARCHAR(50)    label='Schema Version',
   VARIABLE_NAME         VARCHAR(32)    label='Variable Name',
   AGGREGATION_METHOD    VARCHAR(32)    label='Aggregation Method',
   WEIGHT_VAR            VARCHAR(32)    label='Weight variable'
   );