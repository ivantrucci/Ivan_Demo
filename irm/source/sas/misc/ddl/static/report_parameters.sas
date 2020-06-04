/*  Copyright (C) 2017 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
\brief   The table REPORT_PARAMETERS contains parameters that are specific for each report.
 
   |PK            |Variable          |Type              | Required? |Label                      |Description                              |
   |--------------|------------------|------------------|-----------|---------------------------|-----------------------------------------|
   | ![ ](pk.jpg) | REPORT_ID        | CHARACTER(100)   | Y         | Report Id                 | Unique identifier of the report         |
   | ![ ](pk.jpg) | PARAMETER_NAME   | CHARACTER(32)    | Y         | Parameter Name            | Name of the report parameter            |
   |              | PARAMETER_VALUE  | CHARACTER(10000) | N         | Parameter Value           | Value for the report parameter          |
   |              | PARAMETER_DESC   | CHARACTER(256)   | N         | Parameter Description     | Description of the report parameter     |
 
\details

 
\ingroup ddlStaticReporting
\author  SAS Institute Inc.
\date    2019
*/
 
CREATE TABLE &LIBREF..REPORT_PARAMETERS (
   REPORT_ID            VARCHAR(100)   NOT NULL   label = 'Report Id',
   PARAMETER_NAME       VARCHAR(32)    NOT NULL   label = 'Parameter Name',
   PARAMETER_VALUE      VARCHAR(10000)            label = 'Parameter Value',
   PARAMETER_DESC       VARCHAR(256)              label = 'Parameter Description',
   CONSTRAINT PRIM_KEY PRIMARY KEY (REPORT_ID, PARAMETER_NAME)
);
