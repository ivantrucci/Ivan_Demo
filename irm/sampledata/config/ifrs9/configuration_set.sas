/*
 Copyright (C) 2016 SAS Institute Inc. Cary, NC, USA
*/

/** \file
   \brief   Sample data for CONFIGURATION_SET.

   \details Sample data for CONFIGURATION_SET. For documentation and guidance please refer to the corresponding ddl file.

   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2015
*/

data work.configuration_set;
   attrib
      CONFIG_SET_ID                    length = $32.
      VALID_FROM_DTTM                  length = 8.     format = NLDATMS.
      VALID_TO_DTTM                    length = 8.     format = NLDATMS.
      CONFIGURATION_SET_DESC           length = $64.
   ;
retain VALID_FROM_DTTM &low_date;
retain VALID_TO_DTTM &high_date;
infile cards dsd delimiter = ',';
input
  CONFIG_SET_ID                    :$char.
  CONFIGURATION_SET_DESC           :$char.
;
datalines4;
IFRS9,"IFRS9 configuration"
;;;;
run;
