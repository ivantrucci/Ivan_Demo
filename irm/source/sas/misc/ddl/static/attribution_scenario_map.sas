/*  Copyright (C) 2017 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
\brief   The table ATTRIBUTION_SCENARIO_MAP contains runtime parameters for the jobflow execution.
 
   |PK            |Variable                 |Type              | Required? |Label                 |Description                   |
   |--------------|-------------------------|------------------|-----------|----------------------|------------------------------|
   |![ ](pk.jpg)  | <b>FROM_SCENARIO_ID</b> | CHARACTER(32)    | Y         | From Scenario Id     | Id of the source scenario    |
   |![ ](pk.jpg)  | <b>TO_SCENARIO_ID</b>   | CHARACTER(32)    | Y         | To Scenario Id       | Id of the target scenario    |
 
 
 
\ingroup ddlStaticFlow
\author  SAS Institute Inc.
\date    2019
*/
 
CREATE TABLE &LIBREF..ATTRIBUTION_SCENARIO_MAP (
   FROM_SCENARIO_ID                    VARCHAR(32)    label = 'From Scenario Id',
   TO_SCENARIO_ID                      VARCHAR(32)    label = 'To Scenario Id',
   CONSTRAINT PRIM_KEY PRIMARY KEY (FROM_SCENARIO_ID, TO_SCENARIO_ID)
);
