/*libname ehe "/opt/sas/config/Lev1/AppData/SASRiskWorkGroup/groups/IFRS9/SASModelImplementationPlatform/input/functions";*/
libname ehe "C:\ehe\RiskDimensions\PoC\IFRS9\EIR\prototype\LIB";

proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 function RSK_FIND_LEFT(value,arr[*])
          label="Finds closest element of a sorted array which is less than or equal to the input value"
          kind="Array Utility";
    cap = dim(arr);
    up = cap+1;
    lp = 1;
    do while( up-lp > 0 );
       mp = floor((up+lp)/2);
       if arr[mp] > value then up = mp;
       else
            if mp eq cap then return(cap);
       else
            if arr[mp+1] le value then lp = mp + 1;
       else
            return(mp);
    end;
    return(0);

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.Cashflow_Functions  LABEL="Cashflow functions";
 function RSK_DAYCOUNT(Convention $,BeginDate,EndDate)
          label="Calculates the number of years between two dates, given a day counting convention"
          kind="Date management";
   /*
    Actual/actual: The actual number of days between two dates is used.
    Leap years count for 366 days, non-leap years count for 365 days. If more than 1 year then
    actual year use actual year rsk_daycount - hence the loop and frac return.
     Actual/360: The actual number of days between two dates is used as the numerator.
    A year is assumed to have 12 months of 30 days each.
     Actual/365: The actual number of days between two dates is used as the numerator.
    All years are assumed to have 365 days. BASECASE
     Actual/366: The actual number of days between two dates is used as the numerator.
    All years are assumed to have 366 days.
     30/360: All months are assumed to have 30 days, resulting in a 360 day year.
    If the first date falls on the 31st, it is changed to the 30th.
    If the second date falls on the 31th, it is changed to the 30th,
    but only if the first date falls on the 30th or the 31st.
    */
   /* Create a local copy of this pass-through character value */
   /* This will make the function more efficient */
    length local_convention $32;
    local_convention = Convention;
   /* Default value to ACT/365 */
    if missing(local_convention) then local_convention = 'ACT/365';
   /* Return zero if EndDate before BeginDate or missing either date */
    if EndDate le BeginDate or missing(BeginDate) then return(0);
   /* Handle cases, for each convention */
    select(local_convention);
      /* ACT/360 must be computed by this function */
      /* Otherwise, use yrdif function */
       when ('ACT/366')
                        do;
          num = EndDate - BeginDate ;
          den = 366;
          returnval = num / den;
       end;
       otherwise
                 do;
          returnval = yrdif( BeginDate, EndDate, local_convention );
       end;
    end;
   /* Return the value */
    return(returnval);

 endsub;
run;
quit;


