/*
   Copyright (C) 2019 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Create the Credit Quality Analysis Report
      
   \details   
    
   \ingroup nodes
   \author  SAS Institute Inc.
   \date    2019
*/

%macro irmifrs9_task_rpt_creditqual_ana(ds_in =);

   /* Local temp vars */
   %local
      tmp_ds_nm
      id_vars
   ;

   %let tmp_ds_nm = credqualanal_detail;
   
   /* ID vars carried to output file */
   %let id_vars=reporting_dt;

   /* Post process the &ds_in to add calculated fields and perform any subsetting needed */
   data &tmp_ds_nm. / view = &tmp_ds_nm.;
      length amount_type $20;
      set &ds_in.;
      where
        scenario_name = 'Weighted'
      ;
            
      if nominal_amt ne . then 
      do;
        amount_type='Nominal';
        AMT=SUM(NOMINAL_AMT,0);
        output;
      end;
      
      if allowance_amt ne . then 
      do;
        amount_type='Allowance';
        AMT=SUM(ALLOWANCE_AMT,0);
        output;
      end;
   run;

   /* Sum the results to get the NOMINAL and ALLOWANCE totals by ECL_STAGE */ 
   proc hpsummary data=&tmp_ds_nm. missing;
      class &id_vars. &dimensions. amount_type;
      var amt;
      output
         out = _tmp_target_var_sum_
         
         sum(AMT) = AMT;
   run;
   
   /* Sum the results to get the COVERAGE RATIO by ECL_STAGE */
   proc hpsummary data=&tmp_ds_nm. missing;
      class &id_vars. &dimensions.;
      var &measures.;
      output
         out = _tmp_target_cov_sum_
           %do i = 1 %to %sysfunc(countw(&measures., %str( )));
             %let curr_var = %scan(&measures., &i., %str( ));
             sum(&curr_var.) = &curr_var.
           %end;
          ;
   run;
   
   /* Sum the results to get the NOMINAL and ALLOWANCE Totals by STD_RATING_GRADE */ 
   proc hpsummary data=&tmp_ds_nm. missing;
      class &id_vars. COUNTERPARTY_TYPE ASSET_TYPE_DESC STD_RATING_GRADE amount_type;
      var amt;
      output
         out = _tmp_target_vartotal_sum_
           sum(AMT) = AMT;
   run;
   
   /* Sum the results to get the COVERAGE RATIO Total by STD_RATING_GRADE */ 
   proc hpsummary data=&tmp_ds_nm. missing;
      class &id_vars. COUNTERPARTY_TYPE ASSET_TYPE_DESC STD_RATING_GRADE;
      var &measures.;
      output
         out = _tmp_target_covtotal_sum_
           %do i = 1 %to %sysfunc(countw(&measures., %str( )));
             %let curr_var = %scan(&measures., &i., %str( ));
             sum(&curr_var.) = &curr_var.
           %end;
          ;
   run;
   
   /* Put the datasets together */
   data _tmp_all_;
     length sort_order amt 8.;
     set _tmp_target_var_sum_ _tmp_target_vartotal_sum_(in=b) 
          _tmp_target_cov_sum_(in=c) _tmp_target_covtotal_sum_(in=d);
         
     if b then 
     do;
       ecl_stage=' ';
       amount_type=strip(amount_type)||' Total';
     end;
     
     if c then 
     do;
       amount_type='Coverage Ratio';
       amt=SUM(ALLOWANCE_AMT,0)/SUM(NOMINAL_AMT,0);
     end;
     
     if d then
     do;
       amount_type='Coverage Total';
       ecl_stage=' ';
       amt=SUM(ALLOWANCE_AMT,0)/SUM(NOMINAL_AMT,0);
     end;
    
      if amount_type='Nominal' then sort_order=2;
      else if amount_type='Nominal Total' then sort_order=3;
      else if amount_type='Allowance' then sort_order=0;
      else if amount_type='Allowance Total' then sort_order=1;
      else if amount_type='Coverage Ratio' then sort_order=4; 
      else if amount_type='Coverage Total' then sort_order=5;
     
   run;
   
   proc sort data=_tmp_all_ out=_tmp_all_ana_data(keep=&id_vars. &dimensions. amount_type amt sort_order);
     by sort_order COUNTERPARTY_TYPE STD_RATING_GRADE ECL_STAGE;
   run;
      
   /* Write the _tmp_all_ana_data dataset to the XLS file */
   data rptlib.&DATA_RANGE;
      retain &id_vars. &dimensions. amount_type amt sort_order;
      set _tmp_all_ana_data;
      %if(%rsk_varexist(_tmp_target_var_sum_, ECL_STAGE)) %then
        rename ecl_stage=credit_class;
      ;
   run;
    
%mend;
%irmifrs9_task_rpt_creditqual_ana(ds_in = &FR_HTM_DATA.);
