/*
 Copyright (C) 2019 SAS Institute Inc. Cary, NC, USA
*/
 
/**
   \file
   \brief   This table contains the driving parameters for the Contractual Cash Flow Characteristics test (SPPI - Solely Payments of Principal and Interest).
   \details
 
 Refer \ref SPPIIntro "here" for general context and background
 
   |PK            |Variable                               |Type              |Not Null * |Relationships                            |Label                                  |Description                                                                      |
   |--------------|---------------------------------------|------------------|-----------|-----------------------------------------|---------------------------------------|---------------------------------------------------------------------------------|
   |![ ](pk.jpg)  | <b>REPORTING_DT</b>                   | NUMERIC(8)       | Y         | \link credit_portfolio.sas \endlink     | Reporting Date                        | SAS Date value                                                                  |
   |![ ](pk.jpg)  | <b>ENTITY_ID</b>                      | CHARACTER(32)    | N         | \link entity.sas \endlink               | Entity Identifier                     |                                                                                 |
   |![ ](pk.jpg)  | <b>INSTID</b>                         | CHARACTER(32)    | Y         |                                         | Instrument Identifier                 | Unique identifier for an instrument/transaction/account.                        |
   |              | SPPI_PRODUCT_TYPE_CD                  | CHARACTER(20)    | N         |                                         | SPPI Product Type                     |                                                                                 |
   |              | SPPI_PRODUCT_SUBTYPE_CD               | CHARACTER(20)    | N         |                                         | SPPI Product Sub Type                 |                                                                                 |
   |              | NON_RECOURSE_PROVISION_FLG            | CHARACTER(1)     | N         |                                         | Non Recourse Provision Flag           | Accepts either Y (yes) or N (no)                                                | 
   |              | MATURITY_CAP_INT_FLG                  | CHARACTER(1)     | N         |                                         | Maturity Cap Int Flag                 | Accepts either Y (yes) or N (no)                                                |
   |              | DEFERRAL_POSSIBLE_FLG                 | CHARACTER(1)     | N         |                                         | Deferral Possible Flag                | Accepts either Y (yes) or N (no)                                                |
   |              | INT_COMPOUNDING_FLG                   | CHARACTER(1)     | N         |                                         | Interest Compounding Flag             | Accepts either Y (yes) or N (no)                                                |
   |              | LOSSES_TO_HOLDER_FLG                  | CHARACTER(1)     | N         |                                         | Losses to Holder Flag                 | Accepts either Y (yes) or N (no)                                                |
   |              | INTEREST_BASE_OUTSTANDING_FLG         | CHARACTER(1)     | N         |                                         | Interest Base Outstanding Flag        | Accepts either Y (yes) or N (no)                                                |
   |              | INTEREST_PAYM_CANCELLABLE_FLG         | CHARACTER(1)     | N         |                                         | Interest Payment Cancellable Flag     | Accepts either Y (yes) or N (no)                                                |
   |              | INTEREST_PAYM_DEFERRABLE_FLG          | CHARACTER(1)     | N         |                                         | Interest Payment Deferrable Flag      | Accepts either Y (yes) or N (no)                                                |
   |              | DEFERRED_INT_PMNT_ACCRUE_FLG          | CHARACTER(1)     | N         |                                         | Deferred Interest Payment Accrue Flag | Accepts either Y (yes) or N (no)                                                |
   |              | CF_INDEXED_FLG                        | CHARACTER(1)     | N         |                                         | Cashflow Indexed Flag                 | Accepts either Y (yes) or N (no)                                                |
   |              | ZERO_CURVE_REF                        | CHARACTER(32)    | N         |                                         | Zero Curve Reference                  | Defaults to NA when not relevant, else must be a risk factor curve              |
   |              | INVERSE_FLOATING_FLG                  | CHARACTER(1)     | N         |                                         | Inverse Floating Flag                 | Accepts either Y (yes) or N (no)                                                |
   |              | FINANCIAL_LEVERAGE_FLG                | CHARACTER(1)     | N         |                                         | Financial Leverage Flag               | Accepts either Y (yes) or N (no)                                                |
   |              | INTEREST_EXT_FIXED_FLG                | CHARACTER(1)     | N         |                                         | Interest Ext Fixed Flag               | Accepts either Y (yes) or N (no)                                                |
   |              | INTEREST_EXT_FIXED_COM_FLG            | CHARACTER(1)     | N         |                                         | Interest Ext Fixed Com Flag           | Accepts either Y (yes) or N (no)                                                |
   |              | PREPAYMENT_POSSIBLE_FLG               | CHARACTER(1)     | N         |                                         | Prepayment Possible Flag              | Accepts either Y (yes) or N (no)                                                |
   |              | PREPAYMENT_AMT_CAP_INT_FLG            | CHARACTER(1)     | N         |                                         | Prepayment Amount Cap Int Flag        | Accepts either Y (yes) or N (no)                                                |
   |              | ORIGINATED_PREM_DISCOUNT_FLG          | CHARACTER(1)     | N         |                                         | Originated Prem Discount Flag         | Accepts either Y (yes) or N (no)                                                |
   |              | SIGNIFICANT_AMT_FLG                   | CHARACTER(1)     | N         |                                         | Significant Amount Flag               | Accepts either Y (yes) or N (no)                                                |
   |              | MATURITY_EXT_POSSIBLE_FLG             | CHARACTER(1)     | N         |                                         | Maturity Ext Possible Flag            | Accepts either Y (yes) or N (no)                                                |
   |              | INT_MARKET_RATE_FLG                   | CHARACTER(1)     | N         |                                         | Interest Market Rate Flag             | Accepts either Y (yes) or N (no)                                                |
   |              | MATURITY_EXT_CAP_INT_FLG              | CHARACTER(1)     | N         |                                         | Maturity Ext Cap Int Flag             | Accepts either Y (yes) or N (no)                                                |
   |              | SPPI_TEST                             | CHARACTER(15)    | N         |                                         | SPPI Test Result                      | SPPI Test Result, either PASSED, FAILED, or NOT_AVAILABLE                       |
   

   (*) indicates a not-nullable variable.
 
   \ingroup ddlFactPortfolio
   \author  SAS Institute Inc.
   \date    2016
*/

