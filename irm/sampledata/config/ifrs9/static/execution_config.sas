/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */

/*!
   \file
   \brief   Sample data for EXECUTION_CONFIG.

   \details Sample data for EXECUTION_CONFIG. For documentation and guidance please refer to the corresponding ddl file.

   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2018
*/

data WORK.execution_config;
   attrib
      EXECUTION_GROUP   length = $100.
      EXECUTION_STAGE   length = 8.
      SOURCE_CODE       length = $256.
      PA_LIBREF_LIST    length = $256.
      CLEAR_WORK_FLG    length = $1.
   ;
   infile cards dsd delimiter = ',';
   input
      EXECUTION_GROUP   :$char.
      EXECUTION_STAGE
      SOURCE_CODE       :$char.
      PA_LIBREF_LIST    :$char.
      CLEAR_WORK_FLG    :$char.
   ;

datalines4;
Enrichment,1,irmifrs9_task_enrich_credit_portfolio.sas,,Y
Enrichment,1,irmifrs9_task_enrich_credit_cashflow.sas,,Y
Enrichment,1,irmifrs9_task_enrich_individual_adjustment.sas,,Y
;;;;
run;
