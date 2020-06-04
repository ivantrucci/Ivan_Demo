/* Copyright (C) 2019 SAS Institute Inc. Cary, NC, USA */

/*!
   \file
   \brief   Sample data for Individual Adjustment.

   \details Sample data for INDIVIDUAL_ADJUSTMENT. For documentation and guidance please refer to the corresponding ddl file.

   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2019
*/

data WORK.INDIVIDUAL_ADJUSTMENT;
   attrib
      REPORTING_DT                     length = 8.
      INSTID                           length = $64.
      ENTITY_ID                        length = $32.
      MOVEMENT_TYPE_CD                 length = $32.
      MOVEMENT_DESC                    length = $100.
      ADJUSTMENT_TYPE                  length = $10.
      ECL                              length = 8.
   ;
   infile cards dsd delimiter = ',';
   input 
      REPORTING_DT                     :anydtdte.
      INSTID                           :$char.
      ENTITY_ID                        :$char.
      MOVEMENT_TYPE_CD                 :$char.
      MOVEMENT_DESC                    :$char.
      ADJUSTMENT_TYPE                  :$char.
      ECL
   ;
datalines4;
2018-12-31,CI_00019,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3209.94
2018-12-31,CI_00021,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,60309.75
2018-12-31,CI_00025,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,61119.67
2018-12-31,CI_00026,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,22994.88
2018-12-31,CI_00031,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,51384.64
2018-12-31,CI_00032,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,13241.83
2018-12-31,CI_00036,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,11652.91
2018-12-31,CI_00068,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,6328.76
2018-12-31,CI_00077,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,65759.43
2018-12-31,CI_00078,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3400.77
2018-12-31,CI_00082,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,5219.69
2018-12-31,CI_00087,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,23.21
2018-12-31,CI_00093,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,696.63
2018-12-31,CI_00095,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,9811.76
2018-12-31,CI_00108,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,23788.82
2018-12-31,CI_00111,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,10509.5
2018-12-31,CI_00145,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,24175.69
2018-12-31,CI_00183,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1863.42
2018-12-31,CI_00194,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,4151.38
2018-12-31,CI_00208,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,158902.8
2018-12-31,CI_00217,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,4597.08
2018-12-31,CI_00221,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,33152.99
2018-12-31,CREC_00037,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,122119.86
2018-12-31,CREC_00050,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,185916.78
2018-12-31,CREC_00075,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,18612.32
2018-12-31,CREC_00082,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,162560.27
2018-12-31,CREC_00088,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,134600.41
2018-12-31,CREC_00107,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,154487.71
2018-12-31,CREC_00113,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,34173.62
2018-12-31,CREC_00122,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,48065.49
2018-12-31,CRE_00004,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1790.95
2018-12-31,CRE_00018,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,533.99
2018-12-31,CRE_00022,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,426.54
2018-12-31,CRE_00042,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,5166.51
2018-12-31,CRE_00056,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,4386.17
2018-12-31,CRE_00058,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,22254.51
2018-12-31,CRE_00072,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,38429.51
2018-12-31,CRE_00077,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,147042.01
2018-12-31,CRE_00078,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,24832.01
2018-12-31,CRE_00085,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,49710.7
2018-12-31,CRE_00091,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,34038.31
2018-12-31,CRE_00110,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,143886.23
2018-12-31,CRE_00119,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,14261.26
2018-12-31,CRE_00121,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,13803.92
2018-12-31,CRE_00125,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,12245.98
2018-12-31,CRE_00135,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,30158.05
2018-12-31,CRE_00171,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,47241.42
2018-12-31,CRE_00173,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,8446.37
2018-12-31,CRE_00201,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,8324.91
2018-12-31,CRE_00207,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,15653.03
2018-12-31,CRE_00217,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,40431.73
2018-12-31,CRE_00234,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,85086.14
2018-12-31,CRE_00255,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,36720.61
2018-12-31,HLOC_00021,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2008.41
2018-12-31,HLOC_00024,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,537.88
2018-12-31,HLOC_00034,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,281.09
2018-12-31,HLOC_00054,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,4509.5
2018-12-31,HLOC_00059,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,236.75
2018-12-31,HLOC_00068,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1045.15
2018-12-31,HLOC_00078,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1136.1
2018-12-31,HLOC_00085,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3716.72
2018-12-31,HLOC_00116,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,85.92
2018-12-31,HLOC_00123,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,6099.69
2018-12-31,LOC_00005,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,39347.48
2018-12-31,LOC_00010,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,4432.29
2018-12-31,LOC_00020,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2266.54
2018-12-31,LOC_00059,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,24963.43
2018-12-31,LOC_00061,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,81372.32
2018-12-31,LOC_00075,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1172.82
2018-12-31,LOC_00083,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,260279.58
2018-12-31,RA_00014,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,513.51
2018-12-31,RA_00038,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1503.78
2018-12-31,RA_00039,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,796.47
2018-12-31,RA_00042,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3952.73
2018-12-31,RA_00074,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,10911.22
2018-12-31,RA_00079,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,16840.49
2018-12-31,RA_00082,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,5846.49
2018-12-31,RA_00093,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1698.72
2018-12-31,RA_00095,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,472.58
2018-12-31,RA_00102,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,374.33
2018-12-31,RA_00104,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,10219.16
2018-12-31,RA_00111,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,4830.61
2018-12-31,RA_00126,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1813.63
2018-12-31,RA_00134,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3836.18
2018-12-31,RA_00146,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1610.93
2018-12-31,RA_00160,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3960.54
2018-12-31,RA_00166,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,13057.07
2018-12-31,RA_00167,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2595.65
2018-12-31,RA_00210,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,131.01
2018-12-31,RA_00225,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3085.76
2018-12-31,RA_00235,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2147.92
2018-12-31,RA_00239,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,859.87
2018-12-31,RA_00281,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,5145.25
2018-12-31,RA_00311,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,653.06
2018-12-31,RA_00320,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,977.97
2018-12-31,RA_00359,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,14614.01
2018-12-31,RA_00369,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,9065.1
2018-12-31,RA_00384,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,6853.52
2018-12-31,RCC_00042,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3892.53
2018-12-31,RCC_00050,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,865.84
2018-12-31,RCC_00054,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3124.25
2018-12-31,RCC_00058,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,96.61
2018-12-31,RCC_00117,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3203.87
2018-12-31,RCC_00134,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1159.53
2018-12-31,RCC_00163,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2634.78
2018-12-31,RCC_00166,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1527.39
2018-12-31,RCC_00190,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1750.65
2018-12-31,RCC_00226,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3237.79
2018-12-31,RCC_00237,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1158.48
2018-12-31,RCC_00254,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,595.24
2018-12-31,RCC_00267,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,5177.86
2018-12-31,RCC_00280,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2716.16
2018-12-31,RCC_00284,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,8576.42
2018-12-31,RCC_00300,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1969.52
2018-12-31,RCC_00310,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,9421.46
2018-12-31,RCC_00316,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,10316.32
2018-12-31,RCC_00322,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1027.19
2018-12-31,RCC_00338,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,20828.45
2018-12-31,RCC_00359,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,4777.47
2018-12-31,RCC_00379,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3446.24
2018-12-31,RCC_00380,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3475.87
2018-12-31,RCC_00392,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,594.51
2018-12-31,RCC_00410,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,558.24
2018-12-31,RCC_00413,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,5680.67
2018-12-31,RCC_00415,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2595.32
2018-12-31,RCC_00416,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,9987.16
2018-12-31,RCC_00427,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,684.7
2018-12-31,RCC_00432,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,13.59
2018-12-31,RM_00013,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3133.07
2018-12-31,RM_00018,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,8238.4
2018-12-31,RM_00045,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,6767.58
2018-12-31,RM_00058,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,4001.42
2018-12-31,RM_00110,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3761.25
2019-01-31,CI_00019,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3019.94
2019-01-31,CI_00021,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,60543.75
2019-01-31,CI_00025,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,60879.67
2019-01-31,CI_00026,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,23154.88
2019-01-31,CI_00031,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,51690.64
2019-01-31,CI_00032,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,13514.83
2019-01-31,CI_00036,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,11452.91
2019-01-31,CI_00068,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,6616.76
2019-01-31,CI_00077,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,65346.43
2019-01-31,CI_00078,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3781.77
2019-01-31,CI_00082,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,5699.69
2019-01-31,CI_00095,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,9683.76
2019-01-31,CI_00111,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,10973.5
2019-01-31,CI_00145,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,24468.69
2019-01-31,CI_00194,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,4053.38
2019-01-31,CI_00208,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,159013.8
2019-01-31,CI_00217,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,5037.08
2019-01-31,CI_00221,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,32757.99
2019-01-31,CREC_00002,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,201539.69
2019-01-31,CREC_00003,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,149493.08
2019-01-31,CREC_00004,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,179815.11
2019-01-31,CREC_00005,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,67339.29
2019-01-31,CREC_00037,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,122401.86
2019-01-31,CREC_00050,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,185645.78
2019-01-31,CREC_00075,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,18287.32
2019-01-31,CREC_00082,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,162132.27
2019-01-31,CREC_00088,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,134122.41
2019-01-31,CREC_00107,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,154497.71
2019-01-31,CREC_00113,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,34500.62
2019-01-31,CREC_00122,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,48442.49
2019-01-31,CRE_00004,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1548.95
2019-01-31,CRE_00018,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,995.99
2019-01-31,CRE_00022,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,580.54
2019-01-31,CRE_00042,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,5570.51
2019-01-31,CRE_00056,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,4728.17
2019-01-31,CRE_00072,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,38867.51
2019-01-31,CRE_00077,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,147401.01
2019-01-31,CRE_00078,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,24676.01
2019-01-31,CRE_00085,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,49348.7
2019-01-31,CRE_00091,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,34535.31
2019-01-31,CRE_00110,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,143722.23
2019-01-31,CRE_00119,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,14647.26
2019-01-31,CRE_00121,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,14066.92
2019-01-31,CRE_00135,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,29820.05
2019-01-31,CRE_00171,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,47508.42
2019-01-31,CRE_00173,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,8126.37
2019-01-31,CRE_00201,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,8317.91
2019-01-31,CRE_00207,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,15813.03
2019-01-31,CRE_00217,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,40506.73
2019-01-31,CRE_00234,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,85095.14
2019-01-31,CRE_00255,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,37208.61
2019-01-31,HLOC_00021,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1746.41
2019-01-31,HLOC_00024,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,189.88
2019-01-31,HLOC_00034,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,747.09
2019-01-31,HLOC_00054,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,4723.5
2019-01-31,HLOC_00068,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,648.15
2019-01-31,HLOC_00078,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1022.1
2019-01-31,HLOC_00085,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3322.72
2019-01-31,HLOC_00116,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,426.92
2019-01-31,HLOC_00123,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,5849.69
2019-01-31,LOC_00005,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,39495.48
2019-01-31,LOC_00020,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2713.54
2019-01-31,LOC_00059,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,24822.43
2019-01-31,LOC_00061,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,81055.32
2019-01-31,LOC_00075,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,980.82
2019-01-31,LOC_00083,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,259992.58
2019-01-31,RA_00014,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,368.51
2019-01-31,RA_00038,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1253.78
2019-01-31,RA_00039,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,816.47
2019-01-31,RA_00042,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3767.73
2019-01-31,RA_00074,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,11081.22
2019-01-31,RA_00079,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,17199.49
2019-01-31,RA_00082,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,5436.49
2019-01-31,RA_00093,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1335.72
2019-01-31,RA_00095,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,59.58
2019-01-31,RA_00102,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,31.33
2019-01-31,RA_00104,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,9861.16
2019-01-31,RA_00111,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,5129.61
2019-01-31,RA_00126,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2020.63
2019-01-31,RA_00134,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3567.18
2019-01-31,RA_00146,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1741.93
2019-01-31,RA_00160,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,4103.54
2019-01-31,RA_00166,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,13259.07
2019-01-31,RA_00167,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2931.65
2019-01-31,RA_00225,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2873.76
2019-01-31,RA_00235,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2282.92
2019-01-31,RA_00239,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1286.87
2019-01-31,RA_00311,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,959.06
2019-01-31,RA_00320,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1438.97
2019-01-31,RA_00359,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,15048.01
2019-01-31,RA_00369,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,8892.1
2019-01-31,RA_00384,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,7211.52
2019-01-31,RCC_00050,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,445.84
2019-01-31,RCC_00054,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2959.25
2019-01-31,RCC_00058,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,0
2019-01-31,RCC_00117,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2813.87
2019-01-31,RCC_00134,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,775.53
2019-01-31,RCC_00163,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2927.78
2019-01-31,RCC_00166,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1483.39
2019-01-31,RCC_00190,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1465.65
2019-01-31,RCC_00226,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3422.79
2019-01-31,RCC_00254,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,463.24
2019-01-31,RCC_00267,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,4699.86
2019-01-31,RCC_00284,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,8836.42
2019-01-31,RCC_00310,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,9009.46
2019-01-31,RCC_00316,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,10132.32
2019-01-31,RCC_00322,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,1282.19
2019-01-31,RCC_00338,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,21137.45
2019-01-31,RCC_00359,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,4795.47
2019-01-31,RCC_00379,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3619.24
2019-01-31,RCC_00392,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,379.51
2019-01-31,RCC_00410,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,748.24
2019-01-31,RCC_00413,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,5802.67
2019-01-31,RCC_00415,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,2611.32
2019-01-31,RCC_00416,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,9732.16
2019-01-31,RCC_00427,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,684.7
2019-01-31,RCC_00432,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,314.59
2019-01-31,RM_00013,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3238.07
2019-01-31,RM_00018,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,7947.4
2019-01-31,RM_00045,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,6296.58
2019-01-31,RM_00058,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,3599.42
2019-01-31,RM_00110,SASBank_1,IA_ADJ,Individual Assessment,ABSOLUTE,4119.25
;;;;
run;
