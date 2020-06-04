/*  
   Copyright (C) 2019 SAS Institute Inc. Cary, NC, USA  
*/  
  
/** \file   
   \brief   Create the ECL Scenario Attribution Report  
        
   \details     
      
   \ingroup nodes  
   \author  SAS Institute Inc.  
   \date    2019  
*/  
  
%macro irmifrs9_task_rpt_scenatt(ds_in =);  
  
   /* Local temp vars */  
   %local  
      tmp_ds_nm  
      id_vars 
      i
      curr_var
   ; 
     
   %let tmp_ds_nm = ecl_scen_attr_detail;  
     
   /* ID vars carried to output file */
   %let id_vars=reporting_dt;

   /* Post process the &ds_in to add calculated fields and perform any subsetting needed */
   data &tmp_ds_nm. / view = &tmp_ds_nm.;
      set &ds_in.;
   run;
   
   /* Sort because report sorts by data source order */
   proc sort data = &tmp_ds_nm. out = &tmp_ds_nm._sort;
      by &id_vars. &dimensions.;
   run;

   /* Sum the results */ 
   proc hpsummary data = &tmp_ds_nm._sort missing;
      class &id_vars. &dimensions;
      var &measures.;
      output
         out = _tmp_target_var_sum_
         %do i = 1 %to %sysfunc(countw(&measures., %str( )));
           %let curr_var = %scan(&measures., &i., %str( ));
           sum(&curr_var.) = &curr_var.
         %end;
         ;
   run;
   
   /* Consolidate measures to single column */
   data _tmp_summary_ (drop=&measures.);
      set _tmp_target_var_sum_;
      length MEASURE $ 20;
      MEASURE = 'ECL';
      VALUE = ECL;
      output;
      MEASURE = 'Allowance Amount';
      VALUE = ALLOWANCE_AMT;
      output;
   run;
   
   /* Write the _tmp_target_var_sum_ dataset to the XLS file */
   data rptlib.&DATA_RANGE;
      keep &id_vars. &dimensions. VALUE MEASURE;
      set _tmp_summary_;
      %if(%rsk_varexist(_tmp_target_var_sum_, ECL_STAGE)) %then
        rename ecl_stage=credit_class;
      ;
   run;

%mend;

%irmifrs9_task_rpt_scenatt(ds_in =&FR_HTM_DATA.);