proc fcmp outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 function RSK_CALC_CF_DUR_DISC(PV, CFAmt[*], CFMat[*], CFNum, Convention $, Yield, START_DT)
          label="Calculates duration of a series of cash flows"
          kind="Cash flow valuation";
    if(PV le 0 or CFNUM le 0) then
       return (0);
   /* Create a local copy of this pass-through character value */
   /* This will make the function more efficient */
    length local_convention $32;
    local_convention = Convention;
   /*Convert maturity date array in fraction of year*/
    array _MAT_DATE_[1]/nosym;
    call DYNAMIC_ARRAY(_MAT_DATE_,CFNUM);
    if START_DT ne . then do;
       do i=1 to CFNUM;
          _MAT_DATE_[i]=rsk_daycount(local_convention,START_DT,CFMat[i]);
       end;
    end;
       /*end if*/
    else
         do;
       do i=1 to CFNUM;
           _MAT_DATE_[i]=CFMat[i];
       end;
    end;
       /*end else*/
    CFSum=0;
    do i=1 to CFNum;
       CFSum=CFSum+_MAT_DATE_[i]*CFAmt[i]*(1 + Yield)**(-_MAT_DATE_[i]);
    end;
    Duration=CFSum/PV;
    return (Duration);

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 function RSK_PV_CASHFLOW_DISC(CFAmt[*], /* amount of cashflow*/ CFMat[*], /* maturity of cashflow in fraction of year*/ CFNum, /* number of cashflow*/ Discount_rt/* flat discrete discount rate */)
          label="Calculate present value of a series of cash flows and the sum of the cash flows with discrete discounting"
          kind="Cash flow valuation";
    SumCFAmt=0;
    do i=1 to CFNum;
       SumCFAmt=SumCFAmt+CFAmt[i]*(1 + Discount_rt)**(-CFMat[i]);
    end;
    return (SumCFAmt);

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 function RSK_CALC_CF_YIELD_DISC(PV, CFAmt[*], CFMat[*], CFNum, Convention $, START_DT)
          label="Calculates yield of a series of cash flows"
          kind="Cashflow Valuation";
   /* Create a local copy of this pass-through character value */
   /* This will make the function more efficient */
    length local_convention $32;
    local_convention = Convention;
   /*Convert maturity date array in fraction of year*/
    if(CFNUM>0) then
                     do;
       array _MAT_DATE_[1]/nosym;
       call DYNAMIC_ARRAY(_MAT_DATE_,CFNUM);
       if START_DT ne . then do;
          do i=1 to CFNUM;
             _MAT_DATE_[i]=rsk_daycount(local_convention,START_DT,CFMat[i]);
          end;
       end;
          /*end if*/
       else
            do;
          do i=1 to CFNUM;
              _MAT_DATE_[i]=CFMat[i];
          end;
       end;
          /*end else*/
    end;
       /*end if*/
    else
         do;
       return(0);
    end;
       /*end else*/
    Yield=solve("rsk_pv_cashflow_disc", {0.1}, PV, CFAmt, _MAT_DATE_, CFNum, . );
    return (Yield);

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 function RSK_CALC_EIR(PV, CFAmt[*], CFMat[*], CFNum, Convention $, START_DT)
          label="Calculates EIR based on a series of cash flows"
          kind="Cashflow Valuation";
   /* Create a local copy of this pass-through character value */
   /* This will make the function more efficient */
    length local_convention $32;
    local_convention = Convention;
   /*Convert maturity date array in fraction of year*/
    if(CFNUM>0) then do;
       array _MAT_DATE_[1]/nosym;
       call DYNAMIC_ARRAY(_MAT_DATE_,CFNUM);
       if START_DT ne . then do;
          do i=1 to CFNUM;
             _MAT_DATE_[i]=rsk_daycount(local_convention,START_DT,CFMat[i]);
          end;
       end;
       else do;
          do i=1 to CFNUM;
             _MAT_DATE_[i]=CFMat[i];
           end;
       end;
    end;
    else do;
       return(0);
    end;
    EIR=solve("rsk_pv_cashflow_disc", {0.1}, PV, CFAmt, _MAT_DATE_, CFNum, . );
    return (EIR);

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 function RSK_CALC_NEXT_DATE(RefDate, Nmbr_Mth)
          label="Calculates the next date using a fixed months for the period"
          kind="Date management";
  BeginMonth = intnx('month',RefDate,Nmbr_Mth);
  DayMax = day (intnx ('month',BeginMonth ,1)-1);
  if day(RefDate) le DayMax then
           Sameday_Next = mdy (month(BeginMonth) , day(RefDate), year(BeginMonth));
  else
       sameday_next = mdy (month(BeginMonth) , DayMax, year(BeginMonth));
  return (sameday_next);

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 function RSK_GET_MSG_SUBR(key $, s1 $, s2 $, s3 $, s4 $, s5 $, s6 $, s7 $)
          label="Fetches and returns a translated message"
          kind="Utility functions" $;
   /* Set the maximum length of the message */
    length msg $1024;
   /* Depending on how many inputs were supplied, call sasmsgl differently to get the message */
   /* We are assuming that s1-s7 are populated in that order (i.e. s2 is not populated when s1 is missing ) */
    msgfile = 'sashelp.rmbutilmsg';
    if not missing(s7) then msg = sasmsgl( msgfile, key, 'en', 'NOQUOTE', trim(s1), trim(s2), trim(s3), trim(s4), trim(s5), trim(s6), trim(s7) );
    else
         if not missing(s6) then msg = sasmsgl( msgfile, key, 'en', 'NOQUOTE', trim(s1), trim(s2), trim(s3), trim(s4), trim(s5), trim(s6) );
    else
         if not missing(s5) then msg = sasmsgl( msgfile, key, 'en', 'NOQUOTE', trim(s1), trim(s2), trim(s3), trim(s4), trim(s5) );
    else
         if not missing(s4) then msg = sasmsgl( msgfile, key, 'en', 'NOQUOTE', trim(s1), trim(s2), trim(s3), trim(s4) );
    else
         if not missing(s3) then msg = sasmsgl( msgfile, key, 'en', 'NOQUOTE', trim(s1), trim(s2), trim(s3) );
    else
         if not missing(s2) then msg = sasmsgl( msgfile, key, 'en', 'NOQUOTE', trim(s1), trim(s2) );
    else
         if not missing(s1) then msg = sasmsgl( msgfile, key, 'en', 'NOQUOTE', trim(s1) );
    else
         msg = sasmsgl( msgfile, key, 'en','NOQUOTE' );
   /* Print the message */
    return(msg);

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 subroutine RSK_PRINT_ERROR_MSG_AND_ABORT(key $, s1 $, s2 $, s3 $, s4 $, s5 $, s6 $, s7 $)
          label="Prints a message to the log, with call stack, and then aborts the current position"
          kind="Utility functions";
   /* Set the maximum length of the message */
    length msg $1024;
   /* hard code the maximum allowed messages to fifty */
    maxputs = 50;
   /* Get how many messages have been printed so far, default to zero */
   /* Note: although this function will set RSK_LOG_MESSAGE_COUNT to zero, it is strongly recommended
       that the user initialize RSK_LOG_MESSAGE_COUNT to zero in the init block of a project method */
    array message_count[1] / nosym;
    call dynamic_array(message_count,.);
    if missing(message_count[1]) then message_count[1]=1;
    else
         message_count[1]=message_count[1]+1;
    numputs=message_count[1];
   /* If we have not exceeded the number of allowed messages, then get and
       print this message, then abort using "assert" */
    if numputs le maxputs then do;
       msg = rsk_get_msg_subr(key, s1, s2, s3, s4, s5, s6, s7);
       call assert(0, trim(msg));
    end;
   /* If we have reached the maximum messages, send the message to let the user know that no more messages will be output. */
    if numputs eq maxputs+1 then do;
       msg = rsk_get_msg_subr('rsk_exceed_msg_limit_warning', 'NOQUOTE', '', '', '', '', '', '');
       file log;
       put msg;
       file print;
    end;

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 function RSK_CHECK_NUM_MISSING_PF(VariableValue, FunctionName $, VariableNum $, VariableName $, ErrorFoundFlag)
          label="Checks a value to verify that it is nonmissing"
          kind="Utility functions";
      /* Check missing: if found, print error message and return 1 */
       if missing(VariableValue) then do;
          call rsk_print_error_msg_and_abort( 'rsk_func_missing_inputs_error', FunctionName, VariableNum, VariableName, '', '', '', '' );
          return(1);
       end;
      /* If no errors found, return previous error status,
          or if no previous error status given, then set the status to zero (no error) */
       return(coalesce(ErrorFoundFlag,0));

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 function RSK_CHECK_NONPOSITIVE_PF(VariableValue, FunctionName $, VariableNum $, VariableName $, ErrorFoundFlag)
          label="Checks a value to verify that it is positive"
          kind="Utility functions";
      /* Check missing: if found, print error message and return 1 */
       if missing(VariableValue) then do;
          call rsk_print_error_msg_and_abort( 'rsk_func_missing_inputs_error', FunctionName, VariableNum, VariableName, '', '', '', '' );
          return(1);
       end;
      /* Check nonpositive (to machine accuracy): if found, print error message and return 1 */
       if VariableValue le constant('SQRTMACEPS') then do;
          call rsk_print_error_msg_and_abort( 'rsk_func_nonpos_inputs_error', FunctionName, VariableNum, VariableName, '', '', '', '' );
          return(1);
       end;
      /* If no errors found, return previous error status,
          or if no previous error status given, then set the status to zero (no error) */
       return(coalesce(ErrorFoundFlag,0));

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 function RSK_CHECK_ARRAY_PF(InputArray[*], ArraySize, CheckType $, FunctionName $, VariableNum $, VariableName $, ErrorFoundFlag)
          label="Checks the values of a one-dimensional array to verify they meet expected criteria"
          kind="Utility functions";
   /* Check array: if offense found, print error message and return 1 */
    newsize = min(ArraySize,dim(InputArray));
    i = .;
    tempvalue = coalesce(InputArray[1],0);
    if CheckType eq 'NONPOSITIVE' then do i = 1 to newsize while( InputArray[i] > 0 );
    end;
    else
         if CheckType eq 'NEGATIVE' then do i = 1 to newsize while( InputArray[i] ge 0 );
    end;
    else
         if CheckType eq 'MISSING' then do i = 1 to newsize while( not missing(InputArray[i]) );
    end;
    else
         if CheckType eq 'UNORDERED' then do i = 1 to newsize while( tempvalue le InputArray[i] );
       tempvalue = InputArray[i];
    end;
    if i le newsize and not missing(i) then do;
       if CheckType eq 'NONPOSITIVE' then do;
          call rsk_print_error_msg_and_abort( 'rsk_func_nonpos_array_error', FunctionName, VariableNum, VariableName, '', '', '', '' );
       end;
       else
            if CheckType eq 'NEGATIVE' then do;
          call rsk_print_error_msg_and_abort( 'rsk_func_neg_array_error', FunctionName, VariableNum, VariableName, '', '', '', '' );
       end;
       else
            if CheckType eq 'MISSING' then do;
          call rsk_print_error_msg_and_abort( 'rsk_func_miss_array_error', FunctionName, VariableNum, VariableName, '', '', '', '' );
       end;
       else
            if CheckType eq 'UNORDERED' then do;
          call rsk_print_error_msg_and_abort( 'rsk_func_order_array_error', FunctionName, VariableNum, VariableName, '', '', '', '' );
       end;
       return(1);
    end;
   /* If no errors found, return previous error status,
       or if no previous error status given, then set the status to zero (no error) */
    return(coalesce(ErrorFoundFlag,0));

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 function RSK_FIND_RIGHT(value,arr[*])
          label="Finds closest element of a sorted array which is greater than or equal to the input value"
          kind="Array Utility";
    cap1 = dim(arr)+1;
    up = cap1;
    lp = 1;
    do while( up-lp > 0 );
       mp = floor((up+lp)/2);
       if arr[mp] < value then lp = mp + 1;
       else
            if mp eq 1 then return(1);
       else
            if arr[mp-1] ge value then up = mp;
       else
            return(mp);
    end;
    return(cap1);

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 subroutine RSK_COMBINE_TWO_SCHEDULES(aggregation_method $, sched_one_dt[*], sched_one_amt[*], sched_one_num, sched_two_dt[*], sched_two_amt[*], sched_two_num, out_dt[*], out_amt[*], out_num)
          label="Combines two schedules into one"
          kind="Cash flow generation";
    outargs out_dt, out_amt, out_num;
   /* Initialize index variables and temporary date tracking */
    i = 1;
    j = 1;
    n = 0;
    TEMP_DT = min( sched_one_dt[1], sched_two_dt[1] );
   /* Loop through scenarion and capital schedules, merging them into a complete capital schedule */
    do while( ( i le sched_one_num or j le sched_two_num ) and not missing(TEMP_DT) );
      /* Get the next date */
       if i le sched_one_num then temp_cap_dt = sched_one_dt[i];
       else
            temp_cap_dt = .;
       if j le sched_two_num then temp_scen_dt = sched_two_dt[j];
       else
            temp_scen_dt = .;
       TEMP_DT = min( temp_cap_dt, temp_scen_dt );
      /* Reset flag marking whether this date exists in schedule one */
       sched_one_dt_exists = 0;
      /* If current date is from schedule one, use those values */
       if i le sched_one_num then do;
          if TEMP_DT eq sched_one_dt[i] then do;
             n = n + 1;
             out_dt[n] = sched_one_dt[i];
             out_amt[n] = sched_one_amt[i];
             sched_one_dt_exists = 1;
             i = i + 1;
          end;
       end;
      /* If current date is from schedule two, use those values */
       if j le sched_two_num then do;
          if TEMP_DT eq sched_two_dt[j] then do;
            /* If this date exists in both schedules, combine their values by method */
            /* Otherwise, just use schedule two amounts */
             if sched_one_dt_exists eq 1 then do;
                if upcase(aggregation_method) eq 'MIN' then out_amt[n] = min( out_amt[n], sched_two_amt[j] );
                else
                     if upcase(aggregation_method) eq 'MAX' then out_amt[n] = max( out_amt[n], sched_two_amt[j] );
                else
                     if upcase(aggregation_method) eq 'FIRST' then do;
                  /* Do nothing, leave as-is */
                end;
                else
                     if upcase(aggregation_method) eq 'SECOND' then out_amt[n] = sched_two_amt[j];
                else
                     out_amt[n] = sum( out_amt[n], sched_two_amt[j] );
                                                                      /* default to sum */
             end;
             else
                  do;
                n = n + 1;
                out_dt[n] = sched_two_dt[j];
                out_amt[n] = sched_two_amt[j];
             end;
             j = j + 1;
          end;
       end;
    end;
   /* Set the new size of the output array */
    out_num = n;

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 subroutine RSK_GEN_CASH_FLOW_AMOUNTS2(CurrentDate, PriorInterestPmtDt, PriorPrepmtDt, DayBasis $, InitialPrincipal, ResidualAmt, CurrentAccruedInt, InitialRate, CompTimeStep, FirstCompTimeStep, LastCompTimeStep, InterestTimeStep, FirstIntTimeStep, LastIntTimeStep, PrepmtTimeStep, FirstPrepmtTimeStep, LastPrepmtTimeStep, ResetDt[*], ResetRt[*], ResetNum, InterestDt[*], InterestAmt[*], InterestNum, CapitalDt[*], CapitalAmt[*], CapitalNum, CapitalBalanceDt[*], CapitalBalanceAmt[*], CapitalBalanceNum, Capital2Dt[*], Capital2Amt[*], Capital2BalanceAmt[*], Capital2Num, PrepmtDt[*], PrepaymentRt[*], PrepmtAmt[*], PrepmtNum, CompoundDt[*], CompoundAmt[*], CompoundNum, UsePrepaymentCalcNFlg, PrincipalPmtType, AnnuityPmtType, AnnuityPmtAmt, AnnuityValidDates[*], AnnuitySchedAmts[*], CapitalPmtArray[*], AllCapitalDt[*], AllCapitalAmt[*], AllCapitalNum)
          label="Generates a series of capital and interest payments given also a side schedule principal payment schedule"
          kind="Cash flow generation";
    outargs InterestAmt, PrepmtAmt, CompoundAmt, CapitalAmt, CapitalBalanceDt, CapitalBalanceAmt, CapitalBalanceNum, Capital2BalanceAmt, AllCapitalDt, AllCapitalAmt, AllCapitalNum;
   /**********************************************************************/
   /* Error and special case checking
    /**********************************************************************/
   /* Initialize the return missing flag to zero
       If we find an error in one of the inputs, we will return missing */
   /* Set the function name for error reporting */
    ErrorFoundFlg = 0;
    Fname = 'rsk_gen_cash_flow_amounts2';
   /* Make sure some input values are positive and nonmissing */
   /* Nonpositive or missing values for these variables may cause problems
       if input into another function (e.g. the logarithm function) */
    ErrorFoundFlg = rsk_check_num_missing_pf( CurrentDate, Fname, '1', 'CurrentDate', ErrorFoundFlg );
    ErrorFoundFlg = rsk_check_num_missing_pf( PriorInterestPmtDt, Fname, '2', 'PriorInterestPmtDt', ErrorFoundFlg );
    ErrorFoundFlg = rsk_check_num_missing_pf( InitialPrincipal, Fname, '5', 'InitialPrincipal', ErrorFoundFlg );
    ErrorFoundFlg = rsk_check_nonpositive_pf( InterestNum, Fname, '20', 'InterestNum', ErrorFoundFlg );
    if CapitalNum < 0 then do;
       ErrorFoundFlg = 1;
       call rsk_print_error_msg_and_abort( 'rsk_func_neg_inputs_error', Fname, '7', 'CapitalNum', '', '', '', '' );
    end;
    if PrincipalPmtType eq 1 and AnnuityPmtType eq 2 then do;
       ErrorFoundFlg = rsk_check_num_missing_pf( AnnuityPmtAmt, Fname, '38', 'AnnuityPmtAmt', ErrorFoundFlg );
    end;
    if UsePrepaymentCalcNFlg eq 1 then do;
       ErrorFoundFlg = rsk_check_num_missing_pf( PriorPrepmtDt, Fname, '3', 'PriorPrepmtDt', ErrorFoundFlg );
       ErrorFoundFlg = rsk_check_nonpositive_pf( PrepmtNum, Fname, '34', 'PrepmtNum', ErrorFoundFlg );
    end;
   /* Check arrays - date arrays must be ordered, other arrays
       must be nonmissing (if they are used) */
    if ResetNum > 0 then do;
       ErrorFoundFlg = rsk_check_array_pf( ResetDt, ResetNum, 'UNORDERED', Fname, '18', 'ResetDt', ErrorFoundFlg );
       ErrorFoundFlg = rsk_check_array_pf( ResetRt, ResetNum, 'MISSING', Fname, '19', 'ResetRt', ErrorFoundFlg );
    end;
    if InterestNum > 0 then do;
       ErrorFoundFlg = rsk_check_array_pf( InterestDt, InterestNum, 'UNORDERED', Fname, '21', 'InterestDt', ErrorFoundFlg );
    end;
    if CompoundNum > 0 then do;
       ErrorFoundFlg = rsk_check_array_pf( CompoundDt, CompoundNum, 'UNORDERED', Fname, '38', 'CompoundDt', ErrorFoundFlg );
    end;
    if CapitalNum > 0 then do;
       ErrorFoundFlg = rsk_check_array_pf( CapitalDt, CapitalNum, 'UNORDERED', Fname, '24', 'CapitalDt', ErrorFoundFlg );
       if PrincipalPmtType ne 1 then do;
          ErrorFoundFlg = rsk_check_array_pf( CapitalPmtArray, CapitalNum-1, 'MISSING', Fname, '45', 'CapitalPmtArray', ErrorFoundFlg );
       end;
    end;
    if Capital2Num > 0 then do;
       ErrorFoundFlg = rsk_check_array_pf( Capital2Dt, Capital2Num, 'UNORDERED', Fname, '30', 'Capital2Dt', ErrorFoundFlg );
       ErrorFoundFlg = rsk_check_array_pf( Capital2Amt, Capital2Num-1, 'MISSING', Fname, '31', 'Capital2Amt', ErrorFoundFlg );
    end;
    if UsePrepaymentCalcNFlg eq 1 then do;
       ErrorFoundFlg = rsk_check_array_pf( PrepaymentRt, PrepmtNum, 'MISSING', Fname, '35', 'PrepaymentRt', ErrorFoundFlg );
       ErrorFoundFlg = rsk_check_array_pf( PrepmtDt, PrepmtNum, 'UNORDERED', Fname, '34', 'PrepmtDt', ErrorFoundFlg );
    end;
   /* Leave subroutine, if errors are found */
    if ErrorFoundFlg eq 1 then return;
   /**********************************************************************/
   /* RESUME STANDARD PRICING
    /**********************************************************************/
   /* Initial indices */
    i = 1;
          /* tracks position in interest arrays */
    c = 1;
          /* tracks position in capital arrays */
    s = 1;
          /* tracks position in side schedule capital arrays */
    r = 1;
          /* tracks position in repricing/reset arrays */
    p = 1;
          /* tracks position in prepayment arrays */
    d = 1;
          /* tracks position in compound arrays */
   /* Initial values */
    CURRENT_PRINCIPAL_BALANCE = InitialPrincipal;
    TIME_WGTD_PRINC_BALANCE = 0;
    CUMULATIVE_COMP_TIME = 0;
    _RESIDUAL_ = max( ResidualAmt, 0 );
    NewFirstCompTimeStep = FirstCompTimeStep;
    temp_comp_amt = 0;
    _temp_annuity_index_ = .;
   /* Initial arrays */
    array CapitalPmtBalanceAmt[1] / nosym;
    array Prepmt_balance_Amt[1] / nosym;
    call dynamic_array(CapitalPmtBalanceAmt, max(CapitalNum,1));
    call dynamic_array(Prepmt_balance_Amt, max(PrepmtNum,1));
   /* Initial rate defaults to zero, for case when this is a zero-coupon bond */
    CURRENT_INTEREST_RATE = coalesce( InitialRate, 0 );
   /* Use input accrued interest, if supplied */
    if missing(CurrentAccruedInt) then do;
       LAST_DATE = PriorInterestPmtDt;
       CURRENT_ACCRUED_INTEREST = 0;
    end;
    else
         do;
       LAST_DATE = CurrentDate;
       CURRENT_ACCRUED_INTEREST = CurrentAccruedInt;
       if not missing(CompTimeStep) then do;
          COMP_TIME_STEP = coalesce( FirstCompTimeStep, CompTimeStep );
          time1 = rsk_daycount( DayBasis, CurrentDate, CompoundDt[1] );
          time2 = rsk_daycount( DayBasis, PriorInterestPmtDt, CompoundDt[1] );
          NewFirstCompTimeStep = time1 / time2 * COMP_TIME_STEP;
       end;
    end;
    CURRENT_DATE = LAST_DATE;
   /* Forward from first compounding date */
    DO WHILE( c le CapitalNum or d le CompoundNum and not missing(CURRENT_DATE) );
      /* If index exceeds array size, set date to missing */
       if c > CapitalNum then temp_bal_dt = .;
       else
            temp_bal_dt = CapitalDt[c];
       if s > Capital2Num then temp_bal2_dt = .;
       else
            temp_bal2_dt = Capital2Dt[s];
       if r > ResetNum then temp_rep_dt = .;
       else
            temp_rep_dt = ResetDt[r];
       if i > InterestNum then temp_int_dt = .;
       else
            temp_int_dt = InterestDt[i];
       if d > CompoundNum then temp_comp_dt = .;
       else
            temp_comp_dt = CompoundDt[d];
       if UsePrepaymentCalcNFlg eq 1 then do;
          if p > PrepmtNum then temp_prepmt_dt = .;
          else
               temp_prepmt_dt = PrepmtDt[p];
       end;
       else
            temp_prepmt_dt = .;
      /* Go to the next date, calculate time step */
       CURRENT_DATE = min( temp_comp_dt, temp_int_dt, temp_bal_dt, temp_bal2_dt, temp_rep_dt, temp_prepmt_dt );
       time_step = rsk_daycount( DayBasis, LAST_DATE, CURRENT_DATE );
      /* If using a fixed interest time step, then weight the principal balance and interest rate */
      /* Otherwise, keep track of the current accrued interest */
       if CompTimeStep > 0 then do;
          TIME_WGTD_PRINC_BALANCE = sum( TIME_WGTD_PRINC_BALANCE, sum(CURRENT_PRINCIPAL_BALANCE, temp_comp_amt) * time_step );
          TIME_WGTD_INT_RATE = sum( TIME_WGTD_INT_RATE, CURRENT_INTEREST_RATE * time_step );
          CUMULATIVE_COMP_TIME = sum( CUMULATIVE_COMP_TIME, time_step );
       end;
       else
            do;
          CURRENT_ACCRUED_INTEREST = CURRENT_ACCRUED_INTEREST + ( CURRENT_PRINCIPAL_BALANCE + temp_comp_amt ) * time_step * CURRENT_INTEREST_RATE;
       end;
      /* Initialize capital_pmt_flg */
       capital_pmt_flg = 0;
      /* WHEN PRINCIPAL PAYMENT IS MADE */
       if c le CapitalNum then do;
          if CURRENT_DATE eq CapitalDt[c] then do;
            /* Get the principal payment */
             if PrincipalPmtType eq 1 then do;
                                              /* Annuity payment */
               /* If using a fixed interest time step, then set CURRENT_ACCRUED_INTEREST */
               /* Since this is an annuity, this will just be the interest payment */
                if CompTimeStep > 0 then do;
                   if d eq 1 and NewFirstCompTimeStep > 0 then do;
                      COMP_TIME_STEP = NewFirstCompTimeStep;
                   end;
                   else
                        if d eq CompoundNum and LastCompTimeStep > 0 then do;
                      COMP_TIME_STEP = LastCompTimeStep;
                   end;
                   else
                        do;
                      COMP_TIME_STEP = CompTimeStep;
                   end;
                   if CUMULATIVE_COMP_TIME > 0 then do;
                      CURRENT_ACCRUED_INTEREST = ( TIME_WGTD_PRINC_BALANCE / CUMULATIVE_COMP_TIME ) * ( TIME_WGTD_INT_RATE / CUMULATIVE_COMP_TIME ) * COMP_TIME_STEP;
                   end;
                   else
                        CURRENT_ACCRUED_INTEREST = 0;
                  /* If making the first payment, then add the accrued interest */
                   if d eq 1 then CURRENT_ACCRUED_INTEREST = sum( CurrentAccruedInt, CURRENT_ACCRUED_INTEREST );
                end;
               /* Get the annuity payment, depending on the annuity type */
                if AnnuityPmtType eq 1 then do;
                                               /* VARIABLE */
                  /* If there are still payments to be made, calculate what they should be */
                  /* Otherwise, set the annuity payment to zero */
                   if _temp_annuity_ eq . and CURRENT_PRINCIPAL_BALANCE > _RESIDUAL_ and CURRENT_ACCRUED_INTEREST > 0 then
                                                            do;
                      _temp_annuity_ = MORT( CURRENT_PRINCIPAL_BALANCE-_RESIDUAL_, ., (temp_comp_amt + CURRENT_ACCRUED_INTEREST)/(CURRENT_PRINCIPAL_BALANCE -_RESIDUAL_), InterestNum+1-i );
                   end;
                end;
                else
                     if AnnuityPmtType eq 3 then do;
                   if _temp_annuity_index_ = . then do;
                      _temp_annuity_index_ = rsk_find_right(CURRENT_DATE, AnnuityValidDates);
                      _temp_annuity_date_ = AnnuityValidDates[_temp_annuity_index_];
                      _temp_annuity_ = AnnuitySchedAmts[_temp_annuity_index_];
                   end;
                   if CURRENT_DATE gt _temp_annuity_date_ then do;
                      _temp_annuity_index_ = _temp_annuity_index_ + 1;
                      _temp_annuity_date_ = AnnuityValidDates[_temp_annuity_index_];
                      _temp_annuity_ = AnnuitySchedAmts[_temp_annuity_index_];
                   end;
                end;
                else
                     _temp_annuity_ = AnnuityPmtAmt;
                                                    /* REGULAR */
               /* If this is also an interest payment date, then principal payment
                   is whatever is left over from the annuity payment */
               /* Otherwise, principal payment is the whole annuity payment */
                if CURRENT_DATE eq temp_int_dt and c < CapitalNum then do;
                  /* Interest cannot exceed payment - except on last payment */
                   if i < InterestNum then current_int_val = min( _temp_annuity_, CURRENT_ACCRUED_INTEREST + temp_comp_amt );
                   else
                        current_int_val = CURRENT_ACCRUED_INTEREST + temp_comp_amt;
                   PRINCIPAL_PAYMENT_AMT = max( _temp_annuity_ - current_int_val, 0 );
                  /* Update the balance with the excess interest */
                   CURRENT_PRINCIPAL_BALANCE = CURRENT_PRINCIPAL_BALANCE + CURRENT_ACCRUED_INTEREST + temp_comp_amt - current_int_val;
                  /* Update the accrued interest */
                   CURRENT_ACCRUED_INTEREST = current_int_val;
                end;
                else
                     do;
                   PRINCIPAL_PAYMENT_AMT = _temp_annuity_;
                end;
             end;
             else
                  PRINCIPAL_PAYMENT_AMT = CapitalPmtArray[c];
                                                             /* Array capital payment */
            /* Write the principal and balance */
             if c eq CapitalNum then do;
                CapitalPmtBalanceAmt[c] = 0;
                NEW_PRINC_PAYMENT = CURRENT_PRINCIPAL_BALANCE;
                CapitalAmt[c] = NEW_PRINC_PAYMENT;
                CURRENT_PRINCIPAL_BALANCE = 0;
             end;
             else
                  do;
                NEW_BALANCE = max( CURRENT_PRINCIPAL_BALANCE - PRINCIPAL_PAYMENT_AMT, _RESIDUAL_ );
                NEW_PRINC_PAYMENT = CURRENT_PRINCIPAL_BALANCE - NEW_BALANCE;
                CapitalPmtBalanceAmt[c] = NEW_BALANCE;
                CapitalAmt[c] = NEW_PRINC_PAYMENT;
                CURRENT_PRINCIPAL_BALANCE = NEW_BALANCE;
             end;
            /* Advance index and set capital_pmt_flg to 1 */
             capital_pmt_flg = 1;
             c = c + 1;
          end;
       end;
      /* WHEN SIDE SCHEDULE CAPITAL PAYMENT IS MADE */
       if s le Capital2Num then do;
          if CURRENT_DATE eq Capital2Dt[s] then do;
             CURRENT_PRINCIPAL_BALANCE = max( CURRENT_PRINCIPAL_BALANCE - Capital2Amt[s], _RESIDUAL_ );
             Capital2BalanceAmt[s] = CURRENT_PRINCIPAL_BALANCE;
             s = s + 1;
          end;
       end;
      /* WHEN PRINCIPAL PREPAYMENT IS MADE */
       if CURRENT_DATE eq temp_prepmt_dt and UsePrepaymentCalcNFlg eq 1 then do;
         /* If a fixed prepayment time step is provided, use that */
         /* Otherwise, calculate the time step with rsk_daycount */
          if PrepmtTimeStep > 0 then do;
             if p eq 1 and FirstPrepmtTimeStep > 0 then do;
                prepmt_time_step = FirstPrepmtTimeStep;
             end;
             else
                  if p eq PrepmtNum and LastPrepmtTimeStep > 0 then do;
                prepmt_time_step = LastPrepmtTimeStep;
             end;
             else
                  prepmt_time_step = PrepmtTimeStep;
          end;
          else
               do;
             if p eq 1 then prepmt_time_step = rsk_daycount( DayBasis, PriorPrepmtDt, CURRENT_DATE );
             else
                  prepmt_time_step = rsk_daycount( DayBasis, PrepmtDt[p-1], CURRENT_DATE );
          end;
         /*At the last capital payment date, the residual should be paid off */
          if CURRENT_DATE eq CapitalDt[CapitalNum] then do;
             Prepmt_balance_amt[p] = 0;
             PrepmtAmt[p] = 0;
          end;
          else
               do;
            /* Calculate the prepayment amount */
             PREPAY_RATE_ADJ = prepmt_time_step * PrepaymentRt[p];
             Prepay_Amt = max( PREPAY_RATE_ADJ*( CURRENT_PRINCIPAL_BALANCE - _RESIDUAL_ ), 0 );
             NEW_PRINCIPAL_BALANCE = max( CURRENT_PRINCIPAL_BALANCE - Prepay_Amt, _RESIDUAL_ );
             PrepmtAmt[p] = CURRENT_PRINCIPAL_BALANCE - NEW_PRINCIPAL_BALANCE;
             Prepmt_balance_amt[p] = NEW_PRINCIPAL_BALANCE;
             CURRENT_PRINCIPAL_BALANCE = NEW_PRINCIPAL_BALANCE;
          end;
         /* Reset temporary variables */
          PREPAY_RATE_ADJ = 0;
          Prepay_Amt = 0;
          prepmt_time_step = 0;
          NEW_PRINCIPAL_BALANCE = 0;
         /* Advance index */
          p = p + 1;
       end;
      /* WHEN INTEREST ACCUMULATES */
       if CURRENT_DATE eq temp_comp_dt then do;
         /* Calculate the interest payment, if the interest time step is fixed and
             this is not an annuity */
         /* Otherwise, just use the "running" accrued interest */
          if CompTimeStep > 0 and ( PrincipalPmtType ne 1 or ( PrincipalPmtType eq 1 and CompoundNum ne InterestNum ) ) then
                                                                                                    do;
             if d eq 1 and NewFirstCompTimeStep > 0 then do;
                COMP_TIME_STEP = NewFirstCompTimeStep;
             end;
             else
                  if d eq CompoundNum and LastCompTimeStep > 0 then do;
                COMP_TIME_STEP = LastCompTimeStep;
             end;
             else
                  COMP_TIME_STEP = CompTimeStep;
             if CUMULATIVE_COMP_TIME > 0 then do;
                TIME_WGTD_PRINC_BALANCE = TIME_WGTD_PRINC_BALANCE / CUMULATIVE_COMP_TIME;
                TIME_WGTD_INT_RATE = TIME_WGTD_INT_RATE / CUMULATIVE_COMP_TIME;
                CompoundAmt[d] = TIME_WGTD_PRINC_BALANCE * TIME_WGTD_INT_RATE * COMP_TIME_STEP;
             end;
             else
                  CompoundAmt[d] = 0;
            /* If making the first payment, then add the accrued interest */
             if d eq 1 then CompoundAmt[d] = sum( CurrentAccruedInt, CompoundAmt[d] );
          end;
          else
               CompoundAmt[d] = CURRENT_ACCRUED_INTEREST;
          temp_comp_amt = sum( temp_comp_amt, CompoundAmt[d] );
         /* Reset temporary variables */
          TIME_WGTD_PRINC_BALANCE = 0;
          CUMULATIVE_COMP_TIME = 0;
          CURRENT_ACCRUED_INTEREST = 0;
          TIME_WGTD_INT_RATE = 0;
         /* Advance index */
          d = d + 1;
       end;
      /* WHEN INTEREST PAYMENT IS MADE */
       if CURRENT_DATE eq temp_int_dt then do;
         /* Interest amount should not exceed the annuity amount */
          if PrincipalPmtType eq 1 and i < InterestNum then InterestAmt[i] = min( _temp_annuity_, temp_comp_amt );
         /* Put accumulated interests into interest leg and reset temp_comp_amt */
          else
               InterestAmt[i] = temp_comp_amt;
         /* If this is an annuity and we are not on a capital payment date,
             then roll the interest into the balance */
          if PrincipalPmtType eq 1 and capital_pmt_flg ne 1 and CURRENT_PRINCIPAL_BALANCE > 0 then do;
             CURRENT_PRINCIPAL_BALANCE = sum( CURRENT_PRINCIPAL_BALANCE, temp_comp_amt );
             InterestAmt[i] = 0;
          end;
         /* Reset cumulative interest */
          temp_comp_amt = 0;
         /* Advance index */
          i = i + 1;
       end;
      /* WHEN THE INTEREST RATE CHANGES */
       if r le ResetNum then do;
          if CURRENT_DATE eq ResetDt[r] then do;
             CURRENT_INTEREST_RATE = ResetRt[r];
             r = r + 1;
            /*Get the variable annuity payment*/
             if PrincipalPmtType eq 1 and AnnuityPmtType eq 1 then do;
                                                                      /* VARIABLE */
               /* If there are still payments to be made, calculate what they should be */
               /* Otherwise, set the annuity payment to zero */
               /* Annuity reset date must be an interest payment date, so than i must be greater than 1,*/
               /* If not, set _temp_annuity_ to be missing and calculate in capital payment amounts calculation*/
                if CompTimeStep > 0 then do;
                   if d eq 1 and NewFirstCompTimeStep > 0 then do;
                      NEXT_COMP_TIME_STEP = NewFirstCompTimeStep;
                   end;
                   else
                        if d eq CompoundNum and LastCompTimeStep > 0 then do;
                      NEXT_COMP_TIME_STEP = LastCompTimeStep;
                   end;
                   else
                        do;
                      NEXT_COMP_TIME_STEP = CompTimeStep;
                   end;
                end;
                else
                     if d > 1 then NEXT_COMP_TIME_STEP = rsk_daycount(DayBasis, CompoundDt[d-1], CompoundDt[d]);
                if InterestTimeStep > 0 then do;
                   if i eq 1 and FirstIntTimeStep > 0 then do;
                      NEXT_INT_TIME_STEP = FirstIntTimeStep;
                   end;
                   else
                        if i eq InterestNum and LastIntTimeStep > 0 then do;
                      NEXT_INT_TIME_STEP = LastIntTimeStep;
                   end;
                   else
                        do;
                      NEXT_INT_TIME_STEP = InterestTimeStep;
                   end;
                end;
                else
                     if i > 1 then NEXT_INT_TIME_STEP = rsk_daycount(DayBasis, InterestDt[d-1], InterestDt[d]);
               /* Get the effective interest rate for amortization */
                convert_ratio = round( NEXT_INT_TIME_STEP/NEXT_COMP_TIME_STEP );
                amort_interest_rate = ( CURRENT_INTEREST_RATE*NEXT_COMP_TIME_STEP + 1 )**convert_ratio - 1;
                if NEXT_COMP_TIME_STEP ne . then do;
                   if CURRENT_PRINCIPAL_BALANCE > _RESIDUAL_ then
                      _temp_annuity_ = MORT( CURRENT_PRINCIPAL_BALANCE-_RESIDUAL_, ., amort_interest_rate, InterestNum+1-i );
                   else
                        _temp_annuity_ = 0;
                end;
                else
                     _temp_annuity_ = .;
                                        /*Set it to be missing in case reset date is different from interest date*/
             end;
          end;
       end;
      /* Set the last date to the current date for next iteration,
          but use the last date if the current date was in the past
          ( this allows us to "skip" dates that are before the initial
          date ) */
       LAST_DATE = max( LAST_DATE, CURRENT_DATE );
    END;
   /* Set arrays AllCapitalDt, AllCapitalAmt, AllCapitalNum by combining capital repayment
        and capital prepayment schedules */
   /* Set arrays CapitalBalanceAmt, CapitalBalanceDt and CapitalBalanceNum
     by combining capital repayment and capital prepayment schedule */
    if UsePrepaymentCalcNFlg eq 1 then do;
       call rsk_combine_two_schedules( 'SUM', CapitalDt, CapitalAmt, CapitalNum, PrepmtDt, PrepmtAmt, PrepmtNum, AllCapitalDt, AllCapitalAmt, AllCapitalNum );
       call rsk_combine_two_schedules( 'SECOND', CapitalDt, CapitalPmtBalanceAmt, CapitalNum, PrepmtDt, Prepmt_balance_amt, PrepmtNum, CapitalBalanceDt, CapitalBalanceAmt, CapitalBalanceNum );
    end;
    else
         do;
       do i = 1 to CapitalNum;
          AllCapitalDt[i] = CapitalDt[i];
          CapitalBalanceDt[i] = CapitalDt[i];
          AllCapitalAmt[i] = CapitalAmt[i];
          CapitalBalanceAmt[i] = CapitalPmtBalanceAmt[i];
       end;
       CapitalBalanceNum = CapitalNum;
       AllCapitalNum = CapitalNum;
    end;
   /* A missing current_date indicates a problem in the input schedules */
    if missing(CURRENT_DATE) then do;
       call rsk_print_error_msg_and_abort( 'rsk_bad_cf_arrays_error', Fname, '', '', '', '', '', '' );
    end;

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 subroutine RSK_GEN_BASE_INTEREST(CurrentDate, PriorInterestPmtDt, DayBasis $, InitialPrincipal, CurrentAccruedInt, InitialRate, CompTimeStep, FirstCompTimeStep, LastCompTimeStep, ResetDt[*], BaseRt[*], ResetNum, InterestDt[*], BaseInterestAmt[*], InterestNum, CapitalDt[*], CapitalBalanceAmt[*], CapitalNum, CompoundDt[*], CompoundNum)
          label="Calculates a series of interest payments, given the rate resets and future balances"
          kind="Cash flow generation";
    outargs BaseInterestAmt;
   /**********************************************************************/
   /* Error and special case checking
    /**********************************************************************/
   /* Initialize the return missing flag to zero
       If we find an error in one of the inputs, we will return missing */
   /* Set the function name for error reporting */
    ReturnFlg = 0;
    Fname = 'rsk_gen_base_interest';
   /* Return before pricing, if errors are found */
    if ReturnFlg eq 1 then return;
   /**********************************************************************/
   /* RESUME STANDARD PRICING
    /**********************************************************************/
   /* Initial indices */
    i = 1;
          /* tracks position in interest arrays */
    c = 1;
          /* tracks position in capital arrays */
    r = 1;
          /* tracks position in repricing/reset arrays */
    d = 1;
          /* tracks position in compound arrays */
    Array CompoundAmt[1] /nosym;
    _cf_num_ = max(CompoundNum, InterestNum, 1);
    CALL DYNAMIC_ARRAY(CompoundAmt, _cf_num_);
   /* Initial values */
    CURRENT_PRINCIPAL_BALANCE = InitialPrincipal;
    TIME_WGTD_PRINC_BALANCE = 0;
    CUMULATIVE_COMP_TIME = 0;
    CURRENT_INTEREST_RATE = InitialRate;
    NewFirstCompTimeStep = FirstCompTimeStep;
    temp_comp_amt = 0;
   /* Use input accrued interest, if supplied */
    if missing(CurrentAccruedInt) then do;
       LAST_DATE = PriorInterestPmtDt;
       CURRENT_ACCRUED_INTEREST = 0;
    end;
    else
         do;
       LAST_DATE = CurrentDate;
       CURRENT_ACCRUED_INTEREST = CurrentAccruedInt;
       if not missing(CompTimeStep) then do;
          COMP_TIME_STEP = coalesce( FirstCompTimeStep, CompTimeStep );
          time1 = rsk_daycount( DayBasis, CurrentDate, CompoundDt[1] );
          time2 = rsk_daycount( DayBasis, PriorInterestPmtDt, CompoundDt[1] );
          NewFirstCompTimeStep = time1 / time2 * COMP_TIME_STEP;
       end;
    end;
    CURRENT_DATE = LAST_DATE;
   /* Forward from first compounding date */
    DO WHILE( d le CompoundNum and not missing(CURRENT_DATE) );
      /* If index exceeds array size, set date to missing */
       if i > InterestNum then temp_int_dt = .;
       else
            temp_int_dt = InterestDt[i];
       if d > CompoundNum then temp_comp_dt = .;
       else
            temp_comp_dt = CompoundDt[d];
       if c > CapitalNum then temp_bal_dt = .;
       else
            temp_bal_dt = CapitalDt[c];
       if r > ResetNum then temp_rep_dt = .;
       else
            temp_rep_dt = ResetDt[r];
      /* Go to the next date, calculate time step */
       CURRENT_DATE = min( temp_comp_dt, temp_int_dt, temp_bal_dt, temp_rep_dt );
       time_step = rsk_daycount( DayBasis, LAST_DATE, CURRENT_DATE );
      /* If using a fixed interest time step, then weight the principal balance and interest rate */
      /* Otherwise, keep track of the current accrued interest */
       if CompTimeStep > 0 then do;
          TIME_WGTD_PRINC_BALANCE = sum( TIME_WGTD_PRINC_BALANCE, ( CURRENT_PRINCIPAL_BALANCE + temp_comp_amt )* time_step );
          TIME_WGTD_INT_RATE = sum( TIME_WGTD_INT_RATE, CURRENT_INTEREST_RATE * time_step );
          CUMULATIVE_COMP_TIME = sum( CUMULATIVE_COMP_TIME, time_step );
       end;
       else
            do;
          CURRENT_ACCRUED_INTEREST = CURRENT_ACCRUED_INTEREST + ( CURRENT_PRINCIPAL_BALANCE + temp_comp_amt )* time_step * CURRENT_INTEREST_RATE;
       end;
      /* WHEN PRINCIPAL PAYMENT IS MADE */
       if c le CapitalNum then do;
          if CURRENT_DATE eq CapitalDt[c] then do;
            /* Read the current principal */
             CURRENT_PRINCIPAL_BALANCE = CapitalBalanceAmt[c];
            /* Advance index */
             c = c + 1;
          end;
       end;
      /* WHEN INTEREST PAYMENT ACCUMULATES */
       if CURRENT_DATE eq temp_comp_dt then do;
         /* Calculate the interest payment, if the interest time step is fixed */
         /* Otherwise, just use the "running" accrued interest */
          if CompTimeStep > 0 then do;
             if d eq 1 and NewFirstCompTimeStep > 0 then do;
                COMP_TIME_STEP = NewFirstCompTimeStep;
             end;
             else
                  if d eq CompoundNum and LastCompTimeStep > 0 then do;
                COMP_TIME_STEP = LastCompTimeStep;
             end;
             else
                  do;
                COMP_TIME_STEP = CompTimeStep;
             end;
             if CUMULATIVE_COMP_TIME > 0 then do;
                TIME_WGTD_PRINC_BALANCE = TIME_WGTD_PRINC_BALANCE / CUMULATIVE_COMP_TIME;
                TIME_WGTD_INT_RATE = TIME_WGTD_INT_RATE / CUMULATIVE_COMP_TIME;
                CompoundAmt[d] = TIME_WGTD_PRINC_BALANCE * TIME_WGTD_INT_RATE * COMP_TIME_STEP;
             end;
             else
                  CompoundAmt[d] = 0;
            /* If making the first payment, then add the accrued interest */
             if d eq 1 then CompoundAmt[d] = sum( CurrentAccruedInt, CompoundAmt[d] );
          end;
          else
               CompoundAmt[d] = CURRENT_ACCRUED_INTEREST;
          temp_comp_amt = sum( temp_comp_amt, CompoundAmt[d] );
         /* Reset temporary variables */
          TIME_WGTD_PRINC_BALANCE = 0;
          CUMULATIVE_COMP_TIME = 0;
          CURRENT_ACCRUED_INTEREST = 0;
          TIME_WGTD_INT_RATE = 0;
         /* Advance index */
          d = d + 1;
       end;
      /* WHEN INTEREST PAYMENT IS MADE */
       if CURRENT_DATE eq temp_int_dt then do;
         /* Put accumulated interests into interest leg */
          BaseInterestAmt[i] = temp_comp_amt;
         /* Reset cumulative interest */
          temp_comp_amt = 0;
         /* Advance index */
          i = i + 1;
       end;
      /* WHEN THE INTEREST RATE CHANGES */
       if r le ResetNum then do;
          if CURRENT_DATE eq ResetDt[r] then do;
             CURRENT_INTEREST_RATE = BaseRt[r];
             r = r + 1;
          end;
       end;
      /* Set the last date to the current date for next iteration,
          but use the last date if the current date was in the past
          ( this allows us to "skip" dates that are before the initial
          date ) */
       LAST_DATE = max( LAST_DATE, CURRENT_DATE );
    END;
   /* A missing current_date indicates a problem in the input schedules */
    if missing(CURRENT_DATE) then do;
       call rsk_print_error_msg_and_abort( 'rsk_bad_cf_arrays_error', Fname, '', '', '', '', '', '' );
    end;

 endsub;
