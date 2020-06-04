data WORK.dq_config;
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
ANALYSIS_DATA_KEY_LIST,,Space separated list of Analysis Data Keys
DQ_RULE_SET_KEY_LIST,,Space separated list of Rule Set Keys
DQ_DETAILS_FLG,Y,Flag: Y/N. Controls whether to produce detailed data quality information
;;;;
run;