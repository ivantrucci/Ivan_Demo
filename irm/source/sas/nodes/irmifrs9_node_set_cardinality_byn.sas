/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Compute cardinality for parallel IRM execution

   \param[in] n_partitions Macro variable (set via the IRM macrovarload facility) specifying the number of requested partitions. Valid options: MAX, AUTO, <N>. See below for details.
   \param[in] ds_in Input table to be partitioned
   \param[out] ds_out_cardinality Output IRM cardinality table
   
   
   \details
   
   This node sets the number of data partitions for enabling IRM parallel processing:
   - If <i>N_PARTITIONS = MAX</i>, the cardinality is set to the total number of available CPUs (as returned by &SYSNCPU)
   - If <i>N_PARTITIONS = AUTO</i>, the cardinality is set to 80% of the total number of available CPUs
   - If <i>N_PARTITIONS = <value></i>, the cardinality is set to the specified value
   
   
   In addition the following macro utilities are called:
   
   | Macro name                | Description                                                                                                  | Further information                           |
   |---------------------------|--------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
   | irm_session_prepare       | Reads RUN_OPTION table and sets logging options                                                              | \link irm_session_prepare.sas \endlink        |
   | irm_session_cleanup       | Removes all non-IRM WORK datasets/views and deletes all user-created macro variables from workspace session  | \link irm_session_cleanup.sas \endlink        |

   \ingroup nodes
   \author  SAS Institute Inc.
   \date    2018
*/

/* Initialize session */
%irm_session_prepare();


/* ****************************************************************** */
/*  Compute cardinality for parallel execution                        */
/* ****************************************************************** */

/* Number of records in the input table */
%let TotRows = %rsk_attrn(&ds_in., nobs);

/* Determine parallelization level */
data &ds_out_cardinality.;
   length
      PARTITION_CONFIG $20.
      MAX_RANK_NO 8.
   ;
   PARTITION_CONFIG = strip(symget("N_PARTITIONS"));
   /* Total number of available CPU cores */
   CPU_CNT = &sysncpu.;
   /* Total number of records */
   TOT_ROWS = &TotRows.;
   
   /* Check if PARTITION_CONFIG is a number */
   if(prxmatch("/^\d+/i", PARTITION_CONFIG)) then
      /* Read the number of partition, set the floor to 1 */
      MAX_RANK_NO = max(1, input(PARTITION_CONFIG, 8.));
   else if(upcase(PARTITION_CONFIG) in ("ALL", "MAX")) then
      /* Use all CPU cores */
      MAX_RANK_NO = CPU_CNT;
   else do;
      /* Limit the CPU count to 80% of the available CPU cores */
      CPU_CNT = round(&sysncpu. * 0.8);
      /* Number of records for each partition (closest integer) */
      ROWS_x_PARTITION = round(TOT_ROWS/CPU_CNT);
      /* Check if we exceed the total number of rows */
      if(ROWS_x_PARTITION * CPU_CNT > TOT_ROWS) then
         /* Reduce the number of partitions: the last partition will always have more records to process */
         MAX_RANK_NO = floor(TOT_ROWS/ROWS_x_PARTITION);
      else
         /* Default: use 80% of the available CPU cores */
         MAX_RANK_NO = CPU_CNT;
   end;
   
   /* Make sure the number of partitions does not exceed the number of records to be processed */
   MAX_RANK_NO = max(min(MAX_RANK_NO, TOT_ROWS), 1);
run;


/* Cleanup session */
%irm_session_cleanup;