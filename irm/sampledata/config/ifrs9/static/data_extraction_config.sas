/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */

/*!
   \file
   \brief   Sample data for DATA_EXTRACTION_CONFIG.

   \details Sample data for DATA_EXTRACTION_CONFIG. For documentation and guidance please refer to the corresponding ddl file.

   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2018
*/

data WORK.data_extraction_config;
   attrib
      SOURCE_DATA_NAME   length = $32.
      ANALYSIS_DATA_KEY  length = $32.
      AGGREGATE_FLG      length = $1.
   ;
   infile cards dsd delimiter = ',';
   input
      SOURCE_DATA_NAME  :$char.
      ANALYSIS_DATA_KEY :$char.
      AGGREGATE_FLG     :$char.
   ;

datalines4;
FR_HTM_DATA,,Y
PREV_FR_HTM_DATA,,Y
AA_DATA,,N
;;;;
run;
