/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */

/*!
   \file
   \brief   Sample data for ENTITY.

   \details Sample data for ENTITY. For documentation and guidance please refer to the corresponding ddl file.

   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2018
*/

data WORK.entity;
   attrib
      REPORTING_DT                     length = 8.
      ENTITY_ID                        length = $32.
      ENTITY_NM                        length = $120.
      ENTITY_DESC                      length = $300.
      COUNTRY_CD                       length = $9.
      ENTITY_ROLE_CD                   length = $15.
      LEGAL_ENTITY_FLG                 length = $3.
      GROUP_ID                         length = $32.
      REPORTING_CURRENCY_CD            length = $9.
   ;
   infile cards dsd delimiter = ',';
   input 
      REPORTING_DT                     :anydtdte.
      ENTITY_ID                        :$char.
      ENTITY_NM                        :$char.
      ENTITY_DESC                      :$char.
      COUNTRY_CD                       :$char.
      ENTITY_ROLE_CD                   :$char.
      LEGAL_ENTITY_FLG                 :$char.
      GROUP_ID                         :$char.
      REPORTING_CURRENCY_CD            :$char.
   ;   
datalines4;
2018-12-31,SASBank_1,SAS Bank 1,SAS Bank 1,US,SOLO,Y,SASGroup,USD
2018-12-31,SASBank_2,SAS Bank 2,SAS Bank 2,US,SOLO,Y,SASGroup,USD
2018-12-31,SASGroup,SAS Group,SAS Group,US,GROUP,Y,,USD
2019-01-31,SASBank_1,SAS Bank 1,SAS Bank 1,US,SOLO,Y,SASGroup,USD
2019-01-31,SASBank_2,SAS Bank 2,SAS Bank 2,US,SOLO,Y,SASGroup,USD
2019-01-31,SASGroup,SAS Group,SAS Group,US,GROUP,Y,,USD
;;;;
run;
