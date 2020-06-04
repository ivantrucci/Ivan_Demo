/* Copyright (C) 2017 SAS Institute Inc. Cary, NC, USA */

/*!
   \file
   \brief   Sample data for MAP_LOB_HIERARCHY.

   \details Sample data for MAP_LOB_HIERARCHY. For documentation and guidance please refer to the corresponding ddl file.

   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2015
*/

data WORK.map_lob_hierarchy;
   attrib
      LOB_ID           length = $100.
      LOB_LEV1         length = $200.
      LOB_LEV2         length = $200.
      LOB_LEV3         length = $200.
   ;
   infile cards dsd delimiter = ',';
   input
      LOB_ID           :$char.
      LOB_LEV1         :$char.
      LOB_LEV2         :$char.
      LOB_LEV3         :$char.
   ;
datalines4;
R_CHECK_SAVING,Consumer Banking,Retail Checking & Savings,
R_RESID_MRTG,Consumer Banking,Residential Mortgages,
R_FIN,Consumer Banking,Consumer Finance,
R_SPL,Consumer Banking,Retail Special Purpose Loans,
INV_BNK,Global Banking,Investment Banking,
COMM_LENDING,Global Banking,Commercial and Business Lending,
DEPOSIT_ADVISORY,Global Banking,Deposits and Advisory Services,
FIN_WEALTH_ADV,Global Wealth and Investment Management,Financial & Wealth Advisory,
BROKERAGE,Global Wealth and Investment Management,Brokerage,
ASSET_MGMT,Global Wealth and Investment Management,Asset Managemet,
FIXED_INCOME,Global Markets,Fixed income Trading,
DERIVATIVES,Global Markets,Dervivatives Trading,
;;;;
run;
