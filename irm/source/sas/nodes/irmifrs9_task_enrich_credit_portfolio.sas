/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Enrich Portfolio table
      
   \details
   
   This node extract from the input Portfolio table the records that match entries in the input Entity table.
   Data enrichment is performed to lookup dimensional information from the following mapping tables:
    - \link map_geo_hierarchy.sas \endlink
    - \link map_product_hierarchy.sas \endlink
    - \link map_lob_hierarchy.sas \endlink
   
   
   \ingroup nodes
   \author  SAS Institute Inc.
   \date    2018
*/


/* ************************************** */
/* Create Enriched Portfolio table        */
/* ************************************** */
%irmc_enrich_portfolio(ds_in_portfolio = FRS9_LND.CREDIT_PORTFOLIO
                       , ds_in_counterparty = FRS9_LND.COUNTERPARTY
                       , ds_in_sppi = FRS9_LND.PORTFOLIO_SPPI_DETAILS
                       , ds_in_entity = FRS9_STG.ENTITY
                       , ds_in_map_geo_hierarchy = FRS9_MAP.MAP_GEO_HIERARCHY
                       , ds_in_map_product_hierarchy = FRS9_MAP.MAP_PRODUCT_HIERARCHY
                       , ds_in_map_lob_hierarchy = FRS9_MAP.MAP_LOB_HIERARCHY
                       , ds_in_map_dpd_type = FRS9_MAP.MAP_DPD_TYPE
                       , ds_in_map_ltv_type = FRS9_MAP.MAP_LTV_TYPE
                       , ds_out = FRS9_STG.CREDIT_PORTFOLIO
                       , enrich_counterparty_flg = &enrich_counterparty_flg.
                       , enrich_sppi_flg = &enrich_sppi_flg.
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
   table_name = "FRS9_STG.CREDIT_PORTFOLIO";
   data_type = "View";
   status = "Created";
run;

