/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */
 
/*!
   \file
   \brief  Movement Type
   \details

   |PK            |Variable                 |Type              | Required? |Relationships  |Label                | Description         |
   |--------------|-------------------------|------------------|-----------|---------------|---------------------|---------------------|
   | ![ ](pk.jpg) | <b>MOVEMENT_TYPE_CD</b> | CHARACTER(32)    | Y         |               | Movement Type Code  | Movement Type Code  |
   |              | MOVEMENT_TYPE           | CHARACTER(100)   | N         |               | Movement Type       | Movement Type       |
   |              | MOVEMENT_CATEGORY       | CHARACTER(200)   | N         |               | Movement Category   | Movement Category   |
  
\author  SAS Institute Inc.
\date    2018
 
*/
CREATE TABLE &LIBREF..MAP_MOVEMENT_TYPE (
   MOVEMENT_TYPE_CD        CHARACTER(32)   label = 'Movement Type Code',
   MOVEMENT_TYPE           CHARACTER(100)  label = 'Movement Type',
   MOVEMENT_CATEGORY       CHARACTER(100)  label = 'Movement Category',
   CONSTRAINT PRIM_KEY PRIMARY KEY (MOVEMENT_TYPE_CD)
);
