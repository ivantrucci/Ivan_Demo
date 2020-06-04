/* Copyright (C) 2016 SAS Institute Inc. Cary, NC, USA */

/*!
   \file
   \brief   Sample data for MAP_LTV_TYPE.

   \details Sample data for MAP_LTV_TYPE. For documentation and guidance please refer to the corresponding ddl file.

   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2015
*/

data WORK.map_ltv_type;
   attrib
      LTV_START               length = 8.  
      LTV_END                 length = 8.
      LTV_DESC                length = $50.
   ;
   infile cards dsd delimiter = ',';
   input 
      LTV_START                
      LTV_END               
      LTV_DESC                :$char.
   ;
datalines4;
., .,Missing
0.0,0.50,Less than 50%
0.50,0.70,50% to 70%
0.70,0.90,70% to 90%
0.90,1.00,90% to 100%
1.00,99.99,More than 100%
;;;;
run;