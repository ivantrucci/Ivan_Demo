/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Enrich AFS related cashflows
      
   \details
   
   This node extract from the input CASHFLOW table the records that match entries in the input AFS Securities table.   
   
   \ingroup nodes
   \author  SAS Institute Inc.
   \date    2018
*/

%if(%rsk_dsexist(FRS9_LND.AFS_SECURITIES) and %rsk_dsexist(FRS9_LND.CASHFLOW)) %then %do;

   /* ************************************** */
   /* Create Enriched Cashflow table         */
   /* ************************************** */
   %irmc_enrich_cashflow(ds_in_portfolio = FRS9_LND.AFS_SECURITIES
                         , ds_in_cashflow = FRS9_LND.CASHFLOW
                         , ds_in_entity = FRS9_STG.ENTITY
                         , ds_out = FRS9_STG.CREDIT_CASHFLOW
                         );

   /* *********************************************************************** */
   /* Create Result List table: list all outputs created by this program      */
   /* *********************************************************************** */
   data &ds_out_result_list.;
      length
         source_code $256.
         table_name $100.
         data_type $20.
         status $20.
      ;
      /* Macro variable PROGRAM_NAME is set by macro irmc_task_runner */
      source_code = "&program_name.";
      table_name = "FRS9_STG.CREDIT_CASHFLOW";
      data_type = "View";
      status = "Created";
   run;
%end;