run;
quit;




proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 subroutine RSK_GEN_CASH_FLOW_AMOUNTS(CurrentDate, PriorInterestPmtDt, PriorPrepmtDt, DayBasis $, InitialPrincipal, ResidualAmt, CurrentAccruedInt, InitialRate, CompTimeStep, FirstCompTimeStep, LastCompTimeStep, InterestTimeStep, FirstIntTimeStep, LastIntTimeStep, PrepmtTimeStep, FirstPrepmtTimeStep, LastPrepmtTimeStep, ResetDt[*], ResetRt[*], ResetNum, InterestDt[*], InterestAmt[*], InterestNum, CapitalDt[*], CapitalAmt[*], CapitalNum, CapitalBalanceDt[*], CapitalBalanceAmt[*], CapitalBalanceNum, PrepmtDt[*], PrepaymentRt[*], PrepmtAmt[*], PrepmtNum, CompoundDt[*], CompoundAmt[*], CompoundNum, UsePrepaymentCalcNFlg, PrincipalPmtType, AnnuityPmtType, AnnuityPmtAmt, AnnuityValidDates[*], AnnuitySchedAmts[*], CapitalPmtArray[*], AllCapitalDt[*], AllCapitalAmt[*], AllCapitalNum)
          label="Generates a series of capital and interest payments"
          kind="Cash flow generation";
    outargs InterestAmt, CapitalAmt, PrepmtAmt, CompoundAmt, CapitalBalanceDt, CapitalBalanceNum, CapitalBalanceAmt, AllCapitalDt, AllCapitalAmt, AllCapitalNum;
   /**********************************************************************/
   /* Error and special case checking
    /**********************************************************************/
   /* Initialize the return missing flag to zero
       If we find an error in one of the inputs, we will return missing */
   /* Set the function name for error reporting */
    ErrorFoundFlg = 0;
    Fname = 'rsk_gen_cash_flow_amounts';
   /* Make sure some input values are positive and nonmissing */
   /* Nonpositive or missing values for these variables may cause problems
       if input into another function (e.g. the logarithm function) */
    ErrorFoundFlg = rsk_check_num_missing_pf( CurrentDate, Fname, '1', 'CurrentDate', ErrorFoundFlg );
    ErrorFoundFlg = rsk_check_num_missing_pf( PriorInterestPmtDt, Fname, '2', 'PriorInterestPmtDt', ErrorFoundFlg );
    if UsePrepaymentCalcNFlg eq 1 then do;
       ErrorFoundFlg = rsk_check_num_missing_pf( PriorPrepmtDt, Fname, '3', 'PriorPrepmtDt', ErrorFoundFlg );
       ErrorFoundFlg = rsk_check_nonpositive_pf( PrepmtNum, Fname, '30', 'PrepmtNum', ErrorFoundFlg );
    end;
    ErrorFoundFlg = rsk_check_num_missing_pf( InitialPrincipal, Fname, '5', 'InitialPrincipal', ErrorFoundFlg );
    ErrorFoundFlg = rsk_check_nonpositive_pf( InterestNum, Fname, '20', 'InterestNum', ErrorFoundFlg );
    ErrorFoundFlg = rsk_check_nonpositive_pf( CapitalNum, Fname, '23', 'CapitalNum', ErrorFoundFlg );
    if PrincipalPmtType eq 1 and AnnuityPmtType eq 2 then do;
       ErrorFoundFlg = rsk_check_num_missing_pf( AnnuityPmtAmt, Fname, '29', 'AnnuityPmtAmt', ErrorFoundFlg );
    end;
   /* Check arrays - date arrays must be ordered, other arrays
       must be nonmissing (if they are used) */
    if ResetNum > 0 then do;
       ErrorFoundFlg = rsk_check_array_pf( ResetDt, ResetNum, 'UNORDERED', Fname, '18', 'ResetDt', ErrorFoundFlg );
       ErrorFoundFlg = rsk_check_array_pf( ResetRt, ResetNum, 'MISSING', Fname, '19', 'ResetRt', ErrorFoundFlg );
    end;
    if InterestNum > 0 then do;
       ErrorFoundFlg = rsk_check_array_pf( InterestDt, InterestNum, 'UNORDERED', Fname, '21', 'InterestDt', ErrorFoundFlg );
    end;
    if CompoundNum > 0 then do;
       ErrorFoundFlg = rsk_check_array_pf( CompoundDt, CompoundNum, 'UNORDERED', Fname, '34', 'CompoundDt', ErrorFoundFlg );
    end;
    if CapitalNum > 0 then do;
       ErrorFoundFlg = rsk_check_array_pf( CapitalDt, CapitalNum, 'UNORDERED', Fname, '24', 'CapitalDt', ErrorFoundFlg );
       if PrincipalPmtType ne 1 then do;
          ErrorFoundFlg = rsk_check_array_pf( CapitalPmtArray, CapitalNum-1, 'MISSING', Fname, '41', 'CapitalPmtArray', ErrorFoundFlg );
       end;
    end;
    if UsePrepaymentCalcNFlg eq 1 then do;
       ErrorFoundFlg = rsk_check_array_pf( PrepaymentRt, PrepmtNum, 'MISSING', Fname, '31', 'PrepaymentRt', ErrorFoundFlg );
       ErrorFoundFlg = rsk_check_array_pf( PrepmtDt, PrepmtNum, 'UNORDERED', Fname, '30', 'PrepmtDt', ErrorFoundFlg );
    end;
   /* Leave subroutine, if errors are found */
    if ErrorFoundFlg eq 1 then return;
   /**********************************************************************/
   /* RESUME STANDARD PRICING
    /**********************************************************************/
   /* Initial indices */
    i = 1;
          /* tracks position in interest arrays */
    c = 1;
          /* tracks position in capital arrays */
    r = 1;
          /* tracks position in repricing/reset arrays */
    p = 1;
          /* tracks position in prepayment arrays */
    d = 1;
          /* tracks position in compound arrays */
   /* Initial values */
    CURRENT_PRINCIPAL_BALANCE = InitialPrincipal;
    TIME_WGTD_PRINC_BALANCE = 0;
    CUMULATIVE_COMP_TIME = 0;
    _RESIDUAL_ = max( ResidualAmt, 0 );
    NewFirstCompTimeStep = FirstCompTimeStep;
    temp_comp_amt = 0;
    _temp_annuity_index_ = .;
   /* Initial arrays */
    array CapitalPmtBalanceAmt[1] / nosym;
    array Prepmt_balance_Amt[1] / nosym;
    call dynamic_array(CapitalPmtBalanceAmt, max(CapitalNum,1));
    call dynamic_array(Prepmt_balance_Amt, max(PrepmtNum,1));
   /* Initial rate defaults to zero, for case when this is a zero-coupon bond */
    CURRENT_INTEREST_RATE = coalesce( InitialRate, 0 );
   /* Use input accrued interest, if supplied */
    if missing(CurrentAccruedInt) then do;
       LAST_DATE = PriorInterestPmtDt;
       CURRENT_ACCRUED_INTEREST = 0;
    end;
    else
         do;
       LAST_DATE = CurrentDate;
       CURRENT_ACCRUED_INTEREST = CurrentAccruedInt;
       if not missing(CompTimeStep) then do;
          COMP_TIME_STEP = coalesce( FirstCompTimeStep, CompTimeStep );
          time1 = rsk_daycount( DayBasis, CurrentDate, CompoundDt[1] );
          time2 = rsk_daycount( DayBasis, PriorInterestPmtDt, CompoundDt[1] );
          NewFirstCompTimeStep = time1 / time2 * COMP_TIME_STEP;
       end;
    end;
    CURRENT_DATE = LAST_DATE;
   /* Forward from first compounding date */
    DO WHILE( c le CapitalNum or d le CompoundNum and not missing(CURRENT_DATE) );
      /* If index exceeds array size, set date to missing */
       if c > CapitalNum then temp_bal_dt = .;
       else
            temp_bal_dt = CapitalDt[c];
       if r > ResetNum then temp_rep_dt = .;
       else
            temp_rep_dt = ResetDt[r];
       if i > InterestNum then temp_int_dt = .;
       else
            temp_int_dt = InterestDt[i];
       if d > CompoundNum then temp_comp_dt = .;
       else
            temp_comp_dt = CompoundDt[d];
       if UsePrepaymentCalcNFlg eq 1 then do;
          if p > PrepmtNum then temp_prepmt_dt = .;
          else
               temp_prepmt_dt = PrepmtDt[p];
       end;
       else
            temp_prepmt_dt = .;
      /* Go to the next date, calculate time step */
       CURRENT_DATE = min( temp_comp_dt, temp_int_dt, temp_bal_dt, temp_rep_dt, temp_prepmt_dt );
       time_step = rsk_daycount( DayBasis, LAST_DATE, CURRENT_DATE );
      /* If using a fixed interest time step, then weight the principal balance and interest rate */
      /* Otherwise, keep track of the current accrued interest */
       if CompTimeStep > 0 then do;
          TIME_WGTD_PRINC_BALANCE = sum( TIME_WGTD_PRINC_BALANCE, sum(CURRENT_PRINCIPAL_BALANCE, temp_comp_amt) * time_step );
          TIME_WGTD_INT_RATE = sum( TIME_WGTD_INT_RATE, CURRENT_INTEREST_RATE * time_step );
          CUMULATIVE_COMP_TIME = sum( CUMULATIVE_COMP_TIME, time_step );
       end;
       else
            do;
          CURRENT_ACCRUED_INTEREST = CURRENT_ACCRUED_INTEREST + ( CURRENT_PRINCIPAL_BALANCE + temp_comp_amt ) * time_step * CURRENT_INTEREST_RATE;
       end;
      /* Initialize capital_pmt_flg */
       capital_pmt_flg = 0;
      /* WHEN PRINCIPAL PAYMENT IS MADE */
       if c le CapitalNum then do;
          if CURRENT_DATE eq CapitalDt[c] then do;
            /* Get the principal payment */
             if PrincipalPmtType eq 1 then do;
                                              /* Annuity payment */
               /* If using a fixed interest time step, then set CURRENT_ACCRUED_INTEREST */
               /* Since this is an annuity, this will just be the interest payment */
                if CompTimeStep > 0 then do;
                   if d eq 1 and NewFirstCompTimeStep > 0 then do;
                      COMP_TIME_STEP = NewFirstCompTimeStep;
                   end;
                   else
                        if d eq CompoundNum and LastCompTimeStep > 0 then do;
                      COMP_TIME_STEP = LastCompTimeStep;
                   end;
                   else
                        do;
                      COMP_TIME_STEP = CompTimeStep;
                   end;
                   if CUMULATIVE_COMP_TIME > 0 then do;
                      CURRENT_ACCRUED_INTEREST = ( TIME_WGTD_PRINC_BALANCE / CUMULATIVE_COMP_TIME ) * ( TIME_WGTD_INT_RATE / CUMULATIVE_COMP_TIME ) * COMP_TIME_STEP;
                   end;
                   else
                        CURRENT_ACCRUED_INTEREST = 0;
                  /* If making the first payment, then add the accrued interest */
                   if d eq 1 then CURRENT_ACCRUED_INTEREST = sum( CurrentAccruedInt, CURRENT_ACCRUED_INTEREST );
                end;
               /* Get the annuity payment, depending on the annuity type */
                if AnnuityPmtType eq 1 then do;
                                               /* VARIABLE */
                  /* If there are still payments to be made, calculate what they should be */
                  /* Otherwise, set the annuity payment to zero */
                   if _temp_annuity_ eq . and CURRENT_PRINCIPAL_BALANCE > _RESIDUAL_ and CURRENT_ACCRUED_INTEREST > 0 then
                                                            do;
                      _temp_annuity_ = MORT( CURRENT_PRINCIPAL_BALANCE-_RESIDUAL_, ., (temp_comp_amt + CURRENT_ACCRUED_INTEREST)/(CURRENT_PRINCIPAL_BALANCE -_RESIDUAL_), InterestNum+1-i );
                   end;
                end;
                else
                     if AnnuityPmtType eq 3 then do;
                   if _temp_annuity_index_ = . then do;
                      _temp_annuity_index_ = rsk_find_right(CURRENT_DATE, AnnuityValidDates);
                      _temp_annuity_date_ = AnnuityValidDates[_temp_annuity_index_];
                      _temp_annuity_ = AnnuitySchedAmts[_temp_annuity_index_];
                   end;
                   if CURRENT_DATE gt _temp_annuity_date_ then do;
                      _temp_annuity_index_ = _temp_annuity_index_ + 1;
                      _temp_annuity_date_ = AnnuityValidDates[_temp_annuity_index_];
                      _temp_annuity_ = AnnuitySchedAmts[_temp_annuity_index_];
                   end;
                end;
                else
                     _temp_annuity_ = AnnuityPmtAmt;
                                                    /* REGULAR */
               /* If this is also an interest payment date, then principal payment
                   is whatever is left over from the annuity payment */
               /* Otherwise, principal payment is the whole annuity payment */
                if CURRENT_DATE eq temp_int_dt and c < CapitalNum then do;
                  /* Interest cannot exceed payment - except on last payment */
                   if i < InterestNum then current_int_val = min( _temp_annuity_, CURRENT_ACCRUED_INTEREST + temp_comp_amt );
                   else
                        current_int_val = CURRENT_ACCRUED_INTEREST + temp_comp_amt;
                   PRINCIPAL_PAYMENT_AMT = max( _temp_annuity_ - current_int_val, 0 );
                  /* Update the balance with the excess interest */
                   CURRENT_PRINCIPAL_BALANCE = CURRENT_PRINCIPAL_BALANCE + CURRENT_ACCRUED_INTEREST + temp_comp_amt - current_int_val;
                  /* Update the accrued interest */
                   CURRENT_ACCRUED_INTEREST = current_int_val;
                end;
                else
                     do;
                   PRINCIPAL_PAYMENT_AMT = _temp_annuity_;
                end;
             end;
             else
                  PRINCIPAL_PAYMENT_AMT = CapitalPmtArray[c];
                                                             /* Array capital payment */
            /* Write the principal and balance */
             if c eq CapitalNum then do;
                CapitalPmtBalanceAmt[c] = 0;
                NEW_PRINC_PAYMENT = CURRENT_PRINCIPAL_BALANCE;
                CapitalAmt[c] = NEW_PRINC_PAYMENT;
                CURRENT_PRINCIPAL_BALANCE = 0;
             end;
             else
                  do;
                NEW_BALANCE = max( CURRENT_PRINCIPAL_BALANCE - PRINCIPAL_PAYMENT_AMT, _RESIDUAL_ );
                NEW_PRINC_PAYMENT = CURRENT_PRINCIPAL_BALANCE - NEW_BALANCE;
                CapitalPmtBalanceAmt[c] = NEW_BALANCE;
                CapitalAmt[c] = NEW_PRINC_PAYMENT;
                CURRENT_PRINCIPAL_BALANCE = NEW_BALANCE;
             end;
            /* Advance index and set capital_pmt_flg to 1 */
             capital_pmt_flg = 1;
             c = c + 1;
          end;
       end;
      /* WHEN PRINCIPAL PREPAYMENT IS MADE */
       if CURRENT_DATE eq temp_prepmt_dt and UsePrepaymentCalcNFlg eq 1 then do;
         /* If a fixed prepayment time step is provided, use that */
         /* Otherwise, calculate the time step with rsk_daycount */
          if PrepmtTimeStep > 0 then do;
             if p eq 1 and FirstPrepmtTimeStep > 0 then do;
                prepmt_time_step = FirstPrepmtTimeStep;
             end;
             else
                  if p eq PrepmtNum and LastPrepmtTimeStep > 0 then do;
                prepmt_time_step = LastPrepmtTimeStep;
             end;
             else
                  prepmt_time_step = PrepmtTimeStep;
          end;
          else
               do;
             if p eq 1 then prepmt_time_step = rsk_daycount( DayBasis, PriorPrepmtDt, CURRENT_DATE );
             else
                  prepmt_time_step = rsk_daycount( DayBasis, PrepmtDt[p-1], CURRENT_DATE );
          end;
         /*At the last capital payment date, the residual should be paid off */
          if CURRENT_DATE eq CapitalDt[CapitalNum] then do;
             Prepmt_balance_amt[p] = 0;
             PrepmtAmt[p] = 0;
          end;
          else
               do;
            /* Calculate the prepayment amount */
             PREPAY_RATE_ADJ = prepmt_time_step * PrepaymentRt[p];
             Prepay_Amt = max( PREPAY_RATE_ADJ*( CURRENT_PRINCIPAL_BALANCE - _RESIDUAL_ ), 0 );
             NEW_PRINCIPAL_BALANCE = max( CURRENT_PRINCIPAL_BALANCE - Prepay_Amt, _RESIDUAL_ );
             PrepmtAmt[p] = CURRENT_PRINCIPAL_BALANCE - NEW_PRINCIPAL_BALANCE;
             Prepmt_balance_amt[p] = NEW_PRINCIPAL_BALANCE;
             CURRENT_PRINCIPAL_BALANCE = NEW_PRINCIPAL_BALANCE;
          end;
         /* Reset temporary variables */
          PREPAY_RATE_ADJ = 0;
          Prepay_Amt = 0;
          prepmt_time_step = 0;
          NEW_PRINCIPAL_BALANCE = 0;
         /* Advance index */
          p = p + 1;
       end;
      /* WHEN INTEREST ACCUMULATES */
       if CURRENT_DATE eq temp_comp_dt then do;
         /* Calculate the interest payment, if the interest time step is fixed and
             this is not an annuity */
         /* Otherwise, just use the "running" accrued interest */
          if CompTimeStep > 0 and ( PrincipalPmtType ne 1 or ( PrincipalPmtType eq 1 and CompoundNum ne InterestNum ) ) then
                                                                                                    do;
             if d eq 1 and NewFirstCompTimeStep > 0 then do;
                COMP_TIME_STEP = NewFirstCompTimeStep;
             end;
             else
                  if d eq CompoundNum and LastCompTimeStep > 0 then do;
                COMP_TIME_STEP = LastCompTimeStep;
             end;
             else
                  COMP_TIME_STEP = CompTimeStep;
             if CUMULATIVE_COMP_TIME > 0 then do;
                TIME_WGTD_PRINC_BALANCE = TIME_WGTD_PRINC_BALANCE / CUMULATIVE_COMP_TIME;
                TIME_WGTD_INT_RATE = TIME_WGTD_INT_RATE / CUMULATIVE_COMP_TIME;
                CompoundAmt[d] = TIME_WGTD_PRINC_BALANCE * TIME_WGTD_INT_RATE * COMP_TIME_STEP;
             end;
             else
                  CompoundAmt[d] = 0;
            /* If making the first payment, then add the accrued interest */
             if d eq 1 then CompoundAmt[d] = sum( CurrentAccruedInt, CompoundAmt[d] );
          end;
          else
               CompoundAmt[d] = CURRENT_ACCRUED_INTEREST;
          temp_comp_amt = sum( temp_comp_amt, CompoundAmt[d] );
         /* Reset temporary variables */
          TIME_WGTD_PRINC_BALANCE = 0;
          CUMULATIVE_COMP_TIME = 0;
          CURRENT_ACCRUED_INTEREST = 0;
          TIME_WGTD_INT_RATE = 0;
         /* Advance index */
          d = d + 1;
       end;
      /* WHEN INTEREST PAYMENT IS MADE */
       if CURRENT_DATE eq temp_int_dt then do;
         /* Interest amount should not exceed the annuity amount */
          if PrincipalPmtType eq 1 and i < InterestNum then InterestAmt[i] = min( _temp_annuity_, temp_comp_amt );
         /* Put accumulated interests into interest leg and reset temp_comp_amt */
          else
               InterestAmt[i] = temp_comp_amt;
         /* If this is an annuity and we are not on a capital payment date,
             then roll the interest into the balance */
          if PrincipalPmtType eq 1 and capital_pmt_flg ne 1 and CURRENT_PRINCIPAL_BALANCE > 0 then do;
             CURRENT_PRINCIPAL_BALANCE = sum( CURRENT_PRINCIPAL_BALANCE, temp_comp_amt );
             InterestAmt[i] = 0;
          end;
         /* Reset cumulative interest */
          temp_comp_amt = 0;
         /* Advance index */
          i = i + 1;
       end;
      /* WHEN THE INTEREST RATE CHANGES */
       if r le ResetNum then do;
          if CURRENT_DATE eq ResetDt[r] then do;
             CURRENT_INTEREST_RATE = ResetRt[r];
             r = r + 1;
            /*Get the variable annuity payment*/
             if PrincipalPmtType eq 1 and AnnuityPmtType eq 1 then do;
                                                                      /* VARIABLE */
               /* If there are still payments to be made, calculate what they should be */
               /* Otherwise, set the annuity payment to zero */
               /* Annuity reset date must be an interest payment date, so than i must be greater than 1,*/
               /* If not, set _temp_annuity_ to be missing and calculate in capital payment amounts calculation*/
                if CompTimeStep > 0 then do;
                   if d eq 1 and NewFirstCompTimeStep > 0 then do;
                      NEXT_COMP_TIME_STEP = NewFirstCompTimeStep;
                   end;
                   else
                        if d eq CompoundNum and LastCompTimeStep > 0 then do;
                      NEXT_COMP_TIME_STEP = LastCompTimeStep;
                   end;
                   else
                        do;
                      NEXT_COMP_TIME_STEP = CompTimeStep;
                   end;
                end;
                else
                     if d > 1 then NEXT_COMP_TIME_STEP = rsk_daycount(DayBasis, CompoundDt[d-1], CompoundDt[d]);
                if InterestTimeStep > 0 then do;
                   if i eq 1 and FirstIntTimeStep > 0 then do;
                      NEXT_INT_TIME_STEP = FirstIntTimeStep;
                   end;
                   else
                        if i eq InterestNum and LastIntTimeStep > 0 then do;
                      NEXT_INT_TIME_STEP = LastIntTimeStep;
                   end;
                   else
                        do;
                      NEXT_INT_TIME_STEP = InterestTimeStep;
                   end;
                end;
                else
                     if i > 1 then NEXT_INT_TIME_STEP = rsk_daycount(DayBasis, InterestDt[d-1], InterestDt[d]);
               /* Get the effective interest rate for amortization */
                convert_ratio = round( NEXT_INT_TIME_STEP/NEXT_COMP_TIME_STEP );
                amort_interest_rate = ( CURRENT_INTEREST_RATE*NEXT_COMP_TIME_STEP + 1 )**convert_ratio - 1;
                if NEXT_COMP_TIME_STEP ne . then do;
                   if CURRENT_PRINCIPAL_BALANCE > _RESIDUAL_ then
                      _temp_annuity_ = MORT( CURRENT_PRINCIPAL_BALANCE-_RESIDUAL_, ., amort_interest_rate, InterestNum+1-i );
                   else
                        _temp_annuity_ = 0;
                end;
                else
                     _temp_annuity_ = .;
                                        /*Set it to be missing in case reset date is different from interest date*/
             end;
          end;
       end;
      /* Set the last date to the current date for next iteration,
          but use the last date if the current date was in the past
          ( this allows us to "skip" dates that are before the initial
          date ) */
       LAST_DATE = max( LAST_DATE, CURRENT_DATE );
    END;
   /* Set arrays AllCapitalDt, AllCapitalAmt, AllCapitalNum by combining capital repayment
        and capital prepayment schedules */
   /* Set arrays CapitalBalanceAmt, CapitalBalanceDt and CapitalBalanceNum
     by combining capital repayment and capital prepayment schedule */
    if UsePrepaymentCalcNFlg eq 1 then do;
       call rsk_combine_two_schedules( 'SUM', CapitalDt, CapitalAmt, CapitalNum, PrepmtDt, PrepmtAmt, PrepmtNum, AllCapitalDt, AllCapitalAmt, AllCapitalNum );
       call rsk_combine_two_schedules( 'SECOND', CapitalDt, CapitalPmtBalanceAmt, CapitalNum, PrepmtDt, Prepmt_balance_amt, PrepmtNum, CapitalBalanceDt, CapitalBalanceAmt, CapitalBalanceNum );
    end;
    else
         do;
       do i = 1 to CapitalNum;
          AllCapitalDt[i] = CapitalDt[i];
          CapitalBalanceDt[i] = CapitalDt[i];
          AllCapitalAmt[i] = CapitalAmt[i];
          CapitalBalanceAmt[i] = CapitalPmtBalanceAmt[i];
       end;
       CapitalBalanceNum = CapitalNum;
       AllCapitalNum = CapitalNum;
    end;
   /* A missing current_date indicates a problem in the input schedules */
    if missing(CURRENT_DATE) then do;
       call rsk_print_error_msg_and_abort( 'rsk_bad_cf_arrays_error', Fname, '', '', '', '', '', '' );
    end;

 endsub;
