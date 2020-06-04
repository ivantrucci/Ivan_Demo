/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
 
\brief  Mapping Loan-to-Value types
 
   |PK            |Variable                               |Type              |Not Null * |Relationships |Label                                        |Description            |
   |--------------|---------------------------------------|------------------|-----------|--------------|---------------------------------------------|-----------------------|
   |![ ](pk.jpg)  | <b>LTV_START</b>                      | NUMERIC(8)       | Y         |              | Loan to Value Start Range                   |                       |
   |![ ](pk.jpg)  | <b>LTV_END</b>                        | NUMERIC(8)       | Y         |              | Loan to Value End Range                     |                       |
   |              | LTV_DESC                              | CHARACTER(50)    | N         |              | Loan to Value Description                   |                       |
 
Notes:
- (*) indicates a not-nullable variable.
- Note that the indicated data types are SAS datatypes.
 
 
\ingroup ddlMapping
 
\author  SAS Institute Inc.
\date    2018
 
*/
CREATE TABLE &LIBREF..MAP_LTV_TYPE (
     LTV_START          NUMERIC(8) label='LTV Start Range',
     LTV_END            NUMERIC(8) label='LTV End Range',
     LTV_DESC           VARCHAR(50) label='LTV Type'
);
