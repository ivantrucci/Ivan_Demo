/*  
   Copyright (C) 2019 SAS Institute Inc. Cary, NC, USA  
*/  
  
/** \file   
   \brief   Create the Credit Quality Allowances Overview Report  
        
   \details     
      
   \ingroup nodes  
   \author  SAS Institute Inc.  
   \date    2019  
*/  
  
%macro irmifrs9_task_rpt_creditquality(ds_in =);  
  
   /* Local temp vars */  
   %local  
      tmp_ds_nm  
      id_vars  
   ; 
     
   %let tmp_ds_nm = creditquality_detail;  
     
   /* ID vars carried to output file */  
   %let id_vars=reporting_dt;  
     
   data &tmp_ds_nm. / view = &tmp_ds_nm.;  
      set &ds_in.;
      where
        scenario_name = 'Weighted'
      ;
      if POCI_FLG = 'Y' then ecl_stage = 'POCI';
   run;
   
   /* Sum the results */
   proc hpsummary data=&tmp_ds_nm. missing;  
      class &id_vars. &dimensions.;  
      var &measures.;  
      output  
         out = _tmp_target_var_sum_  
           
         sum(AMORTIZED_COST_AMT) = AMORTIZED_COST_AMT;
   run;
   
   proc hpsummary data=&tmp_ds_nm. missing;  
      class &id_vars. product_lev1 ecl_stage;  
      var &measures.;  
      output  
         out = _tmp_target_var_sum_2_ 
         
         sum(AMORTIZED_COST_AMT) = GROSS_CARRYING_AMOUNT
         sum(ECL) = ECL;
   run;
   
   proc sort data=_tmp_target_var_sum_(drop=_TYPE_ _FREQ_) out=sorted;
      by &dimensions.;
   run;
   
   /* Break up measure(AMORTIZED_COST_AMT) by ecl_stage */
   data next;
      set sorted;
      if ecl_stage = 'POCI' then _amortized_cost_amt_poci = amortized_cost_amt;
      else if ecl_stage = 'Stage 1' then _amortized_cost_amt_1 = amortized_cost_amt;
      else if ecl_stage = 'Stage 2' then _amortized_cost_amt_2 = amortized_cost_amt;
      else if ecl_stage = 'Stage 3' then _amortized_cost_amt_3 = amortized_cost_amt;
   run;
   
   /* Consoldate rows with identical dimensions */
   data updated;
      update next(obs=0) next;
      by product_lev1 std_rating_grade;
   run;
   
   /* Ensure that each combination of PROD_LEV1 and STD_RATING_GRADE has an observation */
   /* This will prevent the pivot table from having missing columns */
   data final (drop=i _:);
      set updated;
      array x{*} _amortized_cost_amt_1 _amortized_cost_amt_2 _amortized_cost_amt_3 _amortized_cost_amt_poci ;
      do i = 1 to dim(x);
         if i = 1 then ecl_stage = 'Stage 1';
         if i = 2 then ecl_stage = 'Stage 2';
         if i = 3 then ecl_stage = 'Stage 3';
         if i = 4 then ecl_stage = 'POCI';
         amortized_cost_amt = x[i];
         output;
      end;
   run;
   
   data sum(keep=&id_vars. &dimensions. &measures.);
      length std_rating_grade $30.;
      set _TMP_TARGET_VAR_SUM_2_;
      CARRYING_AMOUNT = GROSS_CARRYING_AMOUNT - ECL;
      std_rating_grade = 'Gross carrying amount';
      amortized_cost_amt = GROSS_CARRYING_AMOUNT;
      output;
      std_rating_grade = 'Allowances for credit losses';
      amortized_cost_amt = ECL;
      output;
      std_rating_grade = 'Carrying amount';
      amortized_cost_amt = CARRYING_AMOUNT;
      output;
   run;
   
   data combined;
      set final sum;
   run;
   
   /* Write the _tmp_target_var_sum_ dataset to the XLS file */
   data rptlib.&DATA_RANGE;
     set combined(keep=&id_vars. &dimensions. &measures.);
     %if(%rsk_varexist(combined, ECL_STAGE)) %then
       rename ecl_stage=credit_class;
     ;
   run;

%mend;
%irmifrs9_task_rpt_creditquality(ds_in =&FR_HTM_DATA.);