run;
quit;





proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 subroutine RSK_GENCFAMTS(basedate, PRIOR_PAYMENT_DT, PRIOR_PREPMT_DT, DAY_BASIS $, PRINCIPAL_BALANCE_AMT, RESIDUAL_VALUE_AMT, ACCRUED_INTEREST_AMT, AnnualBaseContractRt, NumericPrincipalPaymentType, CompTimeStep, FirstCompTimeStep, LastCompTimeStep, InterestTimeStep, FirstIntTimeStep, LastIntTimeStep, PrepmtTimeStep, FirstPrepmtTimeStep, LastPrepmtTimeStep, MAIN_CF_DATES[*], MAIN_CF_AMOUNTS[*], _AMT_MATCAPFL_[*], MAIN_CF_INT_ALLOC[*], MAIN_CF_NUM, REPRICING_DATES[*], _REP_INT_[*], _REP_BASE_[*], _REP_CAPFLOOR_[*], _REPNUM_, SHIFT_INTEREST_DT[*], INTEREST_DATES[*], INTEREST_AMOUNTS[*], COMPOUND_DATES[*], COMPOUND_AMOUNTS[*], BASE_INT_AMOUNTS[*], _AMT_INTCAPFL_[*], INTEREST_NUMBER, COMPOUND_NUMBER, UseInterestOnlyFlag, CAPITAL_PMT_DATES[*], CAPITAL_PMT_AMOUNTS[*], _AMT_DP_CAPFL_[*], CAPITAL_PMT_NUM, BALANCE_DATES[*], BALANCE_AMOUNTS[*], _AMT_BALCAPFL_[*], BALANCE_NUMBER, ANNUITY_PAYMENT_AMT, NumericAnnuityPaymentType, AnnuityValidDates[*], AnnuitySchedAmts[*], CAPITAL_PAYMENTS[*], PREPMT_DATES[*], PREPAY_RATE[*], PREPMT_AMOUNTS[*], PREPMT_CAPFL[*], PREPMT_NUMBER, PrepaymentCalcNFlag, SCENARIO_MATURITY_DATES[*], _CAP_SCEN_[*], SCEN_NUM, UseScenSchedCrvNFlag, SCENARIO_BALANCE_AMTS[*], SCENARIO_BAL_CAPFL_AMTS[*], CONTRACTUAL_DT[*], CONTRACTUAL_AMT[*], CONTRACTUAL_CAPFL[*], CAPITAL_NO_SCEN_BAL_DT[*], CAPITAL_NO_SCEN_BAL_AMT[*], CAPITAL_NO_SCEN_BAL_NUM, CAPITAL_NO_SCEN_BAL_CAPFL[*], CONTRACTUAL_NUM)
          label="Generates the capital, interest, base interest and main cash flow payments"
          kind="Cash flow generation";
    outargs MAIN_CF_DATES, MAIN_CF_AMOUNTS, _AMT_MATCAPFL_, MAIN_CF_INT_ALLOC, MAIN_CF_NUM, INTEREST_AMOUNTS, COMPOUND_AMOUNTS, BASE_INT_AMOUNTS, _AMT_INTCAPFL_, CAPITAL_PMT_DATES, CAPITAL_PMT_AMOUNTS, _AMT_DP_CAPFL_, CAPITAL_PMT_NUM, BALANCE_DATES, BALANCE_AMOUNTS, _AMT_BALCAPFL_, BALANCE_NUMBER, SCENARIO_BALANCE_AMTS, SCENARIO_BAL_CAPFL_AMTS, PREPMT_AMOUNTS, PREPMT_CAPFL, CONTRACTUAL_AMT, CONTRACTUAL_CAPFL, CAPITAL_NO_SCEN_BAL_DT, CAPITAL_NO_SCEN_BAL_AMT, CAPITAL_NO_SCEN_BAL_NUM, CAPITAL_NO_SCEN_BAL_CAPFL;
   /* Create an array equal to the size of the capital payments */
   /* This will be used to note that the capital payments contribute zero to the interest */
    array zero_interest_amt[1] / nosym;
    call dynamic_array( zero_interest_amt, sum( CONTRACTUAL_NUM, SCEN_NUM, PREPMT_NUMBER ) );
    do i = 1 to dim(zero_interest_amt);
       zero_interest_amt[i] = 0;
    end;
   /* Generate cash flow amounts, depending on the principal payment type */
   /* If the scenario maturities curve is supplied, use it */
   /* Will generate:
       1) main cash flow dates, amounts, cap/floor-applied amounts
        and cfint (portion of main cash flow that is interest),
       2) principal payment amounts, principal balance amounts and
        cap/floor-applied amounts for both principal and balance.
       3) interest payment amounts, cap/floor-applied interest
        payment amounts and base interest payment amounts. */
   /* Note that base interest amounts will be "short-sighted", in
        that they will just use the principal balance based on the
        regular interest rate to calculate amounts. */
    if UseScenSchedCrvNFlag eq 1 then do;
       array CAPITAL_NO_SCEN_DT[1] / nosym;
       array CAPITAL_NO_SCEN_AMT[1] / nosym;
       array CAPITAL_NO_SCEN_CAPFL[1] / nosym;
       call dynamic_array( CAPITAL_NO_SCEN_CAPFL, max(sum(CONTRACTUAL_NUM,PREPMT_NUMBER), 1));
       call dynamic_array( CAPITAL_NO_SCEN_DT, max(sum(CONTRACTUAL_NUM,PREPMT_NUMBER), 1) );
       call dynamic_array( CAPITAL_NO_SCEN_AMT, max(sum(CONTRACTUAL_NUM,PREPMT_NUMBER), 1));
      /* Generate cash flow values */
       call rsk_gen_cash_flow_amounts2( basedate, PRIOR_PAYMENT_DT, PRIOR_PREPMT_DT, DAY_BASIS, PRINCIPAL_BALANCE_AMT, RESIDUAL_VALUE_AMT, ACCRUED_INTEREST_AMT, coalesce(AnnualBaseContractRt,0), CompTimeStep, FirstCompTimeStep, LastCompTimeStep, InterestTimeStep, FirstIntTimeStep, LastIntTimeStep, PrepmtTimeStep, FirstPrepmtTimeStep, LastPrepmtTimeStep, REPRICING_DATES, _REP_INT_, _REPNUM_, SHIFT_INTEREST_DT, INTEREST_AMOUNTS, INTEREST_NUMBER, CONTRACTUAL_DT, CONTRACTUAL_AMT, CONTRACTUAL_NUM, CAPITAL_NO_SCEN_BAL_DT, CAPITAL_NO_SCEN_BAL_AMT, CAPITAL_NO_SCEN_BAL_NUM, SCENARIO_MATURITY_DATES, _CAP_SCEN_, SCENARIO_BALANCE_AMTS, SCEN_NUM, PREPMT_DATES, PREPAY_RATE, PREPMT_AMOUNTS, PREPMT_NUMBER, COMPOUND_DATES, COMPOUND_AMOUNTS, COMPOUND_NUMBER, PrepaymentCalcNFlag, NumericPrincipalPaymentType, NumericAnnuityPaymentType, ANNUITY_PAYMENT_AMT, AnnuityValidDates, AnnuitySchedAmts, CAPITAL_PAYMENTS, CAPITAL_NO_SCEN_DT, CAPITAL_NO_SCEN_AMT, CAPITAL_NO_SCEN_NUM );
      /* Combine the two capital payment schedules */
       call rsk_combine_two_schedules( 'SECOND', CAPITAL_NO_SCEN_BAL_DT, CAPITAL_NO_SCEN_BAL_AMT, CAPITAL_NO_SCEN_BAL_NUM, SCENARIO_MATURITY_DATES, SCENARIO_BALANCE_AMTS, SCEN_NUM, BALANCE_DATES, BALANCE_AMOUNTS, BALANCE_NUMBER );
       call rsk_combine_two_schedules( 'SUM', CAPITAL_NO_SCEN_DT, CAPITAL_NO_SCEN_AMT, CAPITAL_NO_SCEN_NUM, SCENARIO_MATURITY_DATES, _CAP_SCEN_, SCEN_NUM, CAPITAL_PMT_DATES, CAPITAL_PMT_AMOUNTS, CAPITAL_PMT_NUM );
       if UseInterestOnlyFlag eq 1 then do;
          do i = 1 to CAPITAL_PMT_NUM;
             CAPITAL_PMT_AMOUNTS[i] = 0;
          end;
       end;
      /* Combine the interest and payment schedules into the main schedule */
       call rsk_combine_two_schedules( 'SUM', INTEREST_DATES, INTEREST_AMOUNTS, INTEREST_NUMBER, CAPITAL_PMT_DATES, CAPITAL_PMT_AMOUNTS, CAPITAL_PMT_NUM, MAIN_CF_DATES, MAIN_CF_AMOUNTS, MAIN_CF_NUM );
       call rsk_combine_two_schedules( 'SUM', INTEREST_DATES, INTEREST_AMOUNTS, INTEREST_NUMBER, CAPITAL_PMT_DATES, zero_interest_amt, CAPITAL_PMT_NUM, MAIN_CF_DATES, MAIN_CF_INT_ALLOC, MAIN_CF_NUM );
      /* Generate cash flow values with cap and floor rates applied */
       call rsk_gen_cash_flow_amounts2( basedate, PRIOR_PAYMENT_DT, PRIOR_PREPMT_DT, DAY_BASIS, PRINCIPAL_BALANCE_AMT, RESIDUAL_VALUE_AMT, ACCRUED_INTEREST_AMT, coalesce(AnnualBaseContractRt,0), CompTimeStep, FirstCompTimeStep, LastCompTimeStep, InterestTimeStep, FirstIntTimeStep, LastIntTimeStep, PrepmtTimeStep, FirstPrepmtTimeStep, LastPrepmtTimeStep, REPRICING_DATES, _REP_CAPFLOOR_, _REPNUM_, SHIFT_INTEREST_DT, _AMT_INTCAPFL_, INTEREST_NUMBER, CONTRACTUAL_DT, CONTRACTUAL_CAPFL, CONTRACTUAL_NUM, CAPITAL_NO_SCEN_BAL_DT, CAPITAL_NO_SCEN_BAL_CAPFL, CAPITAL_NO_SCEN_BAL_NUM, SCENARIO_MATURITY_DATES, _CAP_SCEN_, SCENARIO_BAL_CAPFL_AMTS, SCEN_NUM, PREPMT_DATES, PREPAY_RATE, PREPMT_CAPFL, PREPMT_NUMBER, COMPOUND_DATES, COMPOUND_AMOUNTS, COMPOUND_NUMBER, PrepaymentCalcNFlag, NumericPrincipalPaymentType, NumericAnnuityPaymentType, ANNUITY_PAYMENT_AMT, AnnuityValidDates, AnnuitySchedAmts, CAPITAL_PAYMENTS, CAPITAL_NO_SCEN_DT, CAPITAL_NO_SCEN_CAPFL, CAPITAL_NO_SCEN_NUM );
      /* Combine the two capital payment schedules with cap and floor rates applied */
       call rsk_combine_two_schedules( 'SECOND', CAPITAL_NO_SCEN_BAL_DT, CAPITAL_NO_SCEN_BAL_CAPFL, CAPITAL_NO_SCEN_BAL_NUM, SCENARIO_MATURITY_DATES, SCENARIO_BAL_CAPFL_AMTS, SCEN_NUM, BALANCE_DATES, _AMT_BALCAPFL_, BALANCE_NUMBER );
       call rsk_combine_two_schedules( 'SUM', CAPITAL_NO_SCEN_DT, CAPITAL_NO_SCEN_CAPFL, CAPITAL_NO_SCEN_NUM, SCENARIO_MATURITY_DATES, _CAP_SCEN_, SCEN_NUM, CAPITAL_PMT_DATES, _AMT_DP_CAPFL_, CAPITAL_PMT_NUM );
       if UseInterestOnlyFlag eq 1 then do;
          do i = 1 to CAPITAL_PMT_NUM;
             _AMT_DP_CAPFL_[i] = 0;
          end;
       end;
      /* Combine the interest and payment schedules into the main schedule
          with cap and floor rates applied */
       call rsk_combine_two_schedules( 'SUM', INTEREST_DATES, _AMT_INTCAPFL_, INTEREST_NUMBER, CAPITAL_PMT_DATES, _AMT_DP_CAPFL_, CAPITAL_PMT_NUM, MAIN_CF_DATES, _AMT_MATCAPFL_, MAIN_CF_NUM );
    end;
    else
         do;
      /* Generate cash flow values */
       call rsk_gen_cash_flow_amounts( basedate, PRIOR_PAYMENT_DT, PRIOR_PREPMT_DT, DAY_BASIS, PRINCIPAL_BALANCE_AMT, RESIDUAL_VALUE_AMT, ACCRUED_INTEREST_AMT, coalesce(AnnualBaseContractRt,0), CompTimeStep, FirstCompTimeStep, LastCompTimeStep, InterestTimeStep, FirstIntTimeStep, LastIntTimeStep, PrepmtTimeStep, FirstPrepmtTimeStep, LastPrepmtTimeStep, REPRICING_DATES, _REP_INT_, _REPNUM_, SHIFT_INTEREST_DT, INTEREST_AMOUNTS, INTEREST_NUMBER, CONTRACTUAL_DT, CONTRACTUAL_AMT, CONTRACTUAL_NUM, BALANCE_DATES, BALANCE_AMOUNTS, BALANCE_NUM, PREPMT_DATES, PREPAY_RATE, PREPMT_AMOUNTS, PREPMT_NUMBER, COMPOUND_DATES, COMPOUND_AMOUNTS, COMPOUND_NUMBER, PrepaymentCalcNFlag, NumericPrincipalPaymentType, NumericAnnuityPaymentType, ANNUITY_PAYMENT_AMT, AnnuityValidDates, AnnuitySchedAmts, CAPITAL_PAYMENTS, CAPITAL_PMT_DATES, CAPITAL_PMT_AMOUNTS, CAPITAL_PMT_NUM );
       if UseInterestOnlyFlag eq 1 then do;
          do i = 1 to CAPITAL_PMT_NUM;
             CAPITAL_PMT_AMOUNTS[i] = 0;
          end;
       end;
      /* Combine the interest and payment schedules into the main schedule */
       call rsk_combine_two_schedules( 'SUM', INTEREST_DATES, INTEREST_AMOUNTS, INTEREST_NUMBER, CAPITAL_PMT_DATES, CAPITAL_PMT_AMOUNTS, CAPITAL_PMT_NUM, MAIN_CF_DATES, MAIN_CF_AMOUNTS, MAIN_CF_NUM );
       call rsk_combine_two_schedules( 'SUM', INTEREST_DATES, INTEREST_AMOUNTS, INTEREST_NUMBER, CAPITAL_PMT_DATES, zero_interest_amt, CAPITAL_PMT_NUM, MAIN_CF_DATES, MAIN_CF_INT_ALLOC, MAIN_CF_NUM );
      /* Generate cash flow values with cap and floor rates applied */
       call rsk_gen_cash_flow_amounts( basedate, PRIOR_PAYMENT_DT, PRIOR_PREPMT_DT, DAY_BASIS, PRINCIPAL_BALANCE_AMT, RESIDUAL_VALUE_AMT, ACCRUED_INTEREST_AMT, coalesce(AnnualBaseContractRt,0), CompTimeStep, FirstCompTimeStep, LastCompTimeStep, InterestTimeStep, FirstIntTimeStep, LastIntTimeStep, PrepmtTimeStep, FirstPrepmtTimeStep, LastPrepmtTimeStep, REPRICING_DATES, _REP_CAPFLOOR_, _REPNUM_, SHIFT_INTEREST_DT, _AMT_INTCAPFL_, INTEREST_NUMBER, CONTRACTUAL_DT, CONTRACTUAL_CAPFL, CONTRACTUAL_NUM, BALANCE_DATES, _AMT_BALCAPFL_, BALANCE_NUMBER, PREPMT_DATES, PREPAY_RATE, PREPMT_CAPFL, PREPMT_NUMBER, COMPOUND_DATES, COMPOUND_AMOUNTS, COMPOUND_NUMBER, PrepaymentCalcNFlag, NumericPrincipalPaymentType, NumericAnnuityPaymentType, ANNUITY_PAYMENT_AMT, AnnuityValidDates, AnnuitySchedAmts, CAPITAL_PAYMENTS, CAPITAL_PMT_DATES, _AMT_DP_CAPFL_, CAPITAL_PMT_NUM );
       if UseInterestOnlyFlag eq 1 then do;
          do i = 1 to CAPITAL_PMT_NUM;
             _AMT_DP_CAPFL_[i] = 0;
          end;
       end;
      /* Combine the interest and payment schedules into the main schedule
          with cap and floor rates applied */
       call rsk_combine_two_schedules( 'SUM', INTEREST_DATES, _AMT_INTCAPFL_, INTEREST_NUMBER, CAPITAL_PMT_DATES, _AMT_DP_CAPFL_, CAPITAL_PMT_NUM, MAIN_CF_DATES, _AMT_MATCAPFL_, MAIN_CF_NUM );
    end;
   /* Calculate base interest amounts */
    call rsk_gen_base_interest( basedate, PRIOR_PAYMENT_DT, DAY_BASIS, PRINCIPAL_BALANCE_AMT, ACCRUED_INTEREST_AMT, coalesce(AnnualBaseContractRt,0), CompTimeStep, FirstCompTimeStep, LastCompTimeStep, REPRICING_DATES, _REP_BASE_, _REPNUM_, SHIFT_INTEREST_DT, BASE_INT_AMOUNTS, INTEREST_NUMBER, BALANCE_DATES, BALANCE_AMOUNTS, BALANCE_NUMBER, COMPOUND_DATES, COMPOUND_NUMBER );

 endsub;
