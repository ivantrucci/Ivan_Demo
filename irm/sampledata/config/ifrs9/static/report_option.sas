data WORK.report_option;
   attrib                                                                                                                                       
      CONFIG_NAME                      length = $40.
      CONFIG_VALUE                     length = $10000.
      CONFIG_VALUE_DESC                length = $150.
   ;
   infile cards dsd delimiter = ',';
   input 
      CONFIG_NAME                      :$char.
      CONFIG_VALUE                     :$char.
      CONFIG_VALUE_DESC                :$char.
   ;
   
datalines4;
REPORT_ID_LIST,,Space separated list of reports to generate
;;;;
run;