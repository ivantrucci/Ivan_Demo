/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Collect data from multiple IRM partitions into a single output table.
   

   \details
   
   This node calls macro \link rsk_recombine.sas \endlink to append results from multiple IRM data partitions into a single table.
   
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

/* Collect all partitions */
%rsk_recombine(IN_DS_NM = &DS_IN.
               , LIB_PREFIX = &LIBPREFIX.
               , PARTITION_NO = &MAX_RANK.
               , O_DS = &DS_OUT.
               );

/* Cleanup session */
%irm_session_cleanup;