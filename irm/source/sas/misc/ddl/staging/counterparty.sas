/*
 Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/
 
/**
   \file
   \brief   Counterparty table.
   \details
 
   |PK            |Variable                               |Type              | Required? |Relationships                                |Label                                       |Description                                                                                                                                                                                             |
   |--------------|---------------------------------------|------------------|-----------|---------------------------------------------|--------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
   |![ ](pk.jpg)  | <b>REPORTING_DT</b>                   | NUMERIC(8)       | Y         |                                             | Reporting Date                             | SAS Date value                                                                                                                                                                                         |
   |![ ](pk.jpg)  | <b>COUNTERPARTYID</b>                 | CHARACTER(32)    | N         | \link counterparty.sas \endlink             | Counterparty Id                            | Unique Identifier for the Counterparty                                                                                                                                                                 |
   |              | COUNTERPARTYTYPE                      | CHARACTER(100)   | N         |                                             | Counterparty Type                          | Counterparty Type                                                                                                                                                                                      |
   |              | SECTOR_DESC                           | CHARACTER(100)   | N         |                                             | Sector Description                         | Description of the Economic Sector of Activity of the counterparty of the contract (reporting dimension)                                                                                               |
   |              | DEBT_TO_INCOME_RT                     | CHARACTER(100)   | N         |                                             | Debt-To-Income Ratio                       | Debt-To-Income Ratio                                                                                                                                                                                   |
   |              | DELINQUENCY_FLG                       | CHARACTER(3)     | N         |                                             | Delinquency Flag                           | Indicates delinquency (Y) or not (N)                                                                                                                                                                   |
   |              | EVER_DELINQUENT_FLG                   | CHARACTER(32)    | N         |                                             | Ever Delinquent Flag                       | Flag indicating whether there has ever been a delinquency                                                                                                                                              |
   |              | MOST_RECENT_DELINQUENCY_DT            | NUMERIC(8)       | N         |                                             | Delinquency Date                           | Date of most recent delinquency                                                                                                                                                                        |
   |              | FINANCIAL_DIFFICULTIES_FLG            | CHARACTER(3)     | N         |                                             | Financial Difficulties Flag                | Identify counterparties that are experiencing financial difficulties (ASU 2016-13 326-20-50-20)                                                                                                        |
   |              | RATING_AGENCY                         | CHARACTER(32)    | N         |                                             | Rating Agency                              | Credit Rating Agency (i.e. FICO, EQUIFAX, S&P)                                                                                                                                                         |
   |              | RATING_GRADE                          | CHARACTER(32)    | N         |                                             | Rating Grade/Score                         | Credit Rating Grade/Score. Example: 750 (FICO), AAA (S&P), etc.                                                                                                                                        |
   |              | STD_RATING_GRADE                      | CHARACTER(32)    | N         |                                             | Standardised Rading Grade                  | A standardized rating scale level is assigned to each loan (either retail or commercial) so that consistent reporting can be done across the entire portfolio. Mapping is required in order to assign a rating scale level to a given credit score (in case of retail) or rating grade (in case of commercial).<br>Closed List Values:<br> 1 - Largely Risk Free <br> - <i>2 - Minimal Risk</i> <br> - <i>3 - Modest Risk</i> <br> - <i>4 - Bankable</i> <br> - <i>5 - Additional Review</i> <br> - <i>6 - Special Mention</i> <br> - <i>7 - Sub-Standard</i> <br> - <i>8 - Doubtful</i> <br> - <i>9 - Loss</i>  |
   |              | TTC_PD                                | NUMERIC(8)       | N         |                                             | TTC PD                                     | Through-The-Cycle Probablilty of Default                                                                                                                                                               |
   |              | PIT_PD                                | NUMERIC(8)       | N         |                                             | PIT PD                                     | Point-In-Time Probablilty of Default                                                                                                                                                                   |


   \ingroup ddlFactCreditRisk
   \author  SAS Institute Inc.
   \date    2018
*/
   
CREATE TABLE &LIBREF..COUNTERPARTY (
   REPORTING_DT                     DATE           label = 'Reporting Date'         FORMAT = &DTFMT.,
   COUNTERPARTYID                   VARCHAR(32)    label = 'Counterparty Id',
   COUNTERPARTYTYPE                 VARCHAR(100)   label = 'Counterparty Type',
   SECTOR_DESC                      VARCHAR(100)   label = 'Sector Description',
   DEBT_TO_INCOME_RT                NUMERIC(8)     label = 'Debt-To-Income Ratio',
   DELINQUENCY_FLG                  VARCHAR(3)     label = 'Delinquency Flag',
   EVER_DELINQUENT_FLG              VARCHAR(3)     label = 'Ever Delinquent Flag',
   MOST_RECENT_DELINQUENCY_DT       DATE           label = 'Most Recent Delinquency Date'   FORMAT = &DTFMT.,
   FINANCIAL_DIFFICULTIES_FLG       VARCHAR(3)     label = 'Financial Difficulties Flag',
   RATING_AGENCY                    VARCHAR(32)    label = 'Rating Agency',
   RATING_GRADE                     VARCHAR(32)    label = 'Rating Grade',
   STD_RATING_GRADE                 VARCHAR(32)    label = 'Standardised Rating Grade',
   TTC_PD                           NUMERIC(8)     label = 'TTC PD',
   PIT_PD                           NUMERIC(8)     label = 'PIT PD',
   CONSTRAINT PRIM_KEY PRIMARY KEY (REPORTING_DT, COUNTERPARTYID)
);
