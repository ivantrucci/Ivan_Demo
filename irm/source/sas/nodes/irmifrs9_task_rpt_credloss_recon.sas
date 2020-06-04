/*
   Copyright (C) 2019 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Create the Credit Loss Reconciliation Report
      
   \details   
    
   \ingroup nodes
   \author  SAS Institute Inc.
   \date    2019
*/

%macro irmifrs9_task_rpt_credloss_recon(ds_in =);

   /* Local temp vars */
   %local
      tmp_ds_nm
      id_vars
      curr_var
      i 
   ;

   %let tmp_ds_nm = credtLossRecon_Detail;
   
   /* ID vars carried to output file */
   %let id_vars=reporting_dt;
   
   /* Ensure that DRAWN_PCT is consistent for all movements of an INSTID */
   proc sql;
   create table &ds_in._2 as
      select a.*, b.DRAWN_PCT as DRAWN_PCT_NEW
      from &ds_in. as a left join (select *
                                    from &ds_in.
                                    where DRAWN_PCT > 0) as b
         on a.INSTID = b.INSTID;
   quit;
   
   /* Post process the &ds_in to add calculated fields and perform any subsetting needed */
   data &tmp_ds_nm.;
      length movement_category $ 150;
      set &ds_in._2;
      where scenario_name = 'Weighted';
      
      if DRAWN_PCT_NEW = . then DRAWN_PCT = 0;
      else DRAWN_PCT = DRAWN_PCT_NEW;
      
      if POCI_Flg='Y' then PREV_ECL_STAGE='POCI';
      if POCI_Flg='N' and PREV_ECL_STAGE = '' then PREV_ECL_STAGE = ECL_STAGE;
           
      if findw(movement_category,'Opening Balance') then 
      do; 
        movement_category='Opening Balance';
        ECL = ALLOWANCE_AMT;
        sort_order_mvmnt = 1;
        output;
      end;
      
      else if findw(movement_category,'New Originations') then
      do; 
        movement_category='Originations or purchases';
        sort_order_mvmnt = 2;
        output;
        
        movement_category='Provisions for credit losses';
        sort_order_mvmnt = 10;
        output;
      end;
      
      else if findw(movement_category,'Stage Allocation') and ECL_STAGE='Stage 1' then 
      do;
        movement_category='Transfers to Stage 1';
        sort_order_mvmnt = 3;
        output;
        
        movement_category='Provisions for credit losses';
        sort_order_mvmnt = 10;
        output;
      end;
      
      else if findw(movement_category,'Stage Allocation') and ECL_STAGE='Stage 2' then
      do;
        movement_category='Transfers to Stage 2';
        sort_order_mvmnt = 4;
        output;
        
        movement_category='Provisions for credit losses';
        sort_order_mvmnt = 10;
        output;
      end;
      
      else if findw(movement_category,'Stage Allocation') and ECL_STAGE='Stage 3' then 
      do;
        movement_category='Transfers to Stage 3';
        sort_order_mvmnt = 5;
        output;
        
        movement_category='Provisions for credit losses';
        sort_order_mvmnt = 10;
        output;
      end;
      
      else if findw(movement_category,'Portfolio Aging') then
      do;
        movement_category='Net remeasurement of loss allowances';
        sort_order_mvmnt = 6;
        output;
        
        movement_category='Provisions for credit losses';
        sort_order_mvmnt = 10;
        output;
      end;
      
      else if findw(movement_category,'Expired Positions') then 
      do;
        movement_category='Derecognitions';
        ECL = ALLOWANCE_AMT;
        sort_order_mvmnt = 7;
        output;
        
        movement_category='Provisions for credit losses';
        sort_order_mvmnt = 10;
        output;
      end;
      
      else if findw(movement_category,'Models') then 
      do;
        movement_category='Changes to models';
        sort_order_mvmnt = 8;
        output;
        
        movement_category='Provisions for credit losses';
        sort_order_mvmnt = 10;
        output;
      end;
      
      else
      do;
        movement_category='Other';
        sort_order_mvmnt = 9;
        output;
         
        movement_category='Provisions for credit losses';
         sort_order_mvmnt = 10;
        output;
      end;
      
      if PREV_ECL_STAGE = '' then PREV_ECL_STAGE = ECL_STAGE;
      
      if write_off_amt ne 0 then 
      do;
        movement_category='Write-offs';
        ECL=WRITE_OFF_AMT;
        sort_order_mvmnt = 11;
        output;
      end;
      
      if recovery_amt ne 0 then 
      do;
        movement_category='Recoveries';
        ECL=RECOVERY_AMT;
        sort_order_mvmnt = 12;
        output;
      end;
       
   run;
   
   data _tmp_with_drawn_undrawn_;
      set &tmp_ds_nm.;
      
      output;
      
      if movement_category='Opening Balance' then OB=ECL;
      if movement_category='Provisions for credit losses' then Provision=ECL;
      if movement_category='Write-offs' then WriteOff=ECL;
      if movement_category='Recoveries' then Recovery=ECL;
      
      Closing=sum(OB, Provision, -WriteOff, Recovery);
                      
      movement_category = "Includes: Amounts drawn";
      ECL_DRAWN = coalesce(DRAWN_PCT * Closing, 0);
      ECL = ECL_DRAWN;
      sort_order_mvmnt = 14;
      output;
      
      movement_category = "...............Undrawn commitments";
      ECL_UNDRAWN = coalesce((1-DRAWN_PCT) * Closing, Closing);
      ECL = ECL_UNDRAWN;
      sort_order_mvmnt = 15;
      output;
   
   run;

   /* Sum the results */ 
   proc hpsummary data = _tmp_with_drawn_undrawn_ missing;
      class &id_vars. sort_order_mvmnt &dimensions.;
      var &measures.;
      output
         out = _tmp_target_var_sum_
           SUM(ECL)=ECL
           ;
   run;
   
   proc sql;
   create table _tmp_summary_ as
      select *
      from _tmp_target_var_sum_
            
      outer union corr
      
      /* Add the Closing Balance */
      select REPORTING_DT, 
             13 as sort_order_mvmnt,
             a.PRODUCT_LEV1,
             'Closing Balance' as MOVEMENT_CATEGORY, 
             a.PREV_ECL_STAGE,
             coalesce(a.ECL_sum - b.ECL_sum, a.ECL_sum) as ECL                                             
      from   (
            select REPORTING_DT,
                   sort_order_mvmnt,
                  PRODUCT_LEV1,
                  MOVEMENT_CATEGORY,
                  PREV_ECL_STAGE,
                  sum(ECL) as ECL_sum
            from _tmp_target_var_sum_
            where movement_category in ("Opening Balance",
                                 "Provisions for credit losses",
                                 "Recoveries")
            group by REPORTING_DT,
                     PRODUCT_LEV1,
                     PREV_ECL_STAGE
            )
            as a left join
            (
            select PRODUCT_LEV1,
                   PREV_ECL_STAGE, 
                   sum(ECL) as ECL_sum
            from _tmp_target_var_sum_
            where movement_category in ("Write-offs")
            group by PRODUCT_LEV1,
                     PREV_ECL_STAGE
            )
            as b
            on (a.PRODUCT_LEV1 = b.PRODUCT_LEV1 and
                  a.PREV_ECL_STAGE = b.PREV_ECL_STAGE)   
      order by PRODUCT_LEV1,
               sort_order_mvmnt;            
   quit;
   
   /* Ensure no missing values for PREV_prev_ecl_stage */
   data _tmp_summary_2_;
      set _tmp_summary_;
      if prev_ecl_stage = 'POCI' then ECL_POCI = ECL;
      else if prev_ecl_stage = 'Stage 1' then ECL_1 = ECL;
      else if prev_ecl_stage = 'Stage 2' then ECL_2 = ECL;
      else if prev_ecl_stage = 'Stage 3' then ECL_3 = ECL;
   run;
   
   proc sort data=_tmp_summary_2_;
     by PRODUCT_LEV1 sort_order_mvmnt;
   run; 
   
   /* Consoldate rows with identical dimensions */
   data consolidated;
      update _tmp_summary_(obs=0) _tmp_summary_2_;
      by PRODUCT_LEV1 sort_order_mvmnt;
   run;
   
   data _tmp_summary_3_(drop=i ECL_:);
      set consolidated;
      array x{*} ECL_1 ECL_2 ECL_3 ECL_poci ;
      do i = 1 to dim(x);
         if i = 1 then prev_ecl_stage = 'Stage 1';
         if i = 2 then prev_ecl_stage = 'Stage 2';
         if i = 3 then prev_ecl_stage = 'Stage 3';
         if i = 4 then prev_ecl_stage = 'POCI';
         ECL = x[i];
         output;
      end;
   run;
   
   /* Write the _tmp_summary_3_ dataset to the XLS file */
   data rptlib.&DATA_RANGE;
      keep &id_vars. &dimensions. &measures.;
      set _tmp_summary_3_;     
      %if(%rsk_varexist(_tmp_summary_3_, prev_ecl_stage)) %then
         rename prev_ecl_stage=credit_class;
      ;
   run;
   
%mend;
%irmifrs9_task_rpt_credloss_recon(ds_in = &AA_DATA.);
