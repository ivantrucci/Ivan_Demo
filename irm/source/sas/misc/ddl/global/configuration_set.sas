/*
 Copyright (C) 2017 SAS Institute Inc. Cary, NC, USA
*/
 
/**
   \file
   \brief   Global configuration table
 
   |PK            |Variable                               |Type              | Required? |Label                           |Description                                                                                                                                                                                             |
   |--------------|---------------------------------------|------------------|-----------|--------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
   |![ ](pk.jpg)  | <b>CONFIG_SET_ID</b>                  | CHARACTER(32)    | Y         | Config Set Id                  |                                                                                                                                                                                                        |
   |![ ](pk.jpg)  | <b>VALID_FROM_DTTM</b>                | NUMERIC(8)       | Y         | Valid From Datetime            |                                                                                                                                                                                                        |
   |              | VALID_TO_DTTM                         | NUMERIC(8)       | Y         | Valid To Datetime              |                                                                                                                                                                                                        |
   |              | CONFIGURATION_SET_DESC                | CHARACTER(64)    | N         | Configuration Set Description  |                                                                                                                                                                                                        |
 
 
 
   \details
 
   \ingroup ddlGlobal
   \author  SAS Institute Inc.
   \date    2016
*/
CREATE TABLE &LIBREF..CONFIGURATION_SET (
   CONFIG_SET_ID                    VARCHAR(32)    label='Config Set Id',
   VALID_FROM_DTTM                  DATE           FORMAT=&DTTMFMT     INFORMAT=&DTTMFMT   label='Valid From Datetime',
   VALID_TO_DTTM                    DATE           NOT NULL  FORMAT=&DTTMFMT     INFORMAT=&DTTMFMT   label='Valid To Datetime',
   CONFIGURATION_SET_DESC           VARCHAR(64)    label='Configuration Set Description',
   CONSTRAINT PRIM_KEY PRIMARY KEY (CONFIG_SET_ID, VALID_FROM_DTTM)
);
