/*
 Copyright (C) 2017 SAS Institute Inc. Cary, NC, USA
*/
 
/**
   \file
   \brief   The SAS IFRS9/CECL solution allows users to perform calculations and generate reports for more than one financial entity. To track and manage these relationships, this table will provide entity information.
   \details
 
   |PK            |Variable                    |Type              | Required? |Relationships |Label                    |Description                                                |
   |--------------|----------------------------|------------------|-----------|--------------|-------------------------|-----------------------------------------------------------|
   |![ ](pk.jpg)  | <b>REPORTING_DT</b>        | NUMERIC(8)       | Y         |              | Reporting Date          | SAS Date value                                            |
   |![ ](pk.jpg)  | <b>ENTITY_ID</b>           | CHARACTER(32)    | Y         |              | Entity Id               | Unique Entity identifier                                  |
   |              | ENTITY_NM                  | CHARACTER(40)    | Y         |              | Entity Name             | Entity Name                                               |
   |              | ENTITY_DESC                | CHARACTER(100)   | Y         |              | Entity Description      | Entity Description                                        |
   |              | COUNTRY_CD                 | CHARACTER(3)     | N         |              | Country Code            | Country Code                                              |
   |              | ENTITY_ROLE_CD             | CHARACTER(5)     | N         |              | Entity Role Code        | Entity Role: SOLO or GROUP                                |
   |              | LEGAL_ENTITY_FLG           | CHARACTER(1)     | N         |              | Legal Entity Flag       | Flag (Y/N). Specifies whether this is a legal entity      |
   |              | GROUP_ID                   | CHARACTER(32)    | N         |              | Group Identifier        | Parent Entity Identifier                                  |
   |              | REPORTING_CURRENCY_CD      | CHARACTER(3)     | Y         |              | Reporting Currency      | Reporting currency code                                   |
   
   \ingroup ddlFactEntity
   \author  SAS Institute Inc.
   \date    2016
*/
 
CREATE TABLE &LIBREF..ENTITY(
   REPORTING_DT              DATE                      label = 'Reporting Date'         FORMAT = &DTFMT.,
   ENTITY_ID                 VARCHAR(32)               label = 'Entity Id',
   ENTITY_ID                 VARCHAR(32)               label = 'Entity Id',
   ENTITY_NM                 VARCHAR(120)              label = 'Entity Name',
   ENTITY_DESC               VARCHAR(300)              label = 'Entity Description',
   COUNTRY_CD                VARCHAR(9)                label = 'Country Code',
   ENTITY_ROLE_CD            VARCHAR(15)    NOT NULL   label = 'Entity Role Code',
   LEGAL_ENTITY_FLG          VARCHAR(3)                label = 'Legal Entity Flag',
   GROUP_ID                  VARCHAR(32)               label = 'Group Id',
   REPORTING_CURRENCY_CD     VARCHAR(9)     NOT NULL   label = 'Reporting Currency',
   CONSTRAINT PRIM_KEY PRIMARY KEY (REPORTING_DT, ENTITY_ID)
);


