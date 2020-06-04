data  work.VA_REPORT_CONFIG;
   length 
      ITEM_TYPE  $ 100
      ITEM_NM    $ 100
   ;

   infile cards dsd delimiter=',';

   input
      ITEM_TYPE   : $char.
      ITEM_NM     : $char.
;

cards4;
"Metrics","Unpaid Balance"
"Metrics","ECL (12 Months)"
"Metrics","ECL (Lifetime)"
"Metrics","ECL (Staged)"
"Metrics","Provision"
"Categories","Geography"
"Categories","Line of Business"
"Categories","Standardized Rating"
"Categories","Product"
"Categories","ECL Stage"
;;;;
run;



