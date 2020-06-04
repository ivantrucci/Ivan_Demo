/*
 Copyright (C) 2017 SAS Institute Inc. Cary, NC, USA
*/
 
/**
   \file
   \brief   The table VA_REPORT_CONFIG contains lists to drive interaction in VA reports
 
   |PK            |Variable    |Type              |Not Null * |Label                            |Description                                           |
   |--------------|------------|------------------|-----------|---------------------------------|------------------------------------------------------|
   |              | ITEM_TYPE  | CHARACTER(100)   | Y         | Item Type                       |                                                      |
   |              | ITEM_NM    | CHARACTER(100)   | Y         | Item Name                       |                                                      |
   
   (*) indicates a not-nullable variable.
 
  
   \details
 
   \ingroup ddlStaticReporting
   \author  SAS Institute Inc.
   \date    2015
*/
CREATE TABLE &LIBREF..VA_REPORT_CONFIG (
   ITEM_TYPE   VARCHAR(100)   label='Item Type',
   ITEM_NM     VARCHAR(100)   label='Item Name'   
);