/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */

/*!
   \file
   \brief   Sample data for CALCULATION_CONFIG.

   \details Sample data for CALCULATION_CONFIG. For documentation and guidance please refer to the corresponding ddl file.

   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2018
*/

data WORK.calculation_config;
   attrib
      WORKGROUP               length = $32.                      
      MODELING_SYSTEM         length = $150.       
      ANALYSIS_TYPE           length = $32.       
      MAP_TYPE                length = $100.
      PREV_PERIOD_VAR         length = $32.
      PREV_PERIOD_VAR_RENAME  length = $32.
      TARGET_VAR_NAME         length = $32.         
      EXPRESSION_TXT          length = $4096.
      MAPPING_DESC            length = $1024.
      TARGET_VAR_LENGTH       length = $32.
      TARGET_VAR_LABEL        length = $150.
      TARGET_VAR_FMT          length = $32.
   ;
   infile cards dsd delimiter = ',';
   input
      WORKGROUP               :$char.                     
      MODELING_SYSTEM         :$char.       
      ANALYSIS_TYPE           :$char.      
      MAP_TYPE                :$char.
      PREV_PERIOD_VAR         :$char.
      PREV_PERIOD_VAR_RENAME  :$char.
      TARGET_VAR_NAME         :$char.       
      EXPRESSION_TXT          :$char.
      MAPPING_DESC            :$char.
      TARGET_VAR_LENGTH       :$char.
      TARGET_VAR_LABEL        :$char.
      TARGET_VAR_FMT          :$char.
   ;
   if(symexist("content_version")) then
      MODELING_SYSTEM = resolve(MODELING_SYSTEM);

datalines4;
*,*,*,CREDIT_RISK_DETAIL,CUM_WRITE_OFF_AMT,PREV_CUM_WRITE_OFF_AMT,WRITE_OFF_AMT,"=sum(CUM_WRITE_OFF_AMT, -PREV_CUM_WRITE_OFF_AMT)",(Current Period) Write-off,8.,(Current Period) Write-off,
*,*,*,CREDIT_RISK_DETAIL,CUM_RECOVERY_AMT,PREV_CUM_RECOVERY_AMT,RECOVERY_AMT,"=sum(CUM_RECOVERY_AMT, -PREV_CUM_RECOVERY_AMT)",(Current Period) Recovery Amount,8.,(Current Period) Recovery Amount,
*,*,*,CREDIT_RISK_DETAIL,,,NET_WRITE_OFF_AMT,"=sum(WRITE_OFF_AMT, -RECOVERY_AMT)",Net Write Off Amount,8.,Net Write Off Amount,
*,*,*,CREDIT_RISK_DETAIL,ECL,PREV_ECL,PROVISION_EXPENSE_AMT,"=sum(ECL, -PREV_ECL)",Provision Expense Amount,8.,Provision Expense Amount,
*,*,*,CREDIT_RISK_DETAIL,,,PREV_ALLOWANCE_AMT,"=coalesce(PREV_ALLOWANCE_AMT, INIT_ALLOWANCE_AMT); drop INIT_ALLOWANCE_AMT",Previous Period Allowance Amount,8.,Previous Period Allowance Amount,
*,*,*,CREDIT_RISK_DETAIL,ALLOWANCE_AMT,PREV_ALLOWANCE_AMT,ALLOWANCE_AMT,"=sum(PREV_ALLOWANCE_AMT, PROVISION_EXPENSE_AMT, RECOVERY_AMT, -WRITE_OFF_AMT, 0)",Allowance Amount,8.,Allowance Amount,
*,*,*,CREDIT_RISK_DETAIL,,,NOMINAL_AMT,"=sum(OFF_BALANCE_AMT, UNPAID_BALANCE_AMT)",Nominal Amount,8.,Nominal Amount,
*,*,*,CREDIT_RISK_DETAIL,,,DRAWN_PCT,"=divide(UNPAID_BALANCE_AMT, CREDIT_LIMIT_AMT)",Drawn Percentage,8.,Drawn Percentage,
*,*,*,CREDIT_RISK_DETAIL,ECL_STAGE,PREV_ECL_STAGE,,,,,,
*,*,*,CREDIT_RISK_DETAIL,,,PARTIAL_WRITE_OFF_AMT,"=ifn(round(CUM_WRITE_OFF_AMT)^=round(UNPAID_BALANCE_AMT) and IRRECOVERABLE_FLG='N',CUM_WRITE_OFF_AMT,0)",Partial Write Off Amount,8.,Partial Write Off Amount,
;;;;
run;
