/* Copyright (C) 2017 SAS Institute Inc. Cary, NC, USA */

/*!
   \file
   \brief   Sample data for MAP_DPD_TYPE.

   \details Sample data for MAP_DPD_TYPE. For documentation and guidance please refer to the corresponding ddl file.

   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2018
*/

data WORK.map_dpd_type;
   attrib
      DPD_START               length = 8.  
      DPD_END                 length = 8.
      DPD_CLASS        length = $50.
   ;
   infile cards dsd delimiter = ',';
   input 
      DPD_START                
      DPD_END               
      DPD_CLASS        :$char.
   ;
datalines4;
.,.,Current
0,29,Current
30,59,30-59 Days
60,89,60-89 Days
90,9999999999,>=90 Days
;;;;
run;