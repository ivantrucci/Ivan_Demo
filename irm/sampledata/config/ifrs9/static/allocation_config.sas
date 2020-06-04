data WORK.allocation_config;
   attrib
      CONFIG_NAME                      length = $40.
      CONFIG_VALUE                     length = $256.
      CONFIG_VALUE_DESC                length = $150.
   ;
   infile cards dsd delimiter = ',';
   input
      CONFIG_NAME                      :$char.
      CONFIG_VALUE                     :$char.
      CONFIG_VALUE_DESC                :$char.
   ;

datalines4;
ANALYSIS_DATA_KEY,,Analysis Data Key
ANALYSIS_DATA_DS_NAME,,Name (excluding libref) of the output view to be created.
RULESET_KEY,,Ruleset Key
MOVEMENT_TYPE_CD,,Movement Type Code. Identifies the type of data adjustment
MOVEMENT_DESC,,Movement Description. User provided description of the change.
RULE_SUMMARY_SCHEMA_VERSION,&content_version.,Rules Summary schema version
RULE_SUMMARY_SCHEMA_NAME,ifrs9_alloc_rule_summary,Rules Summary schema name
DATADEFINITION_NAME,Allocation Rules Summary Schema,Rules Summary Data Definition name
DATADEFINITION_DESC,Allocation Rules Summary schema definition,Rules Summary Data Definition description
RULE_AUDIT_SCHEMA_VERSION,&content_version.,Rules Audit schema version
RULE_AUDIT_SCHEMA_NAME,ifrs9_alloc_rule_audit,Rules Audit schema name
DATADEFINITION_NAME_AUDIT,Classification Rules Audit Definition,Rules Audit Data Definition name
DATADEFINITION_DESC_AUDIT,Classification Rules Audit schema definition,Rules Audit Data Definition description
CREATE_RULES_SUMMARY,Yes,Flag to specify whether the Rules Summary table should be saved and registered
CREATE_RULES_AUDIT,No,Flag to specify whether the Rules Audit table should be saved and registered (only applicable for Classification Rule Sets)
DS_OUT_ALLOC,,Output data set name
;;;;
run;