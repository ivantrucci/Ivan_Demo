/*
   Copyright (C) 2019 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Create the Collateral Held Carrying Value Report
      
   \details   
    
   \ingroup nodes
   \author  SAS Institute Inc.
   \date    2019
*/

%macro irmifrs9_task_rpt_collheld(ds_in =, prev_ds_in =);

   /* Local temp vars */
   %local
      tmp_ds_nm
      id_vars
      curr_var
      i 
   ;

   %let tmp_ds_nm = collheld_detail;
   
   /* ID vars carried to output file */
   %let id_vars=curr_rpt_dt reporting_dt as_of_dates;

   /* Check to see if there is a previous analysis dataset */
   %if (%sysevalf(%superq(prev_ds_in) ne, boolean)) %then 
   %do;
     /* Post process the previous period &PREV_FR_HTM_RESULT loans */
     data pre_&tmp_ds_nm.;
       length as_of_dates $30 curr_rpt_dt 8.;
       format curr_rpt_dt mmddyy10.;
       set &prev_ds_in.;
       where 
         scenario_name='Weighted';
      
       if FINANCIAL_DIFFICULTIES_FLG = 'Y' and COLLATERAL_SUPPORT_FLG = 'Y' then do;
         _TMP_COLLATERAL_VALUE_AMT = SUM(COLLATERAL_VALUE_AMT, 0);
       end;
      
       drop COLLATERAL_VALUE_AMT;
       rename _TMP_COLLATERAL_VALUE_AMT = COLLATERAL_VALUE_AMT;
      
       AS_OF_DATES='as of '|| strip(put(reporting_dt,mmddyy10.));
       /* Set the current run to the reporting date for the report run date */ 
       curr_rpt_dt=datepart(&base_dttm);
     run;
   %end;

   /* Post process the &ds_in to add calculated fields and perform any subsetting needed */
   data curr_&tmp_ds_nm.;
      length as_of_dates $30 curr_rpt_dt 8.;
      format curr_rpt_dt mmddyy10.;
      set &ds_in.;
      where
        scenario_name = 'Weighted'
      ;
            
      if FINANCIAL_DIFFICULTIES_FLG = 'Y' and COLLATERAL_SUPPORT_FLG = 'Y' then do;
        _TMP_COLLATERAL_VALUE_AMT = SUM(COLLATERAL_VALUE_AMT, 0);
      end;
      
      drop COLLATERAL_VALUE_AMT;
      rename _TMP_COLLATERAL_VALUE_AMT = COLLATERAL_VALUE_AMT;
      
      AS_OF_DATES='as of '|| strip(put(reporting_dt,mmddyy10.));
      /* Set the current run to the reporting date for the report run date */ 
      curr_rpt_dt=datepart(&base_dttm);
   run;

   /* Merge the data together for previous and current periods */
   data _tmp_&tmp_ds_nm.;
     set 
       /* Check to see if the table exist and has observations. */
       %if(%rsk_dsexist(pre_&tmp_ds_nm.)) %then %do;
         %if(%rsk_attrn(pre_&tmp_ds_nm., nobs) > 0) %then pre_&tmp_ds_nm.;   
       %end;
      
      curr_&tmp_ds_nm.;
   run;
   
   /* Sort the input dataset */
   proc sort data = _tmp_&tmp_ds_nm.
             out = _tmp_&tmp_ds_nm._srt_;
     by &dimensions.;
   run;

   /* Sum the results by All Dimensions */ 
   proc hpsummary data = _tmp_&tmp_ds_nm._srt_ missing;
      class &id_vars. &dimensions.;
      var &measures.;
      output
         out = _tmp_target_var_sum_
            %do i = 1 %to %sysfunc(countw(&measures., %str( )));
               %let curr_var = %scan(&measures., &i., %str( ));
               sum(&curr_var.) = &curr_var.
            %end;
         ;
   run;
   
   /* Sum the results by COLLATERAL_TYPE & COUNTERPARTY_TYPE */ 
   proc hpsummary data = _tmp_&tmp_ds_nm._srt_ missing;
      class &id_vars. &dimensions.;
      var &measures.;
      types reporting_dt*curr_rpt_dt*as_of_dates*() reporting_dt*curr_rpt_dt*as_of_dates*collateral_type
            reporting_dt*curr_rpt_dt*as_of_dates*counterparty_type;
      output
         out = _tmp_target_colltype_sum_
            %do i = 1 %to %sysfunc(countw(&measures., %str( )));
               %let curr_var = %scan(&measures., &i., %str( ));
               sum(&curr_var.) = &curr_var.
            %end;
         ;
   run;
   
   /* Merge the summarized data together */
   data _tmp_sum_&tmp_ds_nm.;
     length sort_order 8.;
     set _tmp_target_var_sum_(in=a) _tmp_target_colltype_sum_(in=b);
     if a then sort_order=0;
     if b then
     do;
      if counterparty_type='' and collateral_type='' then 
      do;
        sort_order=2;
        counterparty_type=' ';
        collateral_type='Overall Total';
      end;
      else if collateral_type ne '' then
      do;
        sort_order=0;
        counterparty_type=' ';
        collateral_type='Total '||strip(collateral_type);
      end;
      else if counterparty_type ne '' then
      do;
        sort_order=1;
        collateral_type='Total '||strip(counterparty_type);
      end;
     end;
   run;
     
   proc sort data=_tmp_sum_&tmp_ds_nm. out=_tmp_srt_&tmp_ds_nm.;
     by sort_order;
   run;     
   
   /* Write the _tmp_target_var_sum_ dataset to the XLS file */
   data rptlib.&DATA_RANGE;
      keep &id_vars. &dimensions. &measures.;
      set _tmp_srt_&tmp_ds_nm.;
   run;
   
%mend;

%if(not %symexist(PREV_FR_HTM_DATA)) %then %do;
   %let PREV_FR_HTM_DATA=;
%end;
%irmifrs9_task_rpt_collheld(ds_in = &FR_HTM_DATA., prev_ds_in = &PREV_FR_HTM_DATA.);
