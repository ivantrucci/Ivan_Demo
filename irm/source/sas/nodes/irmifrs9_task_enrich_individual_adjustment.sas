/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Enrich individual adjustment table
      
   \details
   
   This node filters the individual adjustment table by Entity   
   
   \ingroup nodes
   \author  SAS Institute Inc.
   \date    2018
*/

%if(%rsk_dsexist(FRS9_LND.INDIVIDUAL_ADJUSTMENT) ) %then %do;

   /* *************************************************** */
   /* Create Enriched Individual Adjustment table         */
   /* *************************************************** */
   %irmc_enrich_indiv_adjustment(ds_in_indiv_adjustment = FRS9_LND.INDIVIDUAL_ADJUSTMENT
                         , ds_in_entity = FRS9_STG.ENTITY
                         , ds_out = FRS9_STG.INDIVIDUAL_ADJUSTMENT
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
      table_name = "FRS9_STG.INDIVIDUAL_ADJUSTMENT";
      data_type = "View";
      status = "Created";
   run;
%end;