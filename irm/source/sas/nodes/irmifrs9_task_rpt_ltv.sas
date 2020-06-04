/*
   Copyright (C) 2019 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Create the Loan-To-Value (LTV) Ratio Analysis Report
      
   \details   
    
   \ingroup nodes
   \author  SAS Institute Inc.
   \date    2019
*/

%macro irmifrs9_task_rpt_ltv(ds_in =);

   /* Local temp vars */
   %local
      tmp_ds_nm
      id_vars
      i
      curr_var
   ;

   %let tmp_ds_nm = ltv_detail;
   
   /* ID vars carried to output file */
   %let id_vars=reporting_dt;

   /* Post process the &ds_in to add calculated fields and perform any subsetting needed */
   data &tmp_ds_nm. / view = &tmp_ds_nm.;
      length sort_order 8.;
      set &ds_in.;
      where
         scenario_name = 'Weighted'
         and collateral_support_flg='Y'
      ;
                 
      if ltv_desc='Missing' then sort_order=0;
      else if ltv_desc='Less than 50%' then sort_order=1;
      else if ltv_desc='50% to 70%' then sort_order=2;
      else if ltv_desc='70% to 90%' then sort_order=3;
      else if ltv_desc='90% to 100%' then sort_order=4;
      else if ltv_desc='More than 100%' then sort_order=5;
   run;

   /* Sum the results */ 
   proc hpsummary data =&tmp_ds_nm. missing;
      class &id_vars. &dimensions. sort_order;
      var &measures.;
      output
         out = _tmp_target_var_sum_
         %do i = 1 %to %sysfunc(countw(&measures., %str( )));
           %let curr_var = %scan(&measures., &i., %str( ));
           sum(&curr_var.) = &curr_var.
         %end;
         ;
   run;
   
   proc sort data=_tmp_target_var_sum_ out=_tmp_target_var_sum_;
     by sort_order;
   run;
   
   /* Write the _tmp_target_var_sum_ dataset to the XLS file */
   data rptlib.&DATA_RANGE;
      keep &id_vars. &dimensions. &measures.;
      set _tmp_target_var_sum_;
      %if(%rsk_varexist(_tmp_target_var_sum_, ECL_STAGE)) %then
        rename ecl_stage=credit_class;
      ;
   run;
    
%mend;
%irmifrs9_task_rpt_ltv(ds_in = &FR_HTM_DATA.);
