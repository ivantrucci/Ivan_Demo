/*  Copyright (C) 2017 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
\brief   The table DATA_EXTRACTION_CONFIG contains configuration for the retrieval of any analysis data from the data repository.
 
   |PK            |Variable           |Type              | Required? |Label                      |Description                                                                                                         |
   |--------------|-------------------|------------------|-----------|---------------------------|--------------------------------------------------------------------------------------------------------------------|
   | ![ ](pk.jpg) | SOURCE_DATA_NAME  | CHARACTER(32)    | Y         | Source Data Name          | Name of the output table being the result of the extraction                                                        |
   |              | ANALYSIS_DATA_KEY | CHARACTER(32)    | Y         | Report Name               | Key of the Analysis Data to retrieve                                                                               |
   |              | AGGREGATE_FLG     | CHARACTER(1)     | Y         | Aggregate Flag            | Controls whether movement records should be aggregated                                                             |
 
\details

 
\ingroup ddlStaticReporting
\author  SAS Institute Inc.
\date    2019
*/
 
CREATE TABLE &LIBREF..DATA_EXTRACTION_CONFIG (
   SOURCE_DATA_NAME        VARCHAR(32)  label = 'Source Data Name',
   ANALYSIS_DATA_KEY       VARCHAR(32)  label = 'Analysis Data Key',
   AGGREGATE_FLG           VARCHAR(1)   label = 'Aggregate Flag',
   CONSTRAINT PRIM_KEY PRIMARY KEY (SOURCE_DATA_NAME)
);
