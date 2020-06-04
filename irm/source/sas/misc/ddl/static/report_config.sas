/*  Copyright (C) 2017 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
\brief   The table REPORT_CONFIG contains configuration for the generation of disclosure reports.
 
   |PK            |Variable          |Type              | Required? |Label                      |Description                                                                                                         |
   |--------------|------------------|------------------|-----------|---------------------------|--------------------------------------------------------------------------------------------------------------------|
   | ![ ](pk.jpg) | REPORT_ID        | CHARACTER(100)   | Y         | Report Id                 | Unique identifier of the report                                                                                    |
   |              | REPORT_NAME      | CHARACTER(256)   | Y         | Report Name               | Name of the report                                                                                                 |
   |              | TEMPLATE_NAME    | CHARACTER(256)   | Y         | Template Name             | Name of the Excel template file (including xlsx extension) to be populated                                         |
   |              | SOURCE_CODE      | CHARACTER(256)   | Y         | Source Code               | SAS program to be executed (must be saved under irm/source/sas/nodes)                                              |
 
\details

 
\ingroup ddlStaticReporting
\author  SAS Institute Inc.
\date    2019
*/
 
CREATE TABLE &LIBREF..REPORT_CONFIG (
   REPORT_ID            VARCHAR(100) NOT NULL   label = 'Report Id',
   REPORT_NAME          VARCHAR(256) NOT NULL   label = 'Report Name',
   TEMPLATE_NAME        VARCHAR(256) NOT NULL   label = 'Template Name',
   SOURCE_CODE          VARCHAR(256) NOT NULL   label = 'Source Code',
   CONSTRAINT PRIM_KEY PRIMARY KEY (REPORT_ID)
);
