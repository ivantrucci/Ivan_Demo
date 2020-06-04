/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */

/*!
   \file
   \brief   Sample data for MAP_MOVEMENT_TYPE.

   \author  SAS Institute Inc.
   \date    2018
*/

data WORK.map_movement_type;
   attrib
      MOVEMENT_TYPE_CD       length = $32.
      MOVEMENT_TYPE          length = $100.
      MOVEMENT_CATEGORY      length = $100.
   ;
   infile cards dsd delimiter = ',';
   input
      MOVEMENT_TYPE_CD        :$char.
      MOVEMENT_TYPE           :$char.
      MOVEMENT_CATEGORY       :$char.
   ;
datalines4;
OB,00. Opening Balance,00. Opening Balance
BS_MODEL,10. Balance Sheet Models,10. Models
PL_MODEL,10. P&L Models,10. Models
CR_MODEL,10. Credit Risk Models,10. Models
BS_ADJ,20. Balance Sheet Adjustment,20. Adjustments
PL_ADJ,20. P&L Adjustment,20. Adjustments
CR_ADJ,20. Credit Adjustment,20. Adjustments
QF_ADJ,20. Qualitative Factor Adjustment,20. Adjustments
IA_ADJ,20. Individual Adjustment,20. Adjustments
MGM_ACTION,20. Management Actions,20. Management Actions
;;;;
run;
