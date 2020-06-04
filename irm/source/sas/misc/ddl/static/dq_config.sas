/*  Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
\brief   The table DQ_CONFIG contains configuration parameters for Data Quality execution.
 
   |PK            |Variable                |Type              | Required? |Label                      |Description                                                  |
   |--------------|------------------------|------------------|-----------|---------------------------|-------------------------------------------------------------|
   |![ ](pk.jpg)  | <b>CONFIG_NAME</b>     | CHARACTER(40)    | Y         | Config Name               | Parameter Name: it must be valid SAS Macro variable name    |
   |              | CONFIG_VALUE           | CHARACTER(256)   | N         | Config Value              | Value for the parameter                                     |
   |              | CONFIG_VALUE_DESC      | CHARACTER(150)   | N         | Config Value Description  | Parameter description                                       |
 

Data Example:

   | CONFIG_NAME   | CONFIG_VALUE | CONFIG_VALUE_DESC                                     |
   |---------------|--------------|-------------------------------------------------------|
   | RULE_ID_LIST  | 10001 10002  | Space separated list of RGF Rule identifiers          |
   | TABLE_ID_LIST | 10010 10014  | Space separated list of RGF Analysis Data identifiers |   
 
\ingroup ddlStaticDQ
\author  SAS Institute Inc.
\date    2018
*/
 
CREATE TABLE &LIBREF..DQ_CONFIG (
   CONFIG_NAME                      VARCHAR(40)    label = 'Config Name',
   CONFIG_VALUE                     VARCHAR(256)   label = 'Config Value',
   CONFIG_VALUE_DESC                VARCHAR(150)   label = 'Config Value Description',
   CONSTRAINT PRIM_KEY PRIMARY KEY (CONFIG_NAME)
);
