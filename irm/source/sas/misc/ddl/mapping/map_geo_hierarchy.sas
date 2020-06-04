/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
 
\brief Maps the geography code to the geography hierarchy.
 
   |PK            |Variable          |Type              | Required? |Relationships |Label                |Description                                      |
   |--------------|------------------|------------------|-----------|--------------|---------------------|-------------------------------------------------|
   |![ ](pk.jpg)  | GEOGRAPHY_CD     | CHARACTER(32)    | Y         |              | Geography Code      | Geography code: ISO 3166-1 or ISO 3166-2 code   |
   |              | GEOGRAPHY_LEV1   | CHARACTER(100)   | N         |              | Geography Level 1   | Geography Level 1 (Continent)                   |
   |              | GEOGRAPHY_LEV2   | CHARACTER(100)   | N         |              | Geography Level 2   | Geography Level 2 (Sub-division)                |
   |              | GEOGRAPHY_LEV3   | CHARACTER(100)   | N         |              | Geography Level 3   | Geography Level 3 (Country)                     |
   |              | GEOGRAPHY_LEV4   | CHARACTER(100)   | N         |              | Geography Level 4   | Geography Level 4 (Region/State)                |
   
 
\ingroup ddlMapping
 
\author  SAS Institute Inc.
\date    2018
 
*/
CREATE TABLE &LIBREF..MAP_GEO_HIERARCHY (
   GEOGRAPHY_CD     VARCHAR(32)  label = "Geography Code",
   GEOGRAPHY_LEV1   VARCHAR(100) label = "Geography Level 1",
   GEOGRAPHY_LEV2   VARCHAR(100) label = "Geography Level 2",
   GEOGRAPHY_LEV3   VARCHAR(100) label = "Geography Level 3",
   GEOGRAPHY_LEV4   VARCHAR(100) label = "Geography Level 4",
   CONSTRAINT PRIM_KEY PRIMARY KEY (GEOGRAPHY_CD)
);