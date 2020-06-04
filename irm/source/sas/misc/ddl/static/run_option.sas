/*  Copyright (C) 2017 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
\brief   The table RUN_OPTION contains runtime parameters for the jobflow execution.
 
   |PK            |Variable                |Type              | Required? |Label                      |Description                                                  |
   |--------------|------------------------|------------------|-----------|---------------------------|-------------------------------------------------------------|
   |![ ](pk.jpg)  | <b>CONFIG_NAME</b>     | CHARACTER(40)    | Y         | Config Name               | Parameter Name: it must be valid SAS Macro variable name    |
   |              | CONFIG_VALUE           | CHARACTER(10000) | N         | Config Value              | Value for the parameter                                     |
   |              | CONFIG_VALUE_DESC      | CHARACTER(150)   | N         | Config Value Description  | Parameter description                                       |
 
 
 
\ingroup ddlStaticFlow
\author  SAS Institute Inc.
\date    2016
*/
 
CREATE TABLE &LIBREF..RUN_OPTION (
   CONFIG_NAME                      VARCHAR(40)    label = 'Config Name',
   CONFIG_VALUE                     VARCHAR(10000)   label = 'Config Value',
   CONFIG_VALUE_DESC                VARCHAR(150)   label = 'Config Value Description',
   CONSTRAINT PRIM_KEY PRIMARY KEY (CONFIG_NAME)
);
