/* Copyright (C) 2017 SAS Institute Inc. Cary, NC, USA */

/*!
   \file
   \brief   Sample data for MAP_PRODUCT_HIERARCHY.

   \details Sample data for MAP_PRODUCT_HIERARCHY. For documentation and guidance please refer to the corresponding ddl file.

   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2015
*/

data WORK.map_product_hierarchy;
   attrib
      PRODUCT_CD           length = $100.
      PRODUCT_LEV1         length = $200.
      PRODUCT_LEV2         length = $200.
      PRODUCT_LEV3         length = $200.
   ;
   infile cards dsd delimiter = ',';
   input
      PRODUCT_CD           :$char.
      PRODUCT_LEV1         :$char.
      PRODUCT_LEV2         :$char.
      PRODUCT_LEV3         :$char.
   ;
datalines4;
RESID_MRTG,Retail Loans,Residential Real Estate Loans,Residential Mortgages
HELOC,Retail Loans,Residential Real Estate Loans,HELOCs
RETAIL_CONSTR,Retail Loans,Residential Real Estate Loans,Retail Construction Loans
CREDIT_CARD,Retail Loans,Credit Cards,Credit Cards
AUTO_LOAN,Retail Loans,Auto Loans,Automobile Loans
EDU_LOAN,Retail Loans,Education Loans,Education Loans
RETAIL_OTHER_LOAN,Retail Loans,Other Retail Loans,Other Consumer Loans
SME_LOAN,Retail Loans,Other Retail Loans,Small Business Loans
COMM_CONSTR,Commercial Loans,CRE Loans,Commercial Construction Loans
CRE_LOAN,Commercial Loans,CRE Loans,CRE Loans
COMM_IND_LOAN,Commercial Loans,Commercial and Industrial Loans,CI Term Loans
COMM_REVOLVING_LOAN,Commercial Loans,Other Corporate Loans,Commercial Revolving Loans
COMM_OTHER_LOAN,Commercial Loans,Other Corporate Loans,Other Commercial Loans
RETAIL_GUARANTEE,Off-Balance Products,Issued Guarantees,Issued Retail Guarantees
COMM_GUARANTEE,Off-Balance Products,Issued Guarantees,Issued Commercial Guarantees
CREDIT_LINE,Off-Balance Products,Line of Credit,Line of Credit
FIN_LEASE,Leases, Financial Leases,Financial Leases
US_TREAS_SEC,Debt Securities,U.S. Government Debt Securities,U.S. Treasury Securities
US_GVMT_SEC,Debt Securities,U.S. Government Debt Securities,U.S. Government Agencies Securities
MUNI_BOND,Debt Securities,Municipal Debt Securities,Municipal Bonds
FOREIGN_GVMT_BOND,Debt Securities,Foreign Government Debt Securities,Foreign Government Bonds
CORPORATE_BOND,Debt Securities,Corporate Debt Securities,Corporate Bonds
CONVERTIBLE_DEBT,Debt Securities,Corporate Debt Securities,Convertible Debt
COMM_PAPER,Debt Securities,Corporate Debt Securities,Commercial Paper
BANK_NOTES,Debt Securities ,Corporate Debt Securities,Bank Notes
RMBS_GVMT,Debt Securities,RMBS by Government Agencies,RMBS by Government Agencies
RMBS_OTHER,Debt Securities,Other RMBS,Other RMBS
CMBS_GVMT,Debt Securities,CMBS by Government Agencies,CMBS by Government Agencies
CMBS_OTHER,Debt Securities,Other CMBS,Other CMBS
ABS,Debt Securities,Other Securitized Debt Securities,Asset Backed Securities
CLO,Debt Securities,Other Securitized Debt Securities,Collateralized Loan Obligations
PREFERRED_STOCK,Debt Securities,Other Debt Securities,Preferred Stock
;;;;
run;