run;
quit;



proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 function RSK_INTPOLATE2(Period, Curve[*], CurveMat[*], IntpMethod $)
          label="Interpolates on a curve, given the target maturity in years"
          kind="Curve interpolation";
   /**************************************************************************/
   /* ERROR CHECKING
    /**************************************************************************/
    dim = dim(Curve);
   /* Initialize the return missing flag to zero
       If we find an error in one of the inputs, we will return missing */
   /* Set the function name for error reporting */
    ReturnMissingFlg = 0;
    Fname = 'rsk_intpolate2';
   /* Make sure 'Period' is nonmissing */
   /* Missing values for 'Period' may cause problems
       if input into another function (e.g. the logarithm function) */
    ReturnMissingFlg = rsk_check_num_missing_pf( Period, Fname, '1', 'Period', ReturnMissingFlg );
   /* Make sure CurveMat array is nonmissing and nondecreasing */
    ReturnMissingFlg = rsk_check_array_pf( CurveMat, dim, 'MISSING', Fname, '3', 'CurveMat', ReturnMissingFlg );
    ReturnMissingFlg = rsk_check_array_pf( CurveMat, dim, 'UNORDERED', Fname, '3', 'CurveMat', ReturnMissingFlg );
   /* Return missing, if errors are found */
    if ReturnMissingFlg eq 1 then return(.);
   /************************************************************/
   /* RESUME INTPOLATION
    /************************************************************/
    if IntpMethod eq 'LOG' then do;
                                         /* Interpolation method = LOGLINEAR*/
       j = rsk_find_right( period, CurveMat );
       if j eq 1 then IntVal = Curve{1};
       else
            if j > dim then IntVal = Curve{dim};
       else
            IntVal = Curve{j-1} * ( ( Curve{j} / Curve{j-1} ) ** ( ( period - CurveMat{j-1} ) / ( CurveMat{j} - CurveMat{j-1} ) ) );
    end;
    else
         if IntpMethod eq 'CUBIC' then do;
                                                /* Interpolation method = CUBIC (calculation of natural cubic spline coefficients)*/
      /* linear interpolation at endpoints used */
       if ( period <= CurveMat{1} ) then IntVal = Curve{1};
       else
            if ( period >= CurveMat{dim} ) then IntVal = Curve{dim};
       else
            do;
          Array M_temp[1] /nosym;
          Array N_temp[1] /nosym;
          Array Q_temp[1] /nosym;
          Array A_temp[1] /nosym;
          Array B_temp[1] /nosym;
          Array D_temp[1] /nosym;
          Array AA_temp[1] /nosym;
          Array BB_temp[1] /nosym;
          Array CC_temp[1] /nosym;
          CALL DYNAMIC_ARRAY(M_temp,dim);
          CALL DYNAMIC_ARRAY(N_temp,dim);
          CALL DYNAMIC_ARRAY(Q_temp,dim);
          CALL DYNAMIC_ARRAY(A_temp,dim);
          CALL DYNAMIC_ARRAY(B_temp,dim);
          CALL DYNAMIC_ARRAY(D_temp,dim);
          CALL DYNAMIC_ARRAY(AA_temp,dim);
          CALL DYNAMIC_ARRAY(BB_temp,dim);
          CALL DYNAMIC_ARRAY(CC_temp,dim);
         /* Initialize */
          M_temp[1]=CurveMat[2] - CurveMat[1];
          N_temp[1]=Curve[2] - Curve[1];
          A_temp[1]=1;
          B_temp[1]=0;
          D_temp[1]=0;
         /* end initialize */
          do i=2 to dim-1;
             M_temp[i]= CurveMat[i+1] - CurveMat[i];
             N_temp[i]= Curve[i+1] - Curve[i];
             Q_temp[i]= 3*( (N_temp[i] / M_temp[i] ) - (N_temp[i-1] / M_temp[i-1] ) );
             A_temp[i]= 2* (M_temp[i-1] + M_temp[i]) - M_temp[i-1] * B_temp[i-1];
             B_temp[i]= M_temp[i] / A_temp[i];
             D_temp[i]= ( Q_temp[i] - M_temp[i-1] * D_temp[i-1] ) / A_temp[i];
          end;
         /* Initialize */
          A_temp[dim]=0;
          BB_temp[dim]=0;
          D_temp[dim]=0;
         /* end initialize */
          do i=(dim-1) to 1 BY -1;
             BB_temp[i]= D_temp[i] - B_temp[i] * BB_temp[i+1];
             AA_temp[i]= (N_temp[i] / M_temp[i] ) - ( M_temp[i] / 3* ( BB_temp[i+1] + 2*BB_temp[i] ) );
             CC_temp[i]= (BB_temp[i+1] - BB_temp[i]) / (3*M_temp[i]);
          end;
          j = rsk_find_right( period, CurveMat );
          if j eq 1 then IntVal = Curve{1};
          else
               if j > dim then IntVal = Curve{dim};
          else
               do;
             j = j - 1;
             IntVal = Curve{j} + ( AA_temp{j} * ( period - CurveMat{j} ) ) + ( BB_temp{j} * ( period - CurveMat{j} )**2 ) + ( CC_temp{j} * ( period - CurveMat{j} )**3 );
          end;
       end;
    end;
    else
         if IntpMethod eq 'STEP' then do;
       j = rsk_find_left( period, CurveMat );
       j = max(j,1);
       IntVal = Curve[j];
    end;
    else
         if IntpMethod eq 'FORWARD_RATE' then do;
       j = rsk_find_left( period, CurveMat );
       if j < 1 then IntVal = Curve[1];
       else
            if j eq dim(CurveMat) then IntVal = Curve[j];
       else
            do;
          timediff = period - CurveMat[j];
          if abs(timediff) le constant('SQRTMACEPS') then IntVal = Curve[j];
          else
               do;
             fwdperiod = CurveMat[j+1] - CurveMat[j];
             r1plus1 = 1+Curve[j];
             forward_rate_plus1 = (1+Curve[j+1])**(CurveMat[j+1]/fwdperiod) / r1plus1**(CurveMat[j]/fwdperiod);
             IntVal = r1plus1**(CurveMat[j]/period) * forward_rate_plus1 ** (timediff/period)-1;
          end;
       end;
    end;
    else
         do;
               /* Interpolation method = LINEAR*/
       j = rsk_find_right( period, CurveMat );
       if j eq 1 then IntVal = Curve{1};
       else
            if j > dim then IntVal = Curve{dim};
       else
            IntVal = Curve{j-1} + ( ( Curve{j} - Curve{j-1} ) * ( period - CurveMat{j-1} ) / ( CurveMat{j} - CurveMat{j-1} ) );
    end;
  return ( IntVal );

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 function RSK_IMPLIED_FWD_RATE(RefDate, fwd_date, fwd_dateto, Convention $, Curve [*], CurveMat[*],IntpMethod $)
          label="Computes a single forward rate, given the spot rates (continuous compounding)"
          kind="Interest rates";
   /* Create a local copy of this pass-through character value */
   /* This will make the function more efficient */
    length local_convention $32;
    local_convention = Convention;
    period1 = rsk_daycount(local_convention,Refdate,fwd_date);
                                                               *t0-ti;
    period2 = rsk_daycount(local_convention,Refdate,fwd_dateto);
                                                                     *t0-ti+1;
    rate1 = rsk_intpolate2( period1, Curve, CurveMat, IntpMethod);
                                                                  *RT1;
    rate2 = rsk_intpolate2( period2, Curve, CurveMat,IntpMethod );
                                                                  *RT2;
    forward_period = period2-period1;
   /* If forward period is positive, use the calculation */
   /* If forward period is zero, just set it to rate1 */
   /* Otherwise (negative forward period), set to missing */
    sqrtmaceps = constant('SQRTMACEPS');
    if forward_period > sqrtmaceps and refdate le fwd_date then do;
       fwd_rate = (1+rate2)**(period2/forward_period) / (1+rate1)**(period1/forward_period) - 1;
    end;
    else
         if abs(forward_period) le sqrtmaceps then fwd_rate = rate1;
    else
         fwd_rate=.;
    return (fwd_rate);

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 function RSK_MOVE_DATE_TO_DAY_OF_MONTH(InputDate, DayOfMonth)
          label="Moves a date to within the same month, except on a different day"
          kind="Date management";
   /************************************************************************/
   /* ERROR CHECKING
    /************************************************************************/
   /* Initialize the return missing flag to zero
       If we find an error in one of the inputs, we will return missing */
   /* Set the function name for error reporting */
    ReturnMissingFlg = 0;
    Fname = 'rsk_move_date_to_day_of_month';
   /* Check inputs */
    ReturnMissingFlg = rsk_check_num_missing_pf( InputDate, Fname, '1', 'InputDate', ReturnMissingFlg );
    ReturnMissingFlg = rsk_check_nonpositive_pf( DayOfMonth, Fname, '2', 'DayOfMonth', ReturnMissingFlg );
   /* Return missing, if errors are found */
    if ReturnMissingFlg eq 1 then return(.);
   /************************************************************************/
   /* RESUME STANDARD PROCESSING
    /************************************************************************/
   /* Default to the returned InputDate */
    returned_date = InputDate;
   /* If the day of the InputDate already matches the target day of
       month, then don't move it */
    if day(InputDate) ne DayOfMonth then do;
      /* Make sure the day of month doesn't exceed the maximum for this month */
       themonth = month(InputDate);
       theyear = year(InputDate);
       if themonth eq 2 then do;
          if mod(theyear,4) eq 0 and ( mod(theyear,100) ne 0 or mod(theyear,400) eq 0 ) then
                                             max_days_in_month = 29;
          else
               max_days_in_month = 28;
       end;
       else
            if themonth in ( 4, 6, 9, 11 ) then max_days_in_month = 30;
       else
            max_days_in_month = 31;
      /* Adjust the InputDate */
       returned_date = mdy( themonth, min(DayOfMonth,max_days_in_month), theyear );
    end;
   /* Return the result */
    return(returned_date);

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 subroutine RSK_GENERATE_REGULAR_SCHEDULE(StartDt, FirstPaymentDt, BaseDate, LastPaymentDt, MaturityDt, PaymentDayOfMonth, PaymentFrequencyNumber, PaymentFrequencyUnit $, Out_PriorPaymentDt, Out_Dates[*], Out_Num)
          label="Generates a series of regular payment schedule, given a payment frequency"
          kind="Date management";
       outargs Out_Dates, Out_Num, Out_PriorPaymentDt;
      /* Set the first/last payment date of the contract and initialize the prior payment date */
       NewFirstPaymentDt = max( StartDt, FirstPaymentDt );
       NewLastPaymentDt = min( LastPaymentDt, MaturityDt );
       Out_PriorPaymentDt = StartDt;
      /* Apply the payment day of month to the first payment date */
       if not missing(PaymentDayOfMonth) then do;
          NewFirstPaymentDt = rsk_move_date_to_day_of_month( NewFirstPaymentDt, PaymentDayOfMonth );
          if not missing(FirstPaymentDt) then OrigNewFirstPaymentDt = rsk_move_date_to_day_of_month( FirstPaymentDt, PaymentDayOfMonth );
          else
               OrigNewFirstPaymentDt = .;
       end;
      /* If the payment frequency is supplied, then create the schedule */
      /* Otherwise, set the number of cash flows to zero */
       if not( nmiss(NewFirstPaymentDt,PaymentFrequencyNumber) > 0 or missing(PaymentFrequencyUnit) ) then
                                                                                                    do;
         /* Find the next payment date */
          NextPmtDate = NewFirstPaymentDt;
          i = 0;
          do while( NextPmtDate le BaseDate and not missing(NextPmtDate) );
             i = i + 1;
             Out_PriorPaymentDt = NextPmtDate;
             NextPmtDate = intnx( PaymentFrequencyUnit, NewFirstPaymentDt, PaymentFrequencyNumber * i, 'S');
            /* Apply the payment day of month to the next payment date */
            /* These nested if statements have been designed to reduce the amount
                of checks made for most common cases */
             if not missing(PaymentDayOfMonth) then do;
                NextPmtDate = rsk_move_date_to_day_of_month( NextPmtDate, PaymentDayOfMonth );
               /* If the first payment date is not on the payment date of month and the next
                   payment date is, then set the new first payment date to the next payment date */
                if day(NewFirstPaymentDt) ne PaymentDayOfMonth then do;
                   if day(NextPmtDate) eq PaymentDayOfMonth and NextPmtDate < BaseDate then do;
                      NewFirstPaymentDt = NextPmtDate;
                      i = 0;
                   end;
                end;
             end;
          end;
         /* If the next payment date is on the start date, move it forward */
          if missing(PaymentDayOfMonth) then NewStartDt = StartDt;
          else
               NewStartDt = rsk_move_date_to_day_of_month( StartDt, PaymentDayOfMonth );
          if NextPmtDate eq NewStartDt and NextPmtDate ne OrigNewFirstPaymentDt then do;
             i = 1;
             NextPmtDate = intnx( PaymentFrequencyUnit, NewFirstPaymentDt, PaymentFrequencyNumber, 'S' );
          end;
         /* Generate the schedule, if start and end dates are correct */
          if not missing(NewFirstPaymentDt) and NewFirstPaymentDt < NewLastPaymentDt then do;
            /* Initialize the current date and adjust for day of month */
             tempdt = intnx( PaymentFrequencyUnit, NewFirstPaymentDt, i * PaymentFrequencyNumber, 's' );
             if not missing(PaymentDayOfMonth) then do;
                tempdt = rsk_move_date_to_day_of_month( tempdt, PaymentDayOfMonth );
             end;
            /* Generate the whole date schedule */
             do j = 1 to dim(Out_Dates) while( tempdt < NewLastPaymentDt );
               /* Write date */
                Out_Dates[j] = tempdt;
               /* Advance date */
                tempdt = intnx( PaymentFrequencyUnit, NewFirstPaymentDt, (i+j) * PaymentFrequencyNumber, 's' );
             end;
            /* Set size of the array */
             Out_Num = j-1;
            /* Adjust for day of month */
             if not missing(PaymentDayOfMonth) then do j = 1 to Out_Num;
                Out_Dates[j] = rsk_move_date_to_day_of_month( Out_Dates[j], PaymentDayOfMonth );
             end;
          end;
          else
               do;
             Out_Num = 1;
             Out_Dates[1] = NewLastPaymentDt;
          end;
       end;
       else
            Out_Num = 0;

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 function RSK_INTPOLATE(refdate , /* reference date */ matdate , /* maturity date */ Convention $, Curve[*], /* yield curve */ CurveMat[*], /* maturity curve */ IntpMethod $)
          label="Interpolates on a curve, given the reference and maturity dates"
          kind="Curve interpolation";
    dim = dim(Curve);
   /* Create a local copy of this pass-through character value */
   /* This will make the function more efficient */
    length local_convention upIntpMethod $32;
    local_convention = Convention;
    upIntpMethod = upcase(IntpMethod);
    period = rsk_daycount(local_convention,Refdate,matdate);
    IntVal = rsk_intpolate2( period, Curve, CurveMat, upIntpMethod );
    return ( IntVal );

 endsub;
