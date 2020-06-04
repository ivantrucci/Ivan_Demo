
/*
 Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/
 
/**
   \file
   \brief    Individual Adjustment table.
   \details  This table is used to apply individual adjustments which will be stored as movements.
 
   |PK            |Variable                               |Type              | Required? |Relationships                                   |Label                                       |Description                                                                                                                                                                                             |
   |--------------|---------------------------------------|------------------|-----------|------------------------------------------------|--------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
   |![ ](pk.jpg)  | <b>REPORTING_DT</b>                   | NUMERIC(8)       | Y         |                                                | Reporting Date                             | SAS Date value                                                                                                                                                                                         |
   |![ ](pk.jpg)  | <b>ENTITY_ID</b>                      | CHARACTER(32)    | Y         | \link entity.sas \endlink                      | Entity Identifier                          | \link entity.sas \endlink                                                                                                                                                                              |
   |![ ](pk.jpg)  | <b>INSTID</b>                         | CHARACTER(64)    | Y         | \link credit_portfolio.sas \endlink            | Instrument Identifier                      | Unique identifier for an instrument/transaction/account. The name of this column is required to be INSTID by SAS HP Risk.                                                                              |
   |              | MOVEMENT_TYPE_CD                      | CHARACTER(32)    | Y         |                                                | Movement Type Code                         | Movement type code from \link map_movement_type.sas \endlink                                                                                                                                           |
   |              | MOVEMENT_DESC                         | CHARACTER(100)   | Y         |                                                | Movement Description                       | Movement description to tag the movement for reporting purposes                                                                                                                                        |
   |              | ADJUSTMENT_TYPE                       | CHARACTER(10)    | Y         |                                                | Adjustment Type                            | Type of adjustment: ABSOLUTE, RELATIVE, INCREMENT (\link irm_apply_allocation_rules.sas \endlink)                                                                                                      |
   |              | ECL                                   | NUMERIC(8)       | N         |                                                | Adjustment for ECL (Staged)                | Adjustment amount to apply to ECL (Staged)                                                                                                                                                             |
   
   \ingroup ddlFactIndivAssessment
   \author  SAS Institute Inc.
   \date    2018
*/
   
CREATE TABLE &LIBREF..INDIVIDUAL_ADJUSTMENT (
   REPORTING_DT                     DATE           label = 'Reporting Date'            FORMAT = &DTFMT.,
   ENTITY_ID                        VARCHAR(32)    label = 'Entity ID',
   INSTID                           VARCHAR(64)    label = 'Instrument Identifier',
   MOVEMENT_TYPE_CD                 VARCHAR(32)    label = 'Movement Type Code',
   MOVEMENT_DESC                    VARCHAR(100)   label = 'Movement Description',
   ADJUSTMENT_TYPE                  VARCHAR(10)    label = 'Adjustment Type',
   ECL                              NUMERIC(8)     label = 'Adjustment for ECL (Staged)',
   CONSTRAINT PRIM_KEY PRIMARY KEY (REPORTING_DT, ENTITY_ID, INSTID)
);
