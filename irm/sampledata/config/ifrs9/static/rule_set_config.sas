data WORK.rule_set_config;
   attrib
      RULE_SET_GROUP_ID       length = $100.
      PRIMARY_KEY             length = $10000.
      RULE_ID                 length = $32.
      RULE_NAME               length = $100.
      RULE_DESC               length = $100.
      RULE_COMPONENT          length = $10.
      OPERATOR                length = $10.
      PARENTHESIS             length = $1.
      COLUMN_NM               length = $32.
      RULE_TYPE               length = $100.
      RULE_DETAILS            length = $4000.
      MESSAGE_TXT             length = $4096.
      LOOKUP_TABLE            length = $40.
      LOOKUP_KEY              length = $10000.
      LOOKUP_DATA             length = $10000.
      AGGR_VAR_NM             length = $32.
      AGGR_EXPRESSION_TXT     length = $10000.
      AGGR_GROUP_BY_VARS      length = $10000.
      AGGREGATED_RULE_FLG     length = $1.
      RULE_REPORTING_LEV1     length = $1024.
      RULE_REPORTING_LEV2     length = $1024.
      RULE_REPORTING_LEV3     length = $1024.
      RULE_WEIGHT             length = 8.
   ;
   infile cards dsd delimiter = ',';
   input 
      RULE_SET_GROUP_ID       :$char.
      PRIMARY_KEY             :$char.
      RULE_ID                 :$char.
      RULE_NAME               :$char.
      RULE_DESC               :$char.
      RULE_COMPONENT          :$char.
      OPERATOR                :$char.
      PARENTHESIS             :$char.
      COLUMN_NM               :$char.
      RULE_TYPE               :$char.
      RULE_DETAILS            :$char.
      MESSAGE_TXT             :$char.
      LOOKUP_TABLE            :$char.
      LOOKUP_KEY              :$char.
      LOOKUP_DATA             :$char.
      AGGR_VAR_NM             :$char.
      AGGR_EXPRESSION_TXT     :$char.
      AGGR_GROUP_BY_VARS      :$char.
      AGGREGATED_RULE_FLG     :$char.
      RULE_REPORTING_LEV1     :$char.
      RULE_REPORTING_LEV2     :$char.
      RULE_REPORTING_LEV3     :$char.
      RULE_WEIGHT
   ;
