data WORK.reportmart_config;
   attrib                                                                                                                                       
      REPORTMART_GROUP_ID      length = $32.
      SCHEMA_NAME              length = $100.
      SCHEMA_VERSION           length = $50.
      WHERE_CLAUSE             length = $10000.
      CUSTOM_CODE              length = $10000.
      RLS_TABLE_NAME           length = $100.
      MART_TABLE_NAME          length = $100.
   ;
   infile cards dsd delimiter = ',';
   input 
      REPORTMART_GROUP_ID      :$char.
      SCHEMA_NAME              :$char.
      SCHEMA_VERSION           :$char.
      WHERE_CLAUSE             :$char.
      CUSTOM_CODE              :$char.
      RLS_TABLE_NAME           :$char.
      MART_TABLE_NAME          :$char.
   ;
datalines4;
Data Quality,IFRS9_DQ_SUMMARY,&content_version.,,,IFRS9_DQ_SUMMARY_RLS,IFRS9_DQ_SUMMARY
Data Quality,IFRS9_DQ_DETAILS,&content_version.,,,IFRS9_DQ_DETAILS_RLS,IFRS9_DQ_DETAILS
Credit Risk,IFRS9_CREDIT_RISK_DETAIL,&content_version.,,,IFRS9_CREDIT_RISK_DETAIL_RLS,IFRS9_CREDIT_RISK_DETAIL
;;;;
run;