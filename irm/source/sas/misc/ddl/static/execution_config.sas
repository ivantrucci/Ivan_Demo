/*  Copyright (C) 2017 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
\brief   The table EXECUTION_CONFIG contains runtime execution configuration.
 
   |PK            |Variable          |Type              | Required? |Label                      |Description                                                                                                         |
   |--------------|------------------|------------------|-----------|---------------------------|--------------------------------------------------------------------------------------------------------------------|
   |              | EXECUTION_GROUP  | CHARACTER(100)   | Y         | Execution Group           | Identifies a group of programs that are logically linked (i.e. Enrichment, Pre-Process, Post-Process, ...)         |
   |              | EXECUTION_STAGE  | NUMERIC          | Y         | Execution Stage           | Code execution stage                                                                                               |
   |              | SOURCE_CODE      | CHARACTER(256)   | Y         | Source Code               | SAS program to be executed (must be saved under irm/source/sas/nodes)                                              |
   |              | PA_LIBREF_LIST   | CHARACTER(256)   | N         | Persistent Area Libraries | Optional list (space separated) of PA libraries that are required by the program                                   |
   |              | CLEAR_WORK_FLG   | CHARACTER(1)     | N         | Clear Work Flag           | Optional flag (Y/N). Controls whether to clear the SAS WORK after the program execution (defaults to N if blank)   |
 
\details

This table is used to run a configurable set of sas programs at runtime.
For a given value of the EXECUTION_GROUP variable, the execution process divided in stages where each stage is executed after the previous stage has been completed.
Within each stage, all programs specified by the SOURCE_CODE variable are executed in parallel.
Any libref specified inside the PA_LIBREF_LIST variable will be automatically assigned in the IRM persistence area before the execution of the corresponding SAS program: library folders will be automatically created in the IRM persistence area if they do not exist.
The SAS Work library is cleared after the execution of a program if CLEAR_WORK_FLG = Y.

Valid values for column EXECUTION_GROUP:
 - <i>Enrichment</i>: the corresponding program is executed as part of the enrichment process
 - <i>Any other value</i>: it can be used to extend the solution (it might require changes to the IRM jobflows)
 
\ingroup ddlStaticAnalytics
\author  SAS Institute Inc.
\date    2019
*/
 
CREATE TABLE &LIBREF..EXECUTION_CONFIG (
   EXECUTION_GROUP   VARCHAR(100) NOT NULL   label = 'Execution Group',
   EXECUTION_STAGE   NUMERIC(8)   NOT NULL   label = 'Execution Stage',
   SOURCE_CODE       VARCHAR(256) NOT NULL   label = 'Source Code',
   PA_LIBREF_LIST    VARCHAR(256)            label = 'Persistent Area Libraries',
   CLEAR_WORK_FLG    VARCHAR(1)              label = 'Clear Work Flag'
);