run;
quit;


proc fcmp  outlib=ehe.SASLIBEIR.CASHFLOW_FUNCTIONS  LABEL="Cashflow functions" LIBRARY=(ehe.SASLIBEIR);
 subroutine RSK_CF_SCENARIO_VOL_ARRAY(Date, Principal_amt, convention $, cashflowmat[*], cashflownum, ScenArray[*], ScenarrayMat[*], ScenArrayIntMethod $, VolType $, scen[*])
          label="Calculates a series of principal payments, given target balances"
          kind="Cash flow generation";
 outargs scen;
 Array c_tmp2[1] /nosym;
 CALL DYNAMIC_ARRAY(c_tmp2,cashflownum);
     DO i=1 TO cashflownum;
       c_tmp2[i]=rsk_intpolate(Date ,cashflowmat[i],Convention,ScenArray,ScenarrayMat,ScenArrayIntMethod);
     END;
     IF upcase(VolType) eq 'AMOUNT' or VolType eq '' THEN DO;
       Scen[1]= -(c_tmp2[1] - Principal_Amt);
         DO i=2 TO cashflownum;
           Scen[i]= -(c_tmp2[i] - c_tmp2[i-1]);
         END;
     END;
        /*do loop*/
     IF upcase(VolType) eq 'RATIO' THEN DO;
       Scen[1]= -(c_tmp2[1]-1)* Principal_Amt;
         DO i=2 TO cashflownum;
           Scen[i]= -(c_tmp2[i] - c_tmp2[i-1] ) * Principal_Amt;
         END;
            /*do loop*/
     END;
        /*do loop*/

 endsub;
run;
quit;
