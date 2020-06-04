/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */

/*!
   \file
   \brief   Sample data for DATA_MAP_CONFIG.

   \details Sample data for DATA_MAP_CONFIG. For documentation and guidance please refer to the corresponding ddl file.

   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2018
*/

data WORK.data_map_config;
   attrib
      WORKGROUP         length = $32.
      MODELING_SYSTEM   length = $150.
      MAP_TYPE          length = $100.
      TARGET_VAR_NAME   length = $32.
      EXPRESSION_TXT    length = $4096.
      MAPPING_DESC      length = $1024.
      TARGET_VAR_LENGTH length = $32.
      TARGET_VAR_LABEL  length = $150.
      TARGET_VAR_FMT    length = $32.
   ;
   infile cards dsd delimiter = ',';
   input
      WORKGROUP         :$char.
      MODELING_SYSTEM   :$char.
      MAP_TYPE          :$char.
      TARGET_VAR_NAME   :$char.
      EXPRESSION_TXT    :$char.
      MAPPING_DESC      :$char.
      TARGET_VAR_LENGTH :$char.
      TARGET_VAR_LABEL  :$char.
      TARGET_VAR_FMT    :$char.
   ;
   if(symexist("content_version")) then
      MODELING_SYSTEM = resolve(MODELING_SYSTEM);

datalines4;
*,IFRS9_Curves (&content_version.),CREDIT_RISK_DETAIL,ECL,ECL,ECL (Staged),,,
*,IFRS9_RetCom_HzrdMonteCarloTran (&content_version.),CREDIT_RISK_DETAIL,ECL,ECL,ECL (Staged),,,
;;;;
run;
