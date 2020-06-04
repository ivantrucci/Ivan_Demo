/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */

/*!
   \file
   \brief   Sample data for AGGREGATION_CONFIG.

   \details Sample data for AGGREGATION_CONFIG. For documentation and guidance please refer to the corresponding ddl file.

   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2018
*/

data WORK.aggregation_config;
   attrib
      SCHEMA_NAME          length = $150.
      SCHEMA_VERSION       length = $50.
      VARIABLE_NAME        length = $32.
      AGGREGATION_METHOD   length = $32.
      WEIGHT_VAR           length = $32.
   ;
   infile cards dsd delimiter = ',';
   input
      SCHEMA_NAME          :$char.
      SCHEMA_VERSION       :$char.
      VARIABLE_NAME        :$char.
      AGGREGATION_METHOD   :$char.
      WEIGHT_VAR           :$char.
   ;
   if(symexist("content_version")) then
      SCHEMA_VERSION = resolve(SCHEMA_VERSION);
      
datalines4;
IFRS9_CREDIT_RISK_DETAIL,&content_version.,PIT_PD,MEAN,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,LTV_RT,MEAN,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,LGD,MEAN,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,PD_12M,MEAN,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,PD_LIFETIME,MEAN,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,CURRENT_RT,MEAN,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,EFFECTIVE_INTEREST_RT,MEAN,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,MARGIN_RT,MEAN,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,DRAWN_PCT,MEAN,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,CREDIT_LIMIT_AMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,UNPAID_BALANCE_AMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,OFF_BALANCE_AMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,WRITE_OFF_AMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,NET_WRITE_OFF_AMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,RECOVERY_AMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,CUM_WRITE_OFF_AMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,CUM_RECOVERY_AMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,FEE_AMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,ACCRUED_INTEREST_AMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,POCI_PURCHASE_AMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,POCI_PAR_AMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,AMORTIZED_COST_AMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,ECL_LIFETIME,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,ECL_12M,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,ECL,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,PROVISION_EXPENSE_AMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,UNREALIZED_LOSS_THRU_INC_STMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,ALLOWANCE_AMT,SUM,
IFRS9_CREDIT_RISK_DETAIL,&content_version.,PARTIAL_WRITE_OFF_AMT,SUM,
;;;;
run;
