
/*
 Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/
 
/**
   \file
   \brief   Cashflow table
   \details
 
   |PK            |Variable                 |Type              | Required? |Relationships                                |Label                     |Description                                                   |
   |--------------|-------------------------|------------------|-----------|---------------------------------------------|--------------------------|--------------------------------------------------------------|
   |![ ](pk.jpg)  | <b>REPORTING_DT</b>     | NUMERIC(8)       | Y         |                                             | Reporting Date           | SAS Date value                                               |
   |![ ](pk.jpg)  | <b>ENTITY_ID</b>        | CHARACTER(32)    | Y         | \link entity.sas \endlink                   | Entity Id                | Entity Identifier                                            |
   |![ ](pk.jpg)  | <b>INSTID</b>           | CHARACTER(64)    | Y         | \link credit_portfolio.sas \endlink         | Instrument Identifier    | Unique identifier for an instrument/transaction/account.     |
   |![ ](pk.jpg)  | <b>CASHFLOW_LEG</b>     | CHARACTER(32)    | Y         |                                             | Cashflow Leg             | Cashflow Leg                                                 |   
   |![ ](pk.jpg)  | <b>CASHFLOW_DT</b>      | NUMERIC(8)       | Y         |                                             | Cashflow Date            | Cashflow Date                                                |   
   |              | CASHFLOW_AMT            | NUMERIC(8)       | N         |                                             | Cashflow Amount          | Cashflow Amount                                              |   


+ Sample values for <b>CASHFLOW_LEG</b>:
   + PRINCIPAL: Contractual principal payment amount
   + INTEREST:  Contractual interest payment amount
   + EXPECTED:  Expected cash flows


   \ingroup ddlFactCreditRisk
   \author  SAS Institute Inc.
   \date    2018
*/
   
CREATE TABLE &LIBREF..CASHFLOW (
   REPORTING_DT         DATE           label = 'Reporting Date'         FORMAT = &DTFMT.,
   ENTITY_ID            VARCHAR(32)    label = 'Entity Id',
   INSTID               VARCHAR(64)    label = 'Instrument Identifier',
   CASHFLOW_LEG         VARCHAR(32)    label = 'Cashflow Leg',
   CASHFLOW_DT          DATE           label = 'Cashflow Date'          FORMAT = &DTFMT.,
   CASHFLOW_AMT         NUMERIC(8)     label = 'Cashflow Amount',  
   CONSTRAINT PRIM_KEY PRIMARY KEY (REPORTING_DT, ENTITY_ID, INSTID, CASHFLOW_LEG, CASHFLOW_DT)
);