CREATE TABLE &LIBREF..PORTFOLIO_SPPI_DETAILS 
   (
    REPORTING_DT                     DATE           label = 'Reporting Date'         FORMAT = &DTFMT.,
    ENTITY_ID                        VARCHAR(32)    label = 'Entity ID',
    INSTID                           VARCHAR(64)    label = 'Instrument Identifier',
    WORKGROUP                        VARCHAR(32)    label = 'Workgroup',
    SPPI_PRODUCT_TYPE_CD             VARCHAR(20)    label = 'SPPI Product Type',
    SPPI_PRODUCT_SUBTYPE_CD          VARCHAR(20)    label = 'SPPI Product Sub Type',
    NON_RECOURSE_PROVISION_FLG       VARCHAR(1)     label = 'Non Recourse Provision Flag',
    MATURITY_CAP_INT_FLG             VARCHAR(1)     label = 'Maturity Cap Int Flag',
    DEFERRAL_POSSIBLE_FLG            VARCHAR(1)     label = 'Deferral Possible Flag',
    INT_COMPOUNDING_FLG              VARCHAR(1)     label = 'Interest Compounding Flag',
    LOSSES_TO_HOLDER_FLG             VARCHAR(1)     label = 'Losses to Holder Flag',
    INTEREST_BASE_OUTSTANDING_FLG    VARCHAR(1)     label = 'Interest Base Outstanding Flag',
    INTEREST_PAYM_CANCELLABLE_FLG    VARCHAR(1)     label = 'Interest Payment Cancellable Flag',
    INTEREST_PAYM_DEFERRABLE_FLG     VARCHAR(1)     label = 'Interest Payment Deferrable Flag',
    DEFERRED_INT_PMNT_ACCRUE_FLG     VARCHAR(1)     label = 'Deferred Interest Payment Accrue Flag',
    CF_INDEXED_FLG                   VARCHAR(1)     label = 'Cashflow Indexed Flag',
    ZERO_CURVE_REF                   VARCHAR(32)    label = 'Zero Curve Reference',
    INVERSE_FLOATING_FLG             VARCHAR(1)     label = 'Inverse Floating Flag',
    FINANCIAL_LEVERAGE_FLG           VARCHAR(1)     label = 'Financial Leverage Flag',
    INTEREST_EXT_FIXED_FLG           VARCHAR(1)     label = 'Interest Ext Fixed Flag',
    INTEREST_EXT_FIXED_COM_FLG       VARCHAR(1)     label = 'Interest Ext Fixed Com Flag',
    PREPAYMENT_POSSIBLE_FLG          VARCHAR(1)     label = 'Prepayment Possible Flag',
    PREPAYMENT_AMT_CAP_INT_FLG       VARCHAR(1)     label = 'Prepayment Amount Cap Int Flag',
    ORIGINATED_PREM_DISCOUNT_FLG     VARCHAR(1)     label = 'Originated Prem Discount Flag',
    SIGNIFICANT_AMT_FLG              VARCHAR(1)     label = 'Significant Amount Flag',
    MATURITY_EXT_POSSIBLE_FLG        VARCHAR(1)     label = 'Maturity Ext Possible Flag',
    INT_MARKET_RATE_FLG              VARCHAR(1)     label = 'Interest Market Rate Flag',
    MATURITY_EXT_CAP_INT_FLG         VARCHAR(1)     label = 'Maturity Ext Cap Int Flag',
    SPPI_TEST                        VARCHAR(15)    label = 'SPPI Test Result',
    CONSTRAINT PRIM_KEY PRIMARY KEY (REPORTING_DT, ENTITY_ID, INSTID)
   );
   
   
   
   