datalines4;
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_01,Check Missing Currency,Check Missing Currency,Condition,,,CURRENCY,MISSING,,CURRENCY cannot be missing.,,,,,,,,Completeness,Currency,Missing,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_02,Check Currency Length,Check Currency Length,Condition,,,CURRENCY,NOT_FIXED_LENGTH,3,CURRENCY is not a 3-character variable.,,,,,,,,Accuracy & Integrity,Currency,Fixed Length,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_03,Check Collateral Flag,Check Collateral Flag,Condition,,,COLLATERAL_SUPPORT_FLG,NOT_LIST,"""Y"", ""N""","COLLATERAL_SUPPORT_FLG must be set to either ""Y"" or ""N"".",,,,,,,,Accuracy & Integrity,Counterparty Status,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_03,Check Collateral Flag,Check Collateral Flag,Action,,,COLLATERAL_SUPPORT_FLG,SET,"""N""",,,,,,,,,Accuracy & Integrity,Counterparty Status,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_04,Check Financial Difficulties Flag,Check Financial Difficulties Flag,Condition,,,FINANCIAL_DIFFICULTIES_FLG,NOT_LIST,"""Y"", ""N""","FINANCIAL_DIFFICULTIES_FLG must be set to either ""Y"" or ""N"".",,,,,,,,Accuracy & Integrity,Counterparty Status,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_04,Check Financial Difficulties Flag,Check Financial Difficulties Flag,Action,,,FINANCIAL_DIFFICULTIES_FLG,SET,"""N""",,,,,,,,,Accuracy & Integrity,Counterparty Status,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_05,Check Unconditionally Cancelable Flag,Check Unconditionally Cancelable Flag,Condition,,,UNCONDITIONALLY_CANCELABLE_FLG,NOT_LIST,"""Y"", ""N""","UNCONDITIONALLY_CANCELABLE_FLG must be set to either ""Y"" or ""N"".",,,,,,,,Accuracy & Integrity,Instrument Features,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_05,Check Unconditionally Cancelable Flag,Check Unconditionally Cancelable Flag,Action,,,UNCONDITIONALLY_CANCELABLE_FLG,SET,"""N""",,,,,,,,,Accuracy & Integrity,Instrument Features,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_06,Check Related Party Flag,Check Related Party Flag,Condition,,,RELATED_PARTY_FLG,NOT_LIST,"""Y"", ""N""","RELATED_PARTY_FLG must be set to either ""Y"" or ""N"".",,,,,,,,Accuracy & Integrity,Counterparty Status,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_06,Check Related Party Flag,Check Related Party Flag,Action,,,RELATED_PARTY_FLG,SET,"""N""",,,,,,,,,Accuracy & Integrity,Counterparty Status,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_07,Check TDR Flag,Check TDR Flag,Condition,,,TDR_FLG,NOT_LIST,"""Y"", ""N""","TDR_FLG must be set to either ""Y"" or ""N"".",,,,,,,,Accuracy & Integrity,Credit Deterioration Attributes,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_07,Check TDR Flag,Check TDR Flag,Action,,,TDR_FLG,SET,"""N""",,,,,,,,,Accuracy & Integrity,Credit Deterioration Attributes,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_08,Check POCI Flag,Check POCI Flag,Condition,,,POCI_FLG,NOT_LIST,"""Y"", ""N""","POCI_FLG must be set to either ""Y"" or ""N"".",,,,,,,,Accuracy & Integrity,Credit Deterioration Attributes,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_08,Check POCI Flag,Check POCI Flag,Action,,,POCI_FLG,SET,"""N""",,,,,,,,,Accuracy & Integrity,Credit Deterioration Attributes,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_09,Check Ever Delinquent Flag,Check Ever Delinquent Flag,Condition,,,EVER_DELINQUENT_FLG,NOT_LIST,"""Y"", ""N""","EVER_DELINQUENT_FLG must be set to either ""Y"" or ""N"".",,,,,,,,Accuracy & Integrity,Counterparty Status,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_09,Check Ever Delinquent Flag,Check Ever Delinquent Flag,Action,,,EVER_DELINQUENT_FLG,SET,"""N""",,,,,,,,,Accuracy & Integrity,Counterparty Status,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_10,Check Delinquency Flag,Check Delinquency Flag,Condition,,,DELINQUENCY_FLG,NOT_LIST,"""Y"", ""N""","DELINQUENCY_FLG must be set to either ""Y"" or ""N"".",,,,,,,,Accuracy & Integrity,Counterparty Status,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_10,Check Delinquency Flag,Check Delinquency Flag,Action,,,DELINQUENCY_FLG,SET,"""N""",,,,,,,,,Accuracy & Integrity,Counterparty Status,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_11,Check Pending Offer Flag,Check Pending Offer Flag,Condition,,,PENDING_OFFER_FLG,NOT_LIST,"""Y"", ""N""","PENDING_OFFER_FLG must be set to either ""Y"" or ""N"".",,,,,,,,Accuracy & Integrity,Instrument Features,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_11,Check Pending Offer Flag,Check Pending Offer Flag,Action,,,PENDING_OFFER_FLG,SET,"""N""",,,,,,,,,Accuracy & Integrity,Instrument Features,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_12,Check Drawdown Period Flag,Check Drawdown Period Flag,Condition,,,DRAWDOWN_PERIOD_FLG,NOT_LIST,"""Y"", ""N""","DRAWDOWN_PERIOD_FLG must be set to either ""Y"" or ""N"".",,,,,,,,Accuracy & Integrity,Credit Deterioration Attributes,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_12,Check Drawdown Period Flag,Check Drawdown Period Flag,Action,,,DRAWDOWN_PERIOD_FLG,SET,"""N""",,,,,,,,,Accuracy & Integrity,Credit Deterioration Attributes,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_13,Check Revolving Flag,Check Revolving Flag,Condition,,,REVOLVING_FLG,NOT_LIST,"""Y"", ""N""","REVOLVING_FLG must be set to either ""Y"" or ""N"".",,,,,,,,Accuracy & Integrity,Instrument Features,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_13,Check Revolving Flag,Check Revolving Flag,Action,,,REVOLVING_FLG,SET,"""N""",,,,,,,,,Accuracy & Integrity,Instrument Features,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_14,Check Guarantee Flag,Check Guarantee Flag,Condition,,,ISSUED_GUARANTEE_FLG,NOT_LIST,"""Y"", ""N""","ISSUED_GUARANTEE_FLG must be set to either ""Y"" or ""N"".",,,,,,,,Accuracy & Integrity,Instrument Features,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_14,Check Guarantee Flag,Check Guarantee Flag,Action,,,ISSUED_GUARANTEE_FLG,SET,"""N""",,,,,,,,,Accuracy & Integrity,Instrument Features,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_15,Check Day Basis Code,Check Day Basis Code,Condition,,,DAY_BASIS_CD,NOT_LIST,"""30/360"", ""ACT/360"", ""365"", ""ACT/ACT""","DAY_BASIS_CD must be set to either ""30/360"" ""ACT/360"" ""365"" or ""ACT/ACT"".",,,,,,,,Accuracy & Integrity,Instrument Features,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_15,Check Day Basis Code,Check Day Basis Code,Action,,,DAY_BASIS_CD,SET,"""ACT/ACT""",,,,,,,,,Accuracy & Integrity,Instrument Features,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_16,Check Interest Type Code,Check Interest Type Code,Condition,,,INTEREST_RATE_TYPE,NOT_LIST,"""Fixed"", ""Variable"", ""ARM"", ""Hybrid""","INTEREST_RATE_TYPE must be set to either ""Fixed"" or ""Variable"" or ""ARM"" or ""Hybrid"".",,,,,,,,Accuracy & Integrity,Instrument Features,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_17,Check Payment Type Code,Check Payment Type Code,Condition,,,PAYMENT_TYPE_CD,NOT_LIST,"""Level Pay"", ""Straight Line"", ""Bullet""","PAYMENT_TYPE_CD must be set to either ""Level Pay"" or ""Straight Line"" or ""Bullet"".",,,,,,,,Accuracy & Integrity,Instrument Features,Not In List,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_18,Check Missing Origination Date,Check Missing Origination Date,Condition,,,ORIGINATION_DT,MISSING,,ORIGINATION_DT cannot be missing.,,,,,,,,Completeness,Instrument Features,Missing,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_19,Check Missing Maturity Date,Check Missing Maturity Date,Condition,,,MATURITY_DT,MISSING,,MATURITY_DT cannot be missing.,,,,,,,,Completeness,Instrument Features,Missing,1
CREDIT_PORTFOLIO,ENTITY_ID INSTID INSTTYPE,PTF_RULE_20,Check Missing EIR,Check Missing EIR,Condition,,,EFFECTIVE_INTEREST_RT,MISSING,,EFFECTIVE_INTEREST_RT cannot be missing.,,,,,,,,Completeness,Instrument Features,Missing,1
CREDIT_RISK_DETAIL,INSTID,ECL_STAGE_RULE_01,Set Stage 1,Initialize all loans to Stage 1,Condition,,,INSTID,NOT_MISSING,,,,,,,,,,,,,1
CREDIT_RISK_DETAIL,INSTID,ECL_STAGE_RULE_01,Set Stage 1,Set ECL Stage 1,Action,,,ECL_STAGE,SET,"""Stage 1""",,,,,,,,,,,,1
CREDIT_RISK_DETAIL,INSTID,ECL_STAGE_RULE_02,Set Stage 2,Check for loans with a credit state higher than a threshold value,Condition,,,CREDIT_STATE,>,5,,,,,,,,,,,,1
CREDIT_RISK_DETAIL,INSTID,ECL_STAGE_RULE_02,Set Stage 2,Check for loans with a credit state deterioration (since origination) higher than a threshold value,Condition,OR,,CREDIT_STATE,>=,ORIG_CREDIT_STATE + 2,,,,,,,,,,,,1
CREDIT_RISK_DETAIL,INSTID,ECL_STAGE_RULE_02,Set Stage 2,Check if the 12 month PD is deteriorating since origination,Condition,OR,(,PD_12M,>=,ORIG_PIT_PD + 0.003,,,,,,,,,,,,1
CREDIT_RISK_DETAIL,INSTID,ECL_STAGE_RULE_02,Set Stage 2,Check if the 12 month PD is above a certain threshold,Condition,AND,),PD_12M,>=,0.375,,,,,,,,,,,,1
CREDIT_RISK_DETAIL,INSTID,ECL_STAGE_RULE_02,Set Stage 2,Set ECL Stage 2,Action,,,ECL_STAGE,SET,"""Stage 2""",,,,,,,,,,,,1
CREDIT_RISK_DETAIL,INSTID,ECL_STAGE_RULE_03,Set Stage 3,Check for default credit state,Condition,,,CREDIT_STATE,=,9,,,,,,,,,,,,1
CREDIT_RISK_DETAIL,INSTID,ECL_STAGE_RULE_03,Set Stage 3,Check for default PD value,Condition,OR,,PD_12M,=,1,,,,,,,,,,,,1
CREDIT_RISK_DETAIL,INSTID,ECL_STAGE_RULE_03,Set Stage 3,Check for default flag,Condition,OR,,DELINQUENCY_FLG,=,"""Y""",,,,,,,,,,,,1
CREDIT_RISK_DETAIL,INSTID,ECL_STAGE_RULE_03,Set Stage 3,Set ECL Stage 3,Action,,,ECL_STAGE,SET,"""Stage 3""",,,,,,,,,,,,1
CREDIT_RISK_DETAIL,INSTID,ECL_STAGE_RULE_04,Set ECL,Check Stage,Condition,,,ECL_STAGE,NOT_MISSING,,,,,,,,,,,,,1
CREDIT_RISK_DETAIL,INSTID,ECL_STAGE_RULE_04,Set ECL,Set ECL,Action,,,ECL,SET,"ifn(ECL_STAGE = ""Stage 1"", ECL_12M, ECL_LIFETIME)",,,,,,,,,,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_01,A.0 Initialize SPPI Outcome,Set the SPPI outcome to a default value,Action,,,SPPI_TEST,SET,"""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_01,A.0 Initialize SPPI Outcome,Set the SPPI outcome to a default value,Condition,,,SPPI_PRODUCT_TYPE_CD,=,"""""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_02,A.1 Debt Instrument,Verify whether the position pertains to a debt instrument,Action,,,SPPI_TEST,SET,"""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_02,A.1 Debt Instrument,Verify whether the position pertains to a debt instrument,Condition,,,SPPI_PRODUCT_TYPE_CD,NOT_LIST,"""DEBT""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_02,A.1 Debt Instrument,Verify whether the position pertains to a debt instrument,Condition,AND,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_03,A.4.1 Non-Recourse - Non-Recourse condition,Verify whether there exists a non-recourse condition that gives rise to non-SPPI cashflows,Action,,,SPPI_TEST,SET,"""FAILED""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_03,A.4.1 Non-Recourse - Non-Recourse condition,Verify whether there exists a non-recourse condition that gives rise to non-SPPI cashflows,Condition,,,NON_RECOURSE_PROVISION_FLG,=,"""Y""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_03,A.4.1 Non-Recourse - Non-Recourse condition,Verify whether there exists a non-recourse condition that gives rise to non-SPPI cashflows,Condition,AND,,SPPI_PRODUCT_TYPE_CD,=,"""DEBT""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_03,A.4.1 Non-Recourse - Non-Recourse condition,Verify whether there exists a non-recourse condition that gives rise to non-SPPI cashflows,Condition,AND,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_04,B.1 Payment at Maturity,Verify whether the payments made at maturity satisfy the conditions of the SPPI test,Action,,,SPPI_TEST,SET,"""FAILED""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_04,B.1 Payment at Maturity,Verify whether the payments made at maturity satisfy the conditions of the SPPI test,Condition,,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_04,B.1 Payment at Maturity,Verify whether the payments made at maturity satisfy the conditions of the SPPI test,Condition,AND,,MATURITY_CAP_INT_FLG,=,"""N""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_04,B.1 Payment at Maturity,Verify whether the payments made at maturity satisfy the conditions of the SPPI test,Condition,AND,,DEFERRAL_POSSIBLE_FLG,=,"""""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_04,B.1 Payment at Maturity,Verify whether the payments made at maturity satisfy the conditions of the SPPI test,Condition,AND,,INT_COMPOUNDING_FLG,=,"""""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_04,B.1 Payment at Maturity,Verify whether the payments made at maturity satisfy the conditions of the SPPI test,Condition,AND,,LOSSES_TO_HOLDER_FLG,=,"""""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_05,B.2 Is interest being compouned in case of deferrals,Verify wheter interest is being compounded should for a reaseon the payment at maturity be deferred,Action,,,SPPI_TEST,SET,"""FAILED""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_05,B.2 Is interest being compouned in case of deferrals,Verify wheter interest is being compounded should for a reaseon the payment at maturity be deferred,Condition,,(,MATURITY_CAP_INT_FLG,=,"""N""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_05,B.2 Is interest being compouned in case of deferrals,Verify wheter interest is being compounded should for a reaseon the payment at maturity be deferred,Condition,OR,,DEFERRAL_POSSIBLE_FLG,=,"""Y""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_05,B.2 Is interest being compouned in case of deferrals,Verify wheter interest is being compounded should for a reaseon the payment at maturity be deferred,Condition,OR,),INT_COMPOUNDING_FLG,=,"""N""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_05,B.2 Is interest being compouned in case of deferrals,Verify wheter interest is being compounded should for a reaseon the payment at maturity be deferred,Condition,AND,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_06,B.3 Can losses be imposed on creditors,Verify whether any losses can be imposed on holders of the instruments,Action,,,SPPI_TEST,SET,"""FAILED""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_06,B.3 Can losses be imposed on creditors,Verify whether any losses can be imposed on holders of the instruments,Condition,,(,MATURITY_CAP_INT_FLG,=,"""Y""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_06,B.3 Can losses be imposed on creditors,Verify whether any losses can be imposed on holders of the instruments,Condition,OR,,LOSSES_TO_HOLDER_FLG,=,"""N""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_06,B.3 Can losses be imposed on creditors,Verify whether any losses can be imposed on holders of the instruments,Condition,OR,,DEFERRAL_POSSIBLE_FLG,=,"""""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_06,B.3 Can losses be imposed on creditors,Verify whether any losses can be imposed on holders of the instruments,Condition,OR,),INT_COMPOUNDING_FLG,=,"""""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_06,B.3 Can losses be imposed on creditors,Verify whether any losses can be imposed on holders of the instruments,Condition,AND,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_07,D.1 Is interest calculated on the outstanding debt?,Verify whether the interest is being calculated on the outstanding debt,Action,,,SPPI_TEST,SET,"""FAILED""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_07,D.1 Is interest calculated on the outstanding debt?,Verify whether the interest is being calculated on the outstanding debt,Condition,,,INTEREST_BASE_OUTSTANDING_FLG,=,"""N""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_07,D.1 Is interest calculated on the outstanding debt?,Verify whether the interest is being calculated on the outstanding debt,Condition,AND,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_08,D.2 Are interest payments cancellable?,Verify whether the payments of interest can be cancelled,Action,,,SPPI_TEST,SET,"""FAILED""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_08,D.2 Are interest payments cancellable?,Verify whether the payments of interest can be cancelled,Condition,,,INTEREST_PAYM_CANCELLABLE_FLG,=,"""Y""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_08,D.2 Are interest payments cancellable?,Verify whether the payments of interest can be cancelled,Condition,AND,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_09,D.3 Are interest payments deferrable?,Verify whether the payments of interest can be deferred,Action,,,SPPI_TEST,SET,"""FAILED""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_09,D.3 Are interest payments deferrable?,Verify whether the payments of interest can be deferred,Condition,,,INTEREST_PAYM_DEFERRABLE_FLG,=,"""Y""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_09,D.3 Are interest payments deferrable?,Verify whether the payments of interest can be deferred,Condition,AND,,DEFERRED_INT_PMNT_ACCRUE_FLG,=,"""N""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_09,D.3 Are interest payments deferrable?,Verify whether the payments of interest can be deferred,Condition,AND,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_10,D.4 Base of floating interest rate,Verify whether the base of the floating interest rate is non-interest related.,Action,,,SPPI_TEST,SET,"""FAILED""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_10,D.4 Base of floating interest rate,Verify whether the base of the floating interest rate is non-interest related.,Condition,,,ZERO_CURVE_REF,NOT_LIST,"""""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_10,D.4 Base of floating interest rate,Verify whether the base of the floating interest rate is non-interest related.,Condition,AND,,CF_INDEXED_FLG,=,"""Y""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_10,D.4 Base of floating interest rate,Verify whether the base of the floating interest rate is non-interest related.,Condition,AND,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_11,D.5 Inverse floaters,Verify whether there exists an inverse floating rate,Action,,,SPPI_TEST,SET,"""FAILED""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_11,D.5 Inverse floaters,Verify whether there exists an inverse floating rate,Condition,,,ZERO_CURVE_REF,NOT_LIST,"""""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_11,D.5 Inverse floaters,Verify whether there exists an inverse floating rate,Condition,AND,,INVERSE_FLOATING_FLG,=,"""Y""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_11,D.5 Inverse floaters,Verify whether there exists an inverse floating rate,Condition,AND,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_12,D.6 Is there financial leverage?,Verify whether there exists financial leverage,Action,,,SPPI_TEST,SET,"""FAILED""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_12,D.6 Is there financial leverage?,Verify whether there exists financial leverage,Condition,,,INTEREST_BASE_OUTSTANDING_FLG,=,"""N""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_12,D.6 Is there financial leverage?,Verify whether there exists financial leverage,Condition,AND,,ZERO_CURVE_REF,=,"""""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_12,D.6 Is there financial leverage?,Verify whether there exists financial leverage,Condition,AND,,INVERSE_FLOATING_FLG,=,"""N""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_12,D.6 Is there financial leverage?,Verify whether there exists financial leverage,Condition,AND,,FINANCIAL_LEVERAGE_FLG,=,"""N""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_12,D.6 Is there financial leverage?,Verify whether there exists financial leverage,Condition,AND,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_13,D.8 Is the interest externaly fixed?,Verify whether the interest is externally fixed,Action,,,SPPI_TEST,SET,"""FAILED""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_13,D.8 Is the interest externaly fixed?,Verify whether the interest is externally fixed,Condition,,,INTEREST_EXT_FIXED_FLG,=,"""Y""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_13,D.8 Is the interest externaly fixed?,Verify whether the interest is externally fixed,Condition,AND,,INTEREST_EXT_FIXED_COM_FLG,=,"""N""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_13,D.8 Is the interest externaly fixed?,Verify whether the interest is externally fixed,Condition,AND,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_14,E.1 Prepayment possible,Verify whether prepayment is possible,Action,,,SPPI_TEST,SET,"""FAILED""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_14,E.1 Prepayment possible,Verify whether prepayment is possible,Condition,,,PREPAYMENT_POSSIBLE_FLG,=,"""Y""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_14,E.1 Prepayment possible,Verify whether prepayment is possible,Condition,AND,,PREPAYMENT_AMT_CAP_INT_FLG,=,"""N""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_14,E.1 Prepayment possible,Verify whether prepayment is possible,Condition,AND,,ORIGINATED_PREM_DISCOUNT_FLG,=,"""N""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_14,E.1 Prepayment possible,Verify whether prepayment is possible,Condition,AND,,SIGNIFICANT_AMT_FLG,=,"""N""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_14,E.1 Prepayment possible,Verify whether prepayment is possible,Condition,AND,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_15,F.1 Maturity Extension Possible,Verify whether the currency of the instrument can change,Action,,,SPPI_TEST,SET,"""PASSED""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_15,F.1 Maturity Extension Possible,Verify whether the currency of the instrument can change,Condition,,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_15,F.1 Maturity Extension Possible,Verify whether the currency of the instrument can change,Condition,AND,,MATURITY_EXT_POSSIBLE_FLG,=,"""N""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_16,"F.2 In case of maturity extension, is the interest rate set at market conditions","When the maturity gets extended, does this happen at market-conform interest rates",Action,,,SPPI_TEST,SET,"""PASSED""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_16,"F.2 In case of maturity extension, is the interest rate set at market conditions","When the maturity gets extended, does this happen at market-conform interest rates",Condition,,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_16,"F.2 In case of maturity extension, is the interest rate set at market conditions","When the maturity gets extended, does this happen at market-conform interest rates",Condition,AND,,MATURITY_EXT_POSSIBLE_FLG,=,"""Y""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_16,"F.2 In case of maturity extension, is the interest rate set at market conditions","When the maturity gets extended, does this happen at market-conform interest rates",Condition,AND,,INT_MARKET_RATE_FLG,=,"""Y""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_17,"F.3 In case of maturity extension, are cash flows SPPI?","When the maturity gets extended, does this happen at market-conform interest rates and do cash flows relate only to SPPI",Action,,,SPPI_TEST,SET,"""PASSED""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_17,"F.3 In case of maturity extension, are cash flows SPPI?","When the maturity gets extended, does this happen at market-conform interest rates and do cash flows relate only to SPPI",Condition,,,SPPI_TEST,NOT_LIST,"""FAILED"",""NOT_APPLICABLE""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_17,"F.3 In case of maturity extension, are cash flows SPPI?","When the maturity gets extended, does this happen at market-conform interest rates and do cash flows relate only to SPPI",Condition,AND,,MATURITY_EXT_POSSIBLE_FLG,=,"""Y""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_17,"F.3 In case of maturity extension, are cash flows SPPI?","When the maturity gets extended, does this happen at market-conform interest rates and do cash flows relate only to SPPI",Condition,AND,,INT_MARKET_RATE_FLG,=,"""Y""",,,,,,,,,SPPI Test,,,1
PORTFOLIO_SPPI_DETAILS,ENTITY_ID INSTID,SPPI_TEST_RULE_17,"F.3 In case of maturity extension, are cash flows SPPI?","When the maturity gets extended, does this happen at market-conform interest rates and do cash flows relate only to SPPI",Condition,AND,,MATURITY_EXT_CAP_INT_FLG,=,"""Y""",,,,,,,,,SPPI Test,,,1
;;;;
run;
