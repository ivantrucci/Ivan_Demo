/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
 
\brief  Mapping days past due types
 
   |PK            |Variable                               |Type              |Not Null * |Relationships |Label                                        |Description                                                                                                                                                                                             |
   |--------------|---------------------------------------|------------------|-----------|--------------|---------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
   |![ ](pk.jpg)  | <b>DPD_START</b>                      | NUMERIC(8)   | Y         |              | Days Past Due Type Code                           |                                                                                                                                                                                                        |
   |![ ](pk.jpg)  | <b>DPD_END</b>                        | NUMERIC(8)    | Y         |              | Days Past Due Code                        |                                                                                                                                                                                                        |
   |              | DPD_DESC                              | CHARACTER(50)    | N         |              | Days Past Due Description                         |                                                                                                                                                                                                        |
   |              | DPD_CLASS                      | CHARACTER(50)    | N         |              | Days Past Due Description                         |                                                                                                                                                                                                        |
   
Notes:
- (*) indicates a not-nullable variable.
- Note that the indicated data types are SAS datatypes.
 
 
\ingroup ddlMapping
 
\author  SAS Institute Inc.
\date    2018
 
*/
CREATE TABLE &LIBREF..MAP_DPD_TYPE (
     DPD_START     NUMERIC(8) label='Days Past Due start',
     DPD_END       NUMERIC(8) label='Days Past Due end',
     DPD_CLASS   VARCHAR(50) label='Days Past Due Classification'
);
