/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
 
\brief  Maps Line of Business codes to the lowest level of the Line of Business hierarchy.
 
   |PK            |Variable          |Type              | Required? |Relationships |Label                       |Description                 |
   |--------------|------------------|------------------|-----------|--------------|----------------------------|----------------------------|
   |![ ](pk.jpg)  | <b>LOB_ID</b>    | CHARACTER(100)   | Y         |              | Line of Business Id        | Line of Business Id        |
   |              | LOB_LEV1         | CHARACTER(200)   | N         |              | Line of Business Level 1   | Line of Business Level 1   |
   |              | LOB_LEV2         | CHARACTER(200)   | N         |              | Line of Business Level 2   | Line of Business Level 2   |
   |              | LOB_LEV3         | CHARACTER(200)   | N         |              | Line of Business Level 3   | Line of Business Level 3   |
 
\ingroup ddlMapping
 
\author  SAS Institute Inc.
\date    2018
 
*/
CREATE TABLE &LIBREF..MAP_LOB_HIERARCHY (
   LOB_ID     VARCHAR(100) label = 'Line of Business Id',
   LOB_LEV1   VARCHAR(200) label = 'Line of Business Level 1',
   LOB_LEV2   VARCHAR(200) label = 'Line of Business Level 2',
   LOB_LEV3   VARCHAR(200) label = 'Line of Business Level 3',
   CONSTRAINT PRIM_KEY PRIMARY KEY (LOB_ID)
);
