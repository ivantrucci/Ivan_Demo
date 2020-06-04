/*  Copyright (C) 2017 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
\brief   The table ALLOCATION_CONFIG contains runtime parameters for the Adjustment Allocation jobflow execution.
 
   |PK            |Variable                |Type              | Required? |Label                      |Description                                                  |
   |--------------|------------------------|------------------|-----------|---------------------------|-------------------------------------------------------------|
   |![ ](pk.jpg)  | <b>CONFIG_NAME</b>     | CHARACTER(40)    | Y         | Config Name               | Parameter Name: it must be valid SAS Macro variable name    |
   |              | CONFIG_VALUE           | CHARACTER(256)   | N         | Config Value              | Value for the parameter                                     |
   |              | CONFIG_VALUE_DESC      | CHARACTER(150)   | N         | Config Value Description  | Parameter description                                       |
 
 
 
\ingroup ddlStaticFlow
\author  SAS Institute Inc.
\date    2019
*/
 
CREATE TABLE &LIBREF..ALLOCATION_CONFIG (
   CONFIG_NAME                      VARCHAR(40)    label = 'Config Name',
   CONFIG_VALUE                     VARCHAR(256)   label = 'Config Value',
   CONFIG_VALUE_DESC                VARCHAR(150)   label = 'Config Value Description',
   CONSTRAINT PRIM_KEY PRIMARY KEY (CONFIG_NAME)
);
