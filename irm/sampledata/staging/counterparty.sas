/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */

/*!
   \file
   \brief   Sample data for COUNTERPARTY.

   \details Sample data for COUNTERPARTY. For documentation and guidance please refer to the corresponding ddl file.

   \ingroup sampledata
   \author  SAS Institute Inc.
   \date    2018
*/

data WORK.counterparty;
   attrib
      REPORTING_DT                     length = 8.
      COUNTERPARTYID                   length = $32.
      COUNTERPARTYTYPE                 length = $100.
      SECTOR_DESC                      length = $100.
      DEBT_TO_INCOME_RT                length = 8.
      DELINQUENCY_FLG                  length = $3.
      EVER_DELINQUENT_FLG              length = $3.
      MOST_RECENT_DELINQUENCY_DT       length = 8.
      FINANCIAL_DIFFICULTIES_FLG       length = $3.
      RATING_AGENCY                    length = $32.
      RATING_GRADE                     length = $32.
      STD_RATING_GRADE                 length = $32.
      TTC_PD                           length = 8.
      PIT_PD                           length = 8.
   ;
   infile cards dsd delimiter = ',';
   input 
      REPORTING_DT                     :anydtdte.
      COUNTERPARTYID                   :$char.
      COUNTERPARTYTYPE                 :$char.
      SECTOR_DESC                      :$char.
      DEBT_TO_INCOME_RT
      DELINQUENCY_FLG                  :$char.
      EVER_DELINQUENT_FLG              :$char.
      MOST_RECENT_DELINQUENCY_DT       :anydtdte.
      FINANCIAL_DIFFICULTIES_FLG       :$char.
      RATING_AGENCY                    :$char.
      RATING_GRADE                     :$char.
      STD_RATING_GRADE                 :$char.
      TTC_PD
      PIT_PD
   ;
datalines4;
2018-12-31,CPTY_01543,Commercial,Manufacturing,0.38,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.16948
2018-12-31,CPTY_00740,Commercial,Manufacturing,0.1,Y,Y,2018-05-01,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00747
2018-12-31,CPTY_01274,Commercial,Manufacturing,0.5,Y,Y,2018-05-01,N,S&P,BB,5 - Additional Review,0.04305,0.26901
2018-12-31,CPTY_00990,Commercial,Manufacturing,0.43,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.163
2018-12-31,CPTY_01690,Commercial,Manufacturing,0.48,N,Y,2015-03-01,N,S&P,BB,5 - Additional Review,0.04305,0.1981
2018-12-31,CPTY_01808,Commercial,Manufacturing,0.39,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.04305,0.16268
2018-12-31,CPTY_01639,Commercial,Manufacturing,0.72,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.04305,0.41107
2018-12-31,CPTY_01640,Commercial,Manufacturing,0.58,Y,Y,2018-05-01,Y,S&P,B,6 - Special Mention,0.17221,0.3588
2018-12-31,CPTY_01641,Commercial,Manufacturing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16999
2018-12-31,CPTY_01642,Commercial,Manufacturing,0.82,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.54227
2018-12-31,CPTY_01750,Commercial,Manufacturing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04741
2018-12-31,CPTY_01813,Commercial,Manufacturing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.17221,0.20701
2018-12-31,CPTY_01508,Commercial,Manufacturing,0.39,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.17782
2018-12-31,CPTY_01425,Commercial,Manufacturing,0.39,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.11719
2018-12-31,CPTY_01017,Commercial,Manufacturing,0.4,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.16235
2018-12-31,CPTY_01036,Commercial,Manufacturing,0.57,Y,Y,2018-05-01,N,S&P,B,6 - Special Mention,0.01076,0.38868
2018-12-31,CPTY_00660,Commercial,Manufacturing,0.71,Y,Y,2018-05-01,N,S&P,CCC,7 - Sub-Standard,0.04305,0.36204
2018-12-31,CPTY_01709,Commercial,Manufacturing,0.6,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.36096
2018-12-31,CPTY_00825,Commercial,Manufacturing,0.29,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.07777
2018-12-31,CPTY_01643,Commercial,Manufacturing,0.49,N,Y,2014-11-03,N,S&P,BB,5 - Additional Review,0.04305,0.25692
2018-12-31,CPTY_01493,Commercial,Manufacturing,0.48,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.19495
2018-12-31,CPTY_01275,Commercial,Manufacturing,0.72,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.42189
2018-12-31,CPTY_00805,Commercial,Manufacturing,0.99,N,N,.,N,S&P,D,9 - Loss,0.01076,1
2018-12-31,CPTY_00953,Commercial,Manufacturing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03432
2018-12-31,CPTY_01644,Commercial,Manufacturing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03579
2018-12-31,CPTY_01337,Commercial,Manufacturing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.04305,0.16729
2018-12-31,CPTY_00813,Commercial,Manufacturing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.03288
2018-12-31,CPTY_01126,Commercial,Manufacturing,0.16,N,N,.,N,S&P,AA,2 - Minimal Risk,0.01076,0.05161
2018-12-31,CPTY_01224,Commercial,Manufacturing,0.12,Y,Y,2018-05-01,Y,S&P,AAA,1 - Largely Risk Free,0.00024,0.01684
2018-12-31,CPTY_00766,Commercial,Manufacturing,0.51,Y,Y,2018-05-01,Y,S&P,BB,5 - Additional Review,0.04305,0.2666
2018-12-31,CPTY_01559,Commercial,Manufacturing,0.62,Y,Y,2018-05-01,Y,S&P,B,6 - Special Mention,0.17221,0.38098
2018-12-31,CPTY_01276,Commercial,Manufacturing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.22901
2018-12-31,CPTY_01277,Commercial,Manufacturing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05585
2018-12-31,CPTY_01631,Commercial,Manufacturing,0.39,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.13055
2018-12-31,CPTY_01267,Commercial,Manufacturing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.01076,0.05345
2018-12-31,CPTY_01210,Commercial,Manufacturing,0.27,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.06535
2018-12-31,CPTY_00743,Commercial,Manufacturing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02195
2018-12-31,CPTY_01646,Commercial,Manufacturing,0.05,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02368
2018-12-31,CPTY_01647,Commercial,Manufacturing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13534
2018-12-31,CPTY_01279,Commercial,Manufacturing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05156
2018-12-31,CPTY_01697,Commercial,Manufacturing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.01076,0.05366
2018-12-31,CPTY_01324,Commercial,Manufacturing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03619
2018-12-31,CPTY_01161,Commercial,Manufacturing,0.4,Y,Y,2018-05-01,Y,S&P,BBB,4 - Bankable,0.17221,0.10774
2018-12-31,CPTY_01814,Commercial,Manufacturing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10582
2018-12-31,CPTY_01649,Commercial,Manufacturing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04651
2018-12-31,CPTY_01325,Commercial,Manufacturing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14588
2018-12-31,CPTY_01650,Commercial,Manufacturing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.21959
2018-12-31,CPTY_01494,Commercial,Manufacturing,0.37,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14734
2018-12-31,CPTY_00979,Commercial,Manufacturing,0.46,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.18919
2018-12-31,CPTY_01700,Commercial,Manufacturing,0.47,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.28168
2018-12-31,CPTY_01284,Commercial,Manufacturing,0.37,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10342
2018-12-31,CPTY_01653,Commercial,Manufacturing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04822
2018-12-31,CPTY_01654,Commercial,Manufacturing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03554
2018-12-31,CPTY_00625,Commercial,Manufacturing,0.37,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17817
2018-12-31,CPTY_00887,Commercial,Manufacturing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03928
2018-12-31,CPTY_00610,Commercial,Manufacturing,0.67,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.17221,0.48336
2018-12-31,CPTY_01285,Commercial,Manufacturing,0.47,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.28027
2018-12-31,CPTY_00736,Commercial,Manufacturing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.26955
2018-12-31,CPTY_00680,Commercial,Manufacturing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10498
2018-12-31,CPTY_00654,Commercial,Manufacturing,0.6,N,Y,2015-09-01,N,S&P,B,6 - Special Mention,0.17221,0.38022
2018-12-31,CPTY_00858,Commercial,Manufacturing,0.68,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.38175
2018-12-31,CPTY_01655,Commercial,Manufacturing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.04769
2018-12-31,CPTY_00755,Commercial,Manufacturing,0.59,Y,Y,2018-05-01,Y,S&P,B,6 - Special Mention,0.04305,0.36349
2018-12-31,CPTY_01495,Commercial,Manufacturing,0.61,N,N,.,N,S&P,B,6 - Special Mention,0.17221,0.39141
2018-12-31,CPTY_01024,Commercial,Manufacturing,0.61,Y,Y,2018-05-01,Y,S&P,B,6 - Special Mention,0.17221,0.37344
2018-12-31,CPTY_01286,Commercial,Manufacturing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05569
2018-12-31,CPTY_01398,Commercial,Manufacturing,0.75,Y,Y,2018-05-01,N,S&P,CC,8 - Doubtful,0.04305,0.56779
2018-12-31,CPTY_01815,Commercial,Manufacturing,0.11,Y,Y,2018-05-01,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01616
2018-12-31,CPTY_00714,Commercial,Manufacturing,0.37,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14853
2018-12-31,CPTY_01051,Commercial,Manufacturing,0.39,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.17499
2018-12-31,CPTY_01404,Commercial,Manufacturing,0.31,Y,Y,2018-05-01,N,S&P,A,3 - Modest Risk,0.00269,0.10157
2018-12-31,CPTY_01287,Commercial,Manufacturing,0.37,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.1764
2018-12-31,CPTY_01658,Commercial,Manufacturing,0.39,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.12344
2018-12-31,CPTY_00606,Commercial,Manufacturing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.03484
2018-12-31,CPTY_00822,Commercial,Manufacturing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18105
2018-12-31,CPTY_00640,Commercial,Manufacturing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04068
2018-12-31,CPTY_01636,Commercial,Manufacturing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.01076,0.03778
2018-12-31,CPTY_00758,Commercial,Manufacturing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13918
2018-12-31,CPTY_01660,Commercial,Manufacturing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03692
2018-12-31,CPTY_01661,Commercial,Manufacturing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15397
2018-12-31,CPTY_01662,Commercial,Manufacturing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03615
2018-12-31,CPTY_01082,Commercial,Manufacturing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.20433
2018-12-31,CPTY_01405,Commercial,Manufacturing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.18995
2018-12-31,CPTY_00815,Commercial,Manufacturing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15945
2018-12-31,CPTY_00981,Commercial,Manufacturing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.01076,0.05105
2018-12-31,CPTY_00819,Commercial,Manufacturing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.04305,0.01781
2018-12-31,CPTY_01663,Commercial,Manufacturing,0.37,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18619
2018-12-31,CPTY_01056,Commercial,Manufacturing,0.52,N,Y,2015-03-18,N,S&P,BB,5 - Additional Review,0.04305,0.20271
2018-12-31,CPTY_01329,Commercial,Manufacturing,0.5,N,Y,2017-04-23,N,S&P,BB,5 - Additional Review,0.04305,0.20659
2018-12-31,CPTY_01294,Commercial,Manufacturing,0.81,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.65836
2018-12-31,CPTY_01223,Commercial,Manufacturing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14853
2018-12-31,CPTY_01665,Commercial,Manufacturing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.2327
2018-12-31,CPTY_01216,Commercial,Manufacturing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13656
2018-12-31,CPTY_01667,Commercial,Manufacturing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15866
2018-12-31,CPTY_00648,Commercial,Manufacturing,0.73,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.04305,0.32956
2018-12-31,CPTY_01272,Commercial,Manufacturing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05213
2018-12-31,CPTY_01408,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15929
2018-12-31,CPTY_00854,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12087
2018-12-31,CPTY_01668,Commercial,Manufacturing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18268
2018-12-31,CPTY_00747,Commercial,Manufacturing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01899
2018-12-31,CPTY_01327,Commercial,Manufacturing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13779
2018-12-31,CPTY_00820,Commercial,Manufacturing,0.49,N,Y,2018-02-27,N,S&P,BB,5 - Additional Review,0.04305,0.21182
2018-12-31,CPTY_01132,Commercial,Manufacturing,0.71,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.58042
2018-12-31,CPTY_00733,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.04305,0.14661
2018-12-31,CPTY_01502,Commercial,Manufacturing,0.36,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12063
2018-12-31,CPTY_00731,Commercial,Manufacturing,0.6,N,N,.,N,S&P,B,6 - Special Mention,0.17221,0.38558
2018-12-31,CPTY_01299,Commercial,Manufacturing,0.29,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.07457
2018-12-31,CPTY_01066,Commercial,Manufacturing,1,N,Y,2013-07-29,N,S&P,D,9 - Loss,0.04305,1
2018-12-31,CPTY_01409,Commercial,Manufacturing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01455
2018-12-31,CPTY_01672,Commercial,Manufacturing,0.79,N,Y,2013-06-26,N,S&P,CC,8 - Doubtful,0.04305,0.81546
2018-12-31,CPTY_00999,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16763
2018-12-31,CPTY_00749,Commercial,Manufacturing,0.33,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.06279
2018-12-31,CPTY_01434,Commercial,Manufacturing,0.49,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.23955
2018-12-31,CPTY_01086,Commercial,Manufacturing,0.49,N,Y,2017-06-01,N,S&P,BB,5 - Additional Review,0.04305,0.20577
2018-12-31,CPTY_00916,Commercial,Manufacturing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16154
2018-12-31,CPTY_01154,Commercial,Manufacturing,0.72,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.04305,0.51325
2018-12-31,CPTY_01151,Commercial,Manufacturing,0.73,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.00068,0.39259
2018-12-31,CPTY_01152,Commercial,Manufacturing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04764
2018-12-31,CPTY_01816,Commercial,Manufacturing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.27776
2018-12-31,CPTY_00748,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18087
2018-12-31,CPTY_01412,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18415
2018-12-31,CPTY_00689,Commercial,Manufacturing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04537
2018-12-31,CPTY_01414,Commercial,Manufacturing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11214
2018-12-31,CPTY_01504,Commercial,Manufacturing,0.65,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.04305,0.55211
2018-12-31,CPTY_01323,Commercial,Manufacturing,0.32,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.06721
2018-12-31,CPTY_00970,Commercial,Manufacturing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.23883
2018-12-31,CPTY_01070,Commercial,Manufacturing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02213
2018-12-31,CPTY_01305,Commercial,Manufacturing,0.44,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16235
2018-12-31,CPTY_00673,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1127
2018-12-31,CPTY_01087,Commercial,Manufacturing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18563
2018-12-31,CPTY_00772,Commercial,Manufacturing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0347
2018-12-31,CPTY_01675,Commercial,Manufacturing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17067
2018-12-31,CPTY_01307,Commercial,Manufacturing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11695
2018-12-31,CPTY_01678,Commercial,Manufacturing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.05265
2018-12-31,CPTY_00796,Commercial,Manufacturing,0.79,N,N,.,N,S&P,CC,8 - Doubtful,0.04305,0.5153
2018-12-31,CPTY_01218,Commercial,Manufacturing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.19495
2018-12-31,CPTY_01552,Commercial,Manufacturing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16333
2018-12-31,CPTY_01415,Commercial,Manufacturing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10721
2018-12-31,CPTY_00878,Commercial,Manufacturing,0.56,N,Y,2015-07-18,N,S&P,B,6 - Special Mention,0.04305,0.34959
2018-12-31,CPTY_01505,Commercial,Manufacturing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00873
2018-12-31,CPTY_00591,Commercial,Manufacturing,0.31,Y,Y,2018-05-01,N,S&P,A,3 - Modest Risk,0.01076,0.09036
2018-12-31,CPTY_01418,Commercial,Manufacturing,0.1,Y,Y,2018-05-01,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01315
2018-12-31,CPTY_00934,Commercial,Manufacturing,0.61,N,Y,2014-08-30,N,S&P,B,6 - Special Mention,0.04305,0.34715
2018-12-31,CPTY_00725,Commercial,Manufacturing,0.26,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.06877
2018-12-31,CPTY_01069,Commercial,Manufacturing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01895
2018-12-31,CPTY_01817,Commercial,Manufacturing,0.55,N,Y,2016-12-24,N,S&P,BB,5 - Additional Review,0.17221,0.2174
2018-12-31,CPTY_00655,Commercial,Manufacturing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11125
2018-12-31,CPTY_01553,Commercial,Manufacturing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11418
2018-12-31,CPTY_01682,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17925
2018-12-31,CPTY_01447,Commercial,Manufacturing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.04939
2018-12-31,CPTY_00605,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14114
2018-12-31,CPTY_01713,Commercial,Manufacturing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04451
2018-12-31,CPTY_00741,Commercial,Manufacturing,0.5,Y,Y,2018-05-01,Y,S&P,BB,5 - Additional Review,0.04305,0.22901
2018-12-31,CPTY_00782,Commercial,Manufacturing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01519
2018-12-31,CPTY_01818,Commercial,Manufacturing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04084
2018-12-31,CPTY_01686,Commercial,Manufacturing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.0198
2018-12-31,CPTY_00973,Commercial,Manufacturing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.28365
2018-12-31,CPTY_01688,Commercial,Manufacturing,0.15,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03729
2018-12-31,CPTY_01219,Commercial,Manufacturing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01426
2018-12-31,CPTY_01422,Commercial,Manufacturing,0.6,N,N,.,N,S&P,B,6 - Special Mention,0.00024,0.37232
2018-12-31,CPTY_00727,Commercial,Manufacturing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.1054
2018-12-31,CPTY_01705,Commercial,Manufacturing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03439
2018-12-31,CPTY_01169,Commercial,Manufacturing,0.6,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.39772
2018-12-31,CPTY_00959,Commercial,Manufacturing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13561
2018-12-31,CPTY_00726,Commercial,Manufacturing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.14823
2018-12-31,CPTY_01313,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18844
2018-12-31,CPTY_00996,Commercial,Manufacturing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.21098
2018-12-31,CPTY_01820,Commercial,Manufacturing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05095
2018-12-31,CPTY_01809,Commercial,Manufacturing,0.6,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.36313
2018-12-31,CPTY_00642,Commercial,Manufacturing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10774
2018-12-31,CPTY_01694,Commercial,Manufacturing,0.59,N,N,.,N,S&P,B,6 - Special Mention,0.04305,0.39063
2018-12-31,CPTY_00994,Commercial,Manufacturing,0.49,N,Y,2016-09-05,N,S&P,BB,5 - Additional Review,0.04305,0.21204
2018-12-31,CPTY_01822,Commercial,Manufacturing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.22901
2018-12-31,CPTY_01321,Commercial,Manufacturing,0.56,N,Y,2018-03-30,N,S&P,B,6 - Special Mention,0.04305,0.37307
2018-12-31,CPTY_00745,Commercial,Manufacturing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.0185
2018-12-31,CPTY_00809,Commercial,Manufacturing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.08217
2018-12-31,CPTY_01160,Commercial,Manufacturing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.03663
2018-12-31,CPTY_00765,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14128
2018-12-31,CPTY_00998,Commercial,Manufacturing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01912
2018-12-31,CPTY_00639,Commercial,Manufacturing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00907
2018-12-31,CPTY_00851,Commercial,Manufacturing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12356
2018-12-31,CPTY_00856,Commercial,Manufacturing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02505
2018-12-31,CPTY_01420,Commercial,Manufacturing,0.29,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.05884
2018-12-31,CPTY_01555,Commercial,Manufacturing,0.8,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.54881
2018-12-31,CPTY_01206,Commercial,Manufacturing,0.8,Y,Y,2018-05-01,N,S&P,CC,8 - Doubtful,0.01076,0.7276
2018-12-31,CPTY_01421,Commercial,Manufacturing,0.62,N,N,.,N,S&P,B,6 - Special Mention,0.04305,0.36972
2018-12-31,CPTY_01073,Commercial,Manufacturing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04934
2018-12-31,CPTY_01316,Commercial,Manufacturing,0.37,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11955
2018-12-31,CPTY_01317,Commercial,Manufacturing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02957
2018-12-31,CPTY_00947,Commercial,Manufacturing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.0106
2018-12-31,CPTY_01319,Commercial,Manufacturing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.04764
2018-12-31,CPTY_01426,Commercial,Manufacturing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16009
2018-12-31,CPTY_01429,Commercial,Manufacturing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01157
2018-12-31,CPTY_01701,Commercial,Manufacturing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03854
2018-12-31,CPTY_00728,Commercial,Manufacturing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04601
2018-12-31,CPTY_00951,Commercial,Manufacturing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01217
2018-12-31,CPTY_00598,Commercial,Manufacturing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.03223
2018-12-31,CPTY_01331,Commercial,Manufacturing,1.02,N,N,.,N,S&P,D,9 - Loss,0.01076,1
2018-12-31,CPTY_01810,Commercial,Manufacturing,0.71,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.04305,0.31854
2018-12-31,CPTY_00908,Commercial,Manufacturing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10667
2018-12-31,CPTY_01718,Commercial,Manufacturing,0.44,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15708
2018-12-31,CPTY_01721,Commercial,Manufacturing,0.6,N,Y,2016-09-19,N,S&P,B,6 - Special Mention,0.17221,0.39972
2018-12-31,CPTY_01811,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16415
2018-12-31,CPTY_01427,Commercial,Manufacturing,0.59,N,N,.,N,S&P,B,6 - Special Mention,0.04305,0.39337
2018-12-31,CPTY_01702,Commercial,Manufacturing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01394
2018-12-31,CPTY_00735,Commercial,Manufacturing,0.7,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.37719
2018-12-31,CPTY_00769,Commercial,Manufacturing,0.43,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.04305,0.14072
2018-12-31,CPTY_00761,Commercial,Manufacturing,0.5,Y,Y,2018-05-01,Y,S&P,BB,5 - Additional Review,0.04305,0.26211
2018-12-31,CPTY_00730,Commercial,Manufacturing,0.94,N,N,.,N,S&P,D,9 - Loss,0.01076,1
2018-12-31,CPTY_01720,Commercial,Manufacturing,0.56,N,Y,2016-12-20,N,S&P,B,6 - Special Mention,0.04305,0.39455
2018-12-31,CPTY_01563,Commercial,Manufacturing,0.28,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.0803
2018-12-31,CPTY_01176,Commercial,Manufacturing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.04305,0.15168
2018-12-31,CPTY_01492,Commercial,Manufacturing,0.39,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.11824
2018-12-31,CPTY_01428,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17996
2018-12-31,CPTY_00616,Commercial,Manufacturing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01548
2018-12-31,CPTY_00786,Commercial,Manufacturing,1.04,N,N,.,N,S&P,D,9 - Loss,0.17221,1
2018-12-31,CPTY_00653,Commercial,Manufacturing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04004
2018-12-31,CPTY_01330,Commercial,Manufacturing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01656
2018-12-31,CPTY_01515,Commercial,Manufacturing,0.32,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.06863
2018-12-31,CPTY_01433,Commercial,Manufacturing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04084
2018-12-31,CPTY_00768,Commercial,Manufacturing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.00024,0.16729
2018-12-31,CPTY_00551,Retail,Retail Customer,0.37,N,N,.,N,FICO,642,4 - Bankable,0.01076,0.18105
2018-12-31,CPTY_01273,Commercial,Real Estate and Rental and Leasing,0.3,Y,Y,2018-05-01,N,S&P,A,3 - Modest Risk,0.00269,0.10311
2018-12-31,CPTY_01400,Commercial,Real Estate and Rental and Leasing,0.29,Y,Y,2018-05-01,N,S&P,A,3 - Modest Risk,0.00269,0.07895
2018-12-31,CPTY_01638,Commercial,Real Estate and Rental and Leasing,0.4,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.1653
2018-12-31,CPTY_01554,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04238
2018-12-31,CPTY_01689,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01323
2018-12-31,CPTY_01156,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.049
2018-12-31,CPTY_00752,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03408
2018-12-31,CPTY_00832,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03996
2018-12-31,CPTY_01010,Commercial,Real Estate and Rental and Leasing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11943
2018-12-31,CPTY_01812,Commercial,Real Estate and Rental and Leasing,0.7,N,Y,2014-03-01,N,S&P,CCC,7 - Sub-Standard,0.04305,0.54118
2018-12-31,CPTY_00882,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10796
2018-12-31,CPTY_01402,Commercial,Real Estate and Rental and Leasing,0.41,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.16057
2018-12-31,CPTY_01645,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15017
2018-12-31,CPTY_01165,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12406
2018-12-31,CPTY_01711,Commercial,Real Estate and Rental and Leasing,0.36,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.11579
2018-12-31,CPTY_01139,Commercial,Real Estate and Rental and Leasing,0.99,Y,Y,2018-05-01,N,S&P,D,9 - Loss,0.04305,1
2018-12-31,CPTY_01724,Commercial,Real Estate and Rental and Leasing,0.63,Y,Y,2018-05-01,Y,S&P,B,6 - Special Mention,0.17221,0.34994
2018-12-31,CPTY_01338,Commercial,Real Estate and Rental and Leasing,0.31,Y,Y,2018-05-01,Y,S&P,A,3 - Modest Risk,0.00269,0.07754
2018-12-31,CPTY_00923,Commercial,Real Estate and Rental and Leasing,0.97,Y,Y,2018-05-01,Y,S&P,D,9 - Loss,0.17221,1
2018-12-31,CPTY_01225,Commercial,Real Estate and Rental and Leasing,0.07,Y,Y,2018-05-01,Y,S&P,AAA,1 - Largely Risk Free,0.00024,0.02948
2018-12-31,CPTY_01431,Commercial,Real Estate and Rental and Leasing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.03733
2018-12-31,CPTY_00890,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.02326
2018-12-31,CPTY_01432,Commercial,Real Estate and Rental and Leasing,0.07,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02495
2018-12-31,CPTY_01435,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.04647
2018-12-31,CPTY_01016,Commercial,Real Estate and Rental and Leasing,0.61,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.37232
2018-12-31,CPTY_01436,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.07547
2018-12-31,CPTY_00989,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.02799
2018-12-31,CPTY_01438,Commercial,Real Estate and Rental and Leasing,0.29,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.05761
2018-12-31,CPTY_00798,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05399
2018-12-31,CPTY_01441,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01029
2018-12-31,CPTY_00676,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0432
2018-12-31,CPTY_01442,Commercial,Real Estate and Rental and Leasing,0.07,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00916
2018-12-31,CPTY_00720,Commercial,Real Estate and Rental and Leasing,0.56,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.34994
2018-12-31,CPTY_01444,Commercial,Real Estate and Rental and Leasing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.04109
2018-12-31,CPTY_00919,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05486
2018-12-31,CPTY_01446,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.03053
2018-12-31,CPTY_00767,Commercial,Real Estate and Rental and Leasing,0.7,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.48287
2018-12-31,CPTY_01448,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.07793
2018-12-31,CPTY_00898,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10937
2018-12-31,CPTY_01451,Commercial,Real Estate and Rental and Leasing,0.45,N,N,.,N,S&P,BB,5 - Additional Review,0.00068,0.19128
2018-12-31,CPTY_00830,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12112
2018-12-31,CPTY_01452,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.00024,0.15552
2018-12-31,CPTY_00687,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.14942
2018-12-31,CPTY_01270,Commercial,Real Estate and Rental and Leasing,0.39,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.14058
2018-12-31,CPTY_01698,Commercial,Real Estate and Rental and Leasing,0.44,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15536
2018-12-31,CPTY_01648,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03992
2018-12-31,CPTY_01280,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04048
2018-12-31,CPTY_01074,Commercial,Real Estate and Rental and Leasing,0.49,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.27253
2018-12-31,CPTY_01633,Commercial,Real Estate and Rental and Leasing,0.31,Y,Y,2018-05-01,N,S&P,A,3 - Modest Risk,0.00269,0.08655
2018-12-31,CPTY_01651,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12172
2018-12-31,CPTY_01283,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04846
2018-12-31,CPTY_01212,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.10959
2018-12-31,CPTY_00737,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14544
2018-12-31,CPTY_01144,Commercial,Real Estate and Rental and Leasing,0.58,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.36714
2018-12-31,CPTY_01000,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01309
2018-12-31,CPTY_00837,Commercial,Real Estate and Rental and Leasing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10742
2018-12-31,CPTY_01028,Commercial,Real Estate and Rental and Leasing,0.51,Y,Y,2018-05-01,N,S&P,BB,5 - Additional Review,0.04305,0.20805
2018-12-31,CPTY_00838,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10883
2018-12-31,CPTY_01046,Commercial,Real Estate and Rental and Leasing,0.37,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15198
2018-12-31,CPTY_01057,Commercial,Real Estate and Rental and Leasing,0.14,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00959
2018-12-31,CPTY_01565,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04478
2018-12-31,CPTY_01729,Commercial,Real Estate and Rental and Leasing,0.63,N,Y,2016-08-07,N,S&P,B,6 - Special Mention,0.17221,0.38022
2018-12-31,CPTY_01174,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13439
2018-12-31,CPTY_01722,Commercial,Real Estate and Rental and Leasing,0.49,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.26158
2018-12-31,CPTY_01336,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03801
2018-12-31,CPTY_00961,Commercial,Real Estate and Rental and Leasing,0.54,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.19437
2018-12-31,CPTY_01170,Commercial,Real Estate and Rental and Leasing,0.28,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.07654
2018-12-31,CPTY_01227,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.00024,0.11102
2018-12-31,CPTY_01022,Commercial,Real Estate and Rental and Leasing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02936
2018-12-31,CPTY_00592,Commercial,Real Estate and Rental and Leasing,0.71,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.3437
2018-12-31,CPTY_01207,Commercial,Real Estate and Rental and Leasing,0.39,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.18489
2018-12-31,CPTY_01546,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.01366
2018-12-31,CPTY_01049,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12381
2018-12-31,CPTY_00650,Commercial,Real Estate and Rental and Leasing,0.13,Y,Y,2018-05-01,N,S&P,AAA,1 - Largely Risk Free,0.01076,0.00879
2018-12-31,CPTY_01657,Commercial,Real Estate and Rental and Leasing,0.29,Y,Y,2018-05-01,N,S&P,A,3 - Modest Risk,0.00269,0.0891
2018-12-31,CPTY_00607,Commercial,Real Estate and Rental and Leasing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.24317
2018-12-31,CPTY_01289,Commercial,Real Estate and Rental and Leasing,0.71,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.00068,0.41478
2018-12-31,CPTY_01512,Commercial,Real Estate and Rental and Leasing,0.37,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1437
2018-12-31,CPTY_00723,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02487
2018-12-31,CPTY_01708,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11848
2018-12-31,CPTY_00814,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13252
2018-12-31,CPTY_01497,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17291
2018-12-31,CPTY_00644,Commercial,Real Estate and Rental and Leasing,0.32,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.0696
2018-12-31,CPTY_01147,Commercial,Real Estate and Rental and Leasing,0.49,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.22673
2018-12-31,CPTY_01637,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12295
2018-12-31,CPTY_01292,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13629
2018-12-31,CPTY_01659,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1678
2018-12-31,CPTY_01712,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11158
2018-12-31,CPTY_01054,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0413
2018-12-31,CPTY_01148,Commercial,Real Estate and Rental and Leasing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.19969
2018-12-31,CPTY_01394,Commercial,Real Estate and Rental and Leasing,0.46,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.24123
2018-12-31,CPTY_01829,Commercial,Real Estate and Rental and Leasing,0.96,Y,Y,2018-05-01,Y,S&P,D,9 - Loss,0.6,1
2018-12-31,CPTY_01093,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10393
2018-12-31,CPTY_01091,Commercial,Real Estate and Rental and Leasing,0.98,N,N,.,N,S&P,D,9 - Loss,0.01076,1
2018-12-31,CPTY_00781,Commercial,Real Estate and Rental and Leasing,0.46,N,Y,2013-06-16,N,S&P,BB,5 - Additional Review,0.04305,0.22447
2018-12-31,CPTY_01096,Commercial,Real Estate and Rental and Leasing,0.24,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03601
2018-12-31,CPTY_01725,Commercial,Real Estate and Rental and Leasing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05547
2018-12-31,CPTY_00906,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04491
2018-12-31,CPTY_01516,Commercial,Real Estate and Rental and Leasing,0.26,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.06561
2018-12-31,CPTY_00907,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04959
2018-12-31,CPTY_00693,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12951
2018-12-31,CPTY_01517,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04076
2018-12-31,CPTY_00722,Commercial,Real Estate and Rental and Leasing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.27637
2018-12-31,CPTY_01728,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05653
2018-12-31,CPTY_01171,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.03526
2018-12-31,CPTY_00651,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05308
2018-12-31,CPTY_00773,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04624
2018-12-31,CPTY_01450,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01521
2018-12-31,CPTY_00627,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.03175
2018-12-31,CPTY_00942,Commercial,Real Estate and Rental and Leasing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.00949
2018-12-31,CPTY_00875,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15002
2018-12-31,CPTY_01730,Commercial,Real Estate and Rental and Leasing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03551
2018-12-31,CPTY_01339,Commercial,Real Estate and Rental and Leasing,0.1,Y,Y,2018-05-01,Y,S&P,AAA,1 - Largely Risk Free,0.00024,0.0305
2018-12-31,CPTY_01332,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01054
2018-12-31,CPTY_00921,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00866
2018-12-31,CPTY_00600,Commercial,Real Estate and Rental and Leasing,0.53,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.28479
2018-12-31,CPTY_00760,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03744
2018-12-31,CPTY_01509,Commercial,Real Estate and Rental and Leasing,0.15,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04964
2018-12-31,CPTY_01498,Commercial,Real Estate and Rental and Leasing,0.99,N,N,.,N,S&P,D,9 - Loss,0.00068,1
2018-12-31,CPTY_00836,Commercial,Real Estate and Rental and Leasing,0.55,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.19282
2018-12-31,CPTY_01143,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00773
2018-12-31,CPTY_00603,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.09255
2018-12-31,CPTY_00891,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.03229
2018-12-31,CPTY_01407,Commercial,Real Estate and Rental and Leasing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00782
2018-12-31,CPTY_00638,Commercial,Real Estate and Rental and Leasing,0.29,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.06014
2018-12-31,CPTY_01039,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04324
2018-12-31,CPTY_01666,Commercial,Real Estate and Rental and Leasing,0.59,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.39574
2018-12-31,CPTY_01295,Commercial,Real Estate and Rental and Leasing,0.18,Y,Y,2018-05-01,Y,S&P,AA,2 - Minimal Risk,0.00024,0.03744
2018-12-31,CPTY_00595,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14823
2018-12-31,CPTY_01006,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03364
2018-12-31,CPTY_00664,Commercial,Real Estate and Rental and Leasing,1,Y,Y,2018-05-01,Y,S&P,D,9 - Loss,0.6,1
2018-12-31,CPTY_01506,Commercial,Real Estate and Rental and Leasing,0.37,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14471
2018-12-31,CPTY_01296,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17343
2018-12-31,CPTY_01500,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01239
2018-12-31,CPTY_01298,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05491
2018-12-31,CPTY_01548,Commercial,Real Estate and Rental and Leasing,0.8,N,N,.,N,S&P,CC,8 - Doubtful,0.00068,0.70822
2018-12-31,CPTY_01669,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02517
2018-12-31,CPTY_01217,Commercial,Real Estate and Rental and Leasing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15993
2018-12-31,CPTY_00750,Commercial,Real Estate and Rental and Leasing,0.29,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.05937
2018-12-31,CPTY_00623,Commercial,Real Estate and Rental and Leasing,0.61,N,Y,2013-06-29,N,S&P,B,6 - Special Mention,0.17221,0.38674
2018-12-31,CPTY_00734,Commercial,Real Estate and Rental and Leasing,0.72,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.40698
2018-12-31,CPTY_01300,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.0081
2018-12-31,CPTY_00602,Commercial,Real Estate and Rental and Leasing,0.6,Y,Y,2018-05-01,N,S&P,B,6 - Special Mention,0.04305,0.39141
2018-12-31,CPTY_00888,Commercial,Real Estate and Rental and Leasing,0.61,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.3588
2018-12-31,CPTY_01673,Commercial,Real Estate and Rental and Leasing,0.72,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.56779
2018-12-31,CPTY_01674,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05453
2018-12-31,CPTY_01168,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.01101
2018-12-31,CPTY_01304,Commercial,Real Estate and Rental and Leasing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.26821
2018-12-31,CPTY_01153,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04817
2018-12-31,CPTY_01503,Commercial,Real Estate and Rental and Leasing,0.51,N,Y,2016-04-30,N,S&P,BB,5 - Additional Review,0.04305,0.19398
2018-12-31,CPTY_01009,Commercial,Real Estate and Rental and Leasing,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02948
2018-12-31,CPTY_01001,Commercial,Real Estate and Rental and Leasing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.29582
2018-12-31,CPTY_01719,Commercial,Real Estate and Rental and Leasing,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00845
2018-12-31,CPTY_00862,Commercial,Real Estate and Rental and Leasing,0.48,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.20763
2018-12-31,CPTY_01345,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.01335
2018-12-31,CPTY_00807,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15977
2018-12-31,CPTY_01440,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.01076,0.03505
2018-12-31,CPTY_01677,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02228
2018-12-31,CPTY_01679,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01522
2018-12-31,CPTY_01322,Commercial,Real Estate and Rental and Leasing,0.82,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.76951
2018-12-31,CPTY_01063,Commercial,Real Estate and Rental and Leasing,0.62,N,N,.,N,S&P,B,6 - Special Mention,0.00024,0.36096
2018-12-31,CPTY_01417,Commercial,Real Estate and Rental and Leasing,0.38,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.145
2018-12-31,CPTY_00806,Commercial,Real Estate and Rental and Leasing,0.11,Y,Y,2018-05-01,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00966
2018-12-31,CPTY_00665,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13134
2018-12-31,CPTY_00678,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03439
2018-12-31,CPTY_01685,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01763
2018-12-31,CPTY_01114,Commercial,Real Estate and Rental and Leasing,0.69,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.38481
2018-12-31,CPTY_01687,Commercial,Real Estate and Rental and Leasing,0.79,N,N,.,N,S&P,CC,8 - Doubtful,0.00068,0.58802
2018-12-31,CPTY_01312,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05115
2018-12-31,CPTY_00949,Commercial,Real Estate and Rental and Leasing,0.81,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.63699
2018-12-31,CPTY_01315,Commercial,Real Estate and Rental and Leasing,0.59,N,N,.,N,S&P,B,6 - Special Mention,0.17221,0.36935
2018-12-31,CPTY_01419,Commercial,Real Estate and Rental and Leasing,0.28,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.06342
2018-12-31,CPTY_01309,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.05234
2018-12-31,CPTY_01310,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13147
2018-12-31,CPTY_00659,Commercial,Real Estate and Rental and Leasing,0.8,N,N,.,N,S&P,CC,8 - Doubtful,0.00024,0.73418
2018-12-31,CPTY_01314,Commercial,Real Estate and Rental and Leasing,0.24,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.05156
2018-12-31,CPTY_01692,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12015
2018-12-31,CPTY_01819,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00976
2018-12-31,CPTY_00754,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1299
2018-12-31,CPTY_01821,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03659
2018-12-31,CPTY_01222,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13213
2018-12-31,CPTY_00880,Commercial,Real Estate and Rental and Leasing,0.69,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.36825
2018-12-31,CPTY_01695,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05156
2018-12-31,CPTY_01149,Commercial,Real Estate and Rental and Leasing,0.14,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.0196
2018-12-31,CPTY_01443,Commercial,Real Estate and Rental and Leasing,0.46,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17978
2018-12-31,CPTY_00672,Commercial,Real Estate and Rental and Leasing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.00068,0.20271
2018-12-31,CPTY_01372,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02665
2018-12-31,CPTY_01511,Commercial,Real Estate and Rental and Leasing,0.29,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.10321
2018-12-31,CPTY_01634,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18232
2018-12-31,CPTY_01710,Commercial,Real Estate and Rental and Leasing,0.32,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.06336
2018-12-31,CPTY_01556,Commercial,Real Estate and Rental and Leasing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.0098
2018-12-31,CPTY_01691,Commercial,Real Estate and Rental and Leasing,0.53,N,N,.,N,S&P,BB,5 - Additional Review,0.00068,0.20536
2018-12-31,CPTY_01423,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12938
2018-12-31,CPTY_00899,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17693
2018-12-31,CPTY_00738,Commercial,Real Estate and Rental and Leasing,0.6,N,Y,2014-08-14,N,S&P,B,6 - Special Mention,0.17221,0.37682
2018-12-31,CPTY_01424,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18563
2018-12-31,CPTY_00647,Commercial,Real Estate and Rental and Leasing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.21182
2018-12-31,CPTY_01320,Commercial,Real Estate and Rental and Leasing,1,N,N,.,N,S&P,D,9 - Loss,0.00024,1
2018-12-31,CPTY_01510,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02933
2018-12-31,CPTY_01439,Commercial,Real Estate and Rental and Leasing,0.79,N,N,.,N,S&P,CC,8 - Doubtful,0.00068,0.81383
2018-12-31,CPTY_00931,Commercial,Real Estate and Rental and Leasing,0.34,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13305
2018-12-31,CPTY_01162,Commercial,Real Estate and Rental and Leasing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.19224
2018-12-31,CPTY_01172,Commercial,Real Estate and Rental and Leasing,0.58,N,Y,2014-08-02,N,S&P,B,6 - Special Mention,0.17221,0.36862
2018-12-31,CPTY_01699,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03604
2018-12-31,CPTY_01430,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04213
2018-12-31,CPTY_00746,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10393
2018-12-31,CPTY_00717,Commercial,Real Estate and Rental and Leasing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.01082
2018-12-31,CPTY_01635,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.14544
2018-12-31,CPTY_00724,Commercial,Real Estate and Rental and Leasing,0.7,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.04305,0.58217
2018-12-31,CPTY_01717,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11979
2018-12-31,CPTY_00715,Commercial,Real Estate and Rental and Leasing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04324
2018-12-31,CPTY_01192,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.05039
2018-12-31,CPTY_00620,Commercial,Real Estate and Rental and Leasing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.28055
2018-12-31,CPTY_01333,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18397
2018-12-31,CPTY_01334,Commercial,Real Estate and Rental and Leasing,0.49,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.19476
2018-12-31,CPTY_01173,Commercial,Real Estate and Rental and Leasing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.21438
2018-12-31,CPTY_01449,Commercial,Real Estate and Rental and Leasing,0.47,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.26554
2018-12-31,CPTY_01141,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12307
2018-12-31,CPTY_01828,Commercial,Real Estate and Rental and Leasing,0.26,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.06542
2018-12-31,CPTY_00824,Commercial,Real Estate and Rental and Leasing,0.52,N,Y,2017-05-20,N,S&P,BB,5 - Additional Review,0.04305,0.27253
2018-12-31,CPTY_01703,Commercial,Real Estate and Rental and Leasing,0.79,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.62751
2018-12-31,CPTY_01558,Commercial,Real Estate and Rental and Leasing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0387
2018-12-31,CPTY_01706,Commercial,Real Estate and Rental and Leasing,0.68,N,Y,2014-12-28,N,S&P,CCC,7 - Sub-Standard,0.17221,0.57465
2018-12-31,CPTY_01707,Commercial,Real Estate and Rental and Leasing,1.01,Y,Y,2018-05-01,Y,S&P,D,9 - Loss,0.17221,1
2018-12-31,CPTY_01326,Commercial,Real Estate and Rental and Leasing,0.28,Y,Y,2018-05-01,Y,S&P,A,3 - Modest Risk,0.00269,0.07295
2018-12-31,CPTY_00847,Commercial,Real Estate and Rental and Leasing,1,Y,Y,2018-05-01,Y,S&P,D,9 - Loss,0.17221,1
2018-12-31,CPTY_01167,Commercial,Real Estate and Rental and Leasing,0.21,Y,Y,2018-05-01,Y,S&P,AA,2 - Minimal Risk,0.00024,0.05383
2018-12-31,CPTY_01226,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01337
2018-12-31,CPTY_01826,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.0133
2018-12-31,CPTY_00903,Commercial,Real Estate and Rental and Leasing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15032
2018-12-31,CPTY_01335,Commercial,Real Estate and Rental and Leasing,0.79,N,N,.,N,S&P,CC,8 - Doubtful,0.00024,0.65902
2018-12-31,CPTY_00821,Commercial,Real Estate and Rental and Leasing,0.07,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01602
2018-12-31,CPTY_01827,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13683
2018-12-31,CPTY_00913,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.00024,0.18563
2018-12-31,CPTY_01399,Commercial,Real Estate and Rental and Leasing,0.13,Y,Y,2018-05-01,N,S&P,AAA,1 - Largely Risk Free,0.00269,0.02576
2018-12-31,CPTY_01715,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04354
2018-12-31,CPTY_00897,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04004
2018-12-31,CPTY_01125,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05213
2018-12-31,CPTY_01341,Commercial,Real Estate and Rental and Leasing,0.2,Y,Y,2018-05-01,N,S&P,AA,2 - Minimal Risk,0.00269,0.05004
2018-12-31,CPTY_01737,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00738
2018-12-31,CPTY_01159,Commercial,Real Estate and Rental and Leasing,0.44,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.15274
2018-12-31,CPTY_01453,Commercial,Real Estate and Rental and Leasing,0.39,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.11908
2018-12-31,CPTY_01201,Commercial,Real Estate and Rental and Leasing,0.83,Y,Y,2018-05-01,Y,S&P,CC,8 - Doubtful,0.00024,0.59571
2018-12-31,CPTY_00927,Commercial,Real Estate and Rental and Leasing,0.16,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03968
2018-12-31,CPTY_01455,Commercial,Real Estate and Rental and Leasing,0.8,N,N,.,N,S&P,CC,8 - Doubtful,0.00024,0.58802
2018-12-31,CPTY_00872,Commercial,Real Estate and Rental and Leasing,1.04,N,N,.,N,S&P,D,9 - Loss,0.00068,1
2018-12-31,CPTY_00924,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04068
2018-12-31,CPTY_00894,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03681
2018-12-31,CPTY_01457,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00983
2018-12-31,CPTY_01463,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0347
2018-12-31,CPTY_00848,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11498
2018-12-31,CPTY_01340,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11602
2018-12-31,CPTY_01342,Commercial,Real Estate and Rental and Leasing,0.31,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.06167
2018-12-31,CPTY_01731,Commercial,Real Estate and Rental and Leasing,0.34,Y,Y,2018-05-01,N,S&P,A,3 - Modest Risk,0.00269,0.076
2018-12-31,CPTY_01343,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04679
2018-12-31,CPTY_00719,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15536
2018-12-31,CPTY_01547,Commercial,Real Estate and Rental and Leasing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04619
2018-12-31,CPTY_01756,Commercial,Real Estate and Rental and Leasing,1.01,N,N,.,N,S&P,D,9 - Loss,0.17221,1
2018-12-31,CPTY_01752,Commercial,Real Estate and Rental and Leasing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.19014
2018-12-31,CPTY_01351,Commercial,Real Estate and Rental and Leasing,0.32,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.06063
2018-12-31,CPTY_00826,Commercial,Real Estate and Rental and Leasing,0.99,N,N,.,N,S&P,D,9 - Loss,0.04305,1
2018-12-31,CPTY_01150,Commercial,Real Estate and Rental and Leasing,0.79,N,N,.,N,S&P,CC,8 - Doubtful,0.00024,0.70469
2018-12-31,CPTY_01231,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.0076
2018-12-31,CPTY_00759,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00807
2018-12-31,CPTY_01566,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03748
2018-12-31,CPTY_00828,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13506
2018-12-31,CPTY_00658,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15661
2018-12-31,CPTY_01519,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13561
2018-12-31,CPTY_01175,Commercial,Real Estate and Rental and Leasing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.25183
2018-12-31,CPTY_01733,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13574
2018-12-31,CPTY_00920,Commercial,Real Estate and Rental and Leasing,0.27,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.09837
2018-12-31,CPTY_01837,Commercial,Real Estate and Rental and Leasing,0.98,Y,Y,2018-05-01,Y,S&P,D,9 - Loss,0.6,1
2018-12-31,CPTY_00859,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.01076,0.04905
2018-12-31,CPTY_00812,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1875
2018-12-31,CPTY_01060,Commercial,Real Estate and Rental and Leasing,0.51,N,Y,2017-07-06,N,S&P,BB,5 - Additional Review,0.04305,0.24709
2018-12-31,CPTY_00729,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04171
2018-12-31,CPTY_01754,Commercial,Real Estate and Rental and Leasing,0.24,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04389
2018-12-31,CPTY_01062,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.01404
2018-12-31,CPTY_01522,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.00728
2018-12-31,CPTY_00850,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.02069
2018-12-31,CPTY_00855,Commercial,Real Estate and Rental and Leasing,0.58,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.35099
2018-12-31,CPTY_01523,Commercial,Real Estate and Rental and Leasing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0402
2018-12-31,CPTY_01002,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.04305,0.03831
2018-12-31,CPTY_01755,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.09633
2018-12-31,CPTY_01146,Commercial,Real Estate and Rental and Leasing,0.31,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.07237
2018-12-31,CPTY_00612,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05019
2018-12-31,CPTY_00922,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.13266
2018-12-31,CPTY_01462,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02543
2018-12-31,CPTY_00594,Commercial,Real Estate and Rental and Leasing,0.07,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02139
2018-12-31,CPTY_00753,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04905
2018-12-31,CPTY_00799,Commercial,Real Estate and Rental and Leasing,0.61,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.3806
2018-12-31,CPTY_01757,Commercial,Real Estate and Rental and Leasing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.01651
2018-12-31,CPTY_01352,Commercial,Real Estate and Rental and Leasing,0.12,Y,Y,2018-05-01,Y,S&P,AAA,1 - Largely Risk Free,0.00024,0.02317
2018-12-31,CPTY_01293,Commercial,Real Estate and Rental and Leasing,0.69,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.00024,0.34301
2018-12-31,CPTY_01003,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01283
2018-12-31,CPTY_00622,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.07339
2018-12-31,CPTY_01520,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04564
2018-12-31,CPTY_00641,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05524
2018-12-31,CPTY_00662,Commercial,Real Estate and Rental and Leasing,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02465
2018-12-31,CPTY_00626,Commercial,Real Estate and Rental and Leasing,1.03,Y,Y,2018-05-01,Y,S&P,D,9 - Loss,0.6,1
2018-12-31,CPTY_01521,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17978
2018-12-31,CPTY_01464,Commercial,Real Estate and Rental and Leasing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00843
2018-12-31,CPTY_00787,Commercial,Real Estate and Rental and Leasing,1.05,N,N,.,N,S&P,D,9 - Loss,0.01076,1
2018-12-31,CPTY_01353,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02202
2018-12-31,CPTY_01354,Commercial,Real Estate and Rental and Leasing,0.79,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.70117
2018-12-31,CPTY_01232,Commercial,Real Estate and Rental and Leasing,0.47,N,Y,2016-05-20,N,S&P,BB,5 - Additional Review,0.04305,0.23504
2018-12-31,CPTY_01758,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11943
2018-12-31,CPTY_01759,Commercial,Real Estate and Rental and Leasing,0.49,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.2238
2018-12-31,CPTY_00663,Commercial,Real Estate and Rental and Leasing,0.16,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.04268
2018-12-31,CPTY_01465,Commercial,Real Estate and Rental and Leasing,0.6,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.36495
2018-12-31,CPTY_01288,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00839
2018-12-31,CPTY_01761,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16122
2018-12-31,CPTY_01838,Commercial,Real Estate and Rental and Leasing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.03245
2018-12-31,CPTY_00955,Commercial,Real Estate and Rental and Leasing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.27199
2018-12-31,CPTY_01072,Commercial,Real Estate and Rental and Leasing,0.29,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.0571
2018-12-31,CPTY_01744,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04693
2018-12-31,CPTY_01458,Commercial,Real Estate and Rental and Leasing,0.4,N,Y,2017-07-26,N,S&P,BBB,4 - Bankable,0.04305,0.10904
2018-12-31,CPTY_01459,Commercial,Real Estate and Rental and Leasing,0.79,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.64211
2018-12-31,CPTY_00762,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11896
2018-12-31,CPTY_01835,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05192
2018-12-31,CPTY_01746,Commercial,Real Estate and Rental and Leasing,0.49,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.25743
2018-12-31,CPTY_01230,Commercial,Real Estate and Rental and Leasing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.22787
2018-12-31,CPTY_00808,Commercial,Real Estate and Rental and Leasing,0.53,N,Y,2018-02-26,N,S&P,BB,5 - Additional Review,0.04305,0.26342
2018-12-31,CPTY_00706,Commercial,Real Estate and Rental and Leasing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.04305,0.15755
2018-12-31,CPTY_00803,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10915
2018-12-31,CPTY_01346,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.04008
2018-12-31,CPTY_00613,Commercial,Real Estate and Rental and Leasing,0.56,Y,Y,2018-05-01,N,S&P,B,6 - Special Mention,0.04305,0.3806
2018-12-31,CPTY_00835,Commercial,Real Estate and Rental and Leasing,0.27,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.10198
2018-12-31,CPTY_01347,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.04305,0.15598
2018-12-31,CPTY_00928,Commercial,Real Estate and Rental and Leasing,0.48,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.25309
2018-12-31,CPTY_01350,Commercial,Real Estate and Rental and Leasing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.21849
2018-12-31,CPTY_00698,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.07179
2018-12-31,CPTY_01567,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02776
2018-12-31,CPTY_01047,Commercial,Real Estate and Rental and Leasing,0.31,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.0613
2018-12-31,CPTY_01568,Commercial,Real Estate and Rental and Leasing,0.33,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.09671
2018-12-31,CPTY_00968,Commercial,Real Estate and Rental and Leasing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.23788
2018-12-31,CPTY_01027,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12606
2018-12-31,CPTY_01157,Commercial,Real Estate and Rental and Leasing,0.74,Y,Y,2018-05-01,Y,S&P,CCC,7 - Sub-Standard,0.00269,0.38404
2018-12-31,CPTY_01747,Commercial,Real Estate and Rental and Leasing,0.29,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.08655
2018-12-31,CPTY_00874,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04398
2018-12-31,CPTY_01460,Commercial,Real Estate and Rental and Leasing,0.59,N,N,.,N,S&P,B,6 - Special Mention,0.17221,0.37083
2018-12-31,CPTY_01748,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03579
2018-12-31,CPTY_01155,Commercial,Real Estate and Rental and Leasing,0.39,Y,Y,2018-05-01,N,S&P,BBB,4 - Bankable,0.01076,0.10498
2018-12-31,CPTY_00988,Commercial,Real Estate and Rental and Leasing,0.32,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.07958
2018-12-31,CPTY_01461,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04637
2018-12-31,CPTY_01302,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0346
2018-12-31,CPTY_01411,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0513
2018-12-31,CPTY_01749,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13239
2018-12-31,CPTY_01551,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05218
2018-12-31,CPTY_01751,Commercial,Real Estate and Rental and Leasing,0.07,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02113
2018-12-31,CPTY_01676,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0442
2018-12-31,CPTY_01833,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04184
2018-12-31,CPTY_01739,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04052
2018-12-31,CPTY_01738,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04491
2018-12-31,CPTY_00771,Commercial,Real Estate and Rental and Leasing,0.81,N,Y,2017-12-06,N,S&P,CC,8 - Doubtful,0.17221,0.5999
2018-12-31,CPTY_01445,Commercial,Real Estate and Rental and Leasing,0.58,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.38752
2018-12-31,CPTY_00636,Commercial,Real Estate and Rental and Leasing,0.38,N,Y,2015-12-12,N,S&P,BBB,4 - Bankable,0.04305,0.17395
2018-12-31,CPTY_01164,Commercial,Real Estate and Rental and Leasing,0.82,N,N,.,N,S&P,CC,8 - Doubtful,0.04305,0.61079
2018-12-31,CPTY_01743,Commercial,Real Estate and Rental and Leasing,0.7,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.44441
2018-12-31,CPTY_00881,Commercial,Real Estate and Rental and Leasing,0.07,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.01028
2018-12-31,CPTY_01413,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16365
2018-12-31,CPTY_01740,Commercial,Real Estate and Rental and Leasing,0.83,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.57926
2018-12-31,CPTY_01557,Commercial,Real Estate and Rental and Leasing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.16965
2018-12-31,CPTY_01741,Commercial,Real Estate and Rental and Leasing,0.63,N,Y,2015-02-28,N,S&P,B,6 - Special Mention,0.17221,0.36568
2018-12-31,CPTY_01742,Commercial,Real Estate and Rental and Leasing,0.76,Y,Y,2018-05-01,Y,S&P,CC,8 - Doubtful,0.17221,0.67638
2018-12-31,CPTY_01348,Commercial,Real Estate and Rental and Leasing,0.3,Y,Y,2018-05-01,Y,S&P,A,3 - Modest Risk,0.00269,0.05913
2018-12-31,CPTY_01228,Commercial,Real Estate and Rental and Leasing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01735
2018-12-31,CPTY_01834,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00698
2018-12-31,CPTY_01080,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.03422
2018-12-31,CPTY_00739,Commercial,Real Estate and Rental and Leasing,0.79,N,N,.,N,S&P,CC,8 - Doubtful,0.00068,0.59512
2018-12-31,CPTY_00539,Retail,Retail Customer,0.49,Y,Y,2018-05-01,Y,FICO,582,5 - Additional Review,0.04305,0.23551
2018-12-31,CPTY_00208,Retail,Retail Customer,0.62,N,Y,2017-05-04,N,FICO,515,6 - Special Mention,0.01076,0.38713
2018-12-31,CPTY_00018,Retail,Retail Customer,0.09,N,N,.,N,FICO,789,1 - Largely Risk Free,0.00024,0.0313
2018-12-31,CPTY_00405,Retail,Retail Customer,0.04,N,N,.,N,FICO,757,1 - Largely Risk Free,0.00024,0.01236
2018-12-31,CPTY_00037,Retail,Retail Customer,0.31,N,N,.,N,FICO,695,3 - Modest Risk,0.00024,0.07244
2018-12-31,CPTY_00677,Retail,Retail Customer,0.09,N,N,.,N,FICO,827,1 - Largely Risk Free,0.00024,0.00732
2018-12-31,CPTY_01133,Retail,Retail Customer,0.31,N,N,.,N,FICO,658,3 - Modest Risk,0.01076,0.05872
2018-12-31,CPTY_01004,Retail,Retail Customer,0.41,N,N,.,N,FICO,618,4 - Bankable,0.01076,0.1805
2018-12-31,CPTY_01068,Retail,Retail Customer,0.11,N,N,.,N,FICO,773,1 - Largely Risk Free,0.00024,0.00816
2018-12-31,CPTY_01632,Retail,Retail Customer,0.14,N,N,.,N,FICO,779,1 - Largely Risk Free,0.00024,0.00987
2018-12-31,CPTY_01541,Retail,Retail Customer,0.19,N,N,.,N,FICO,709,2 - Minimal Risk,0.00068,0.0374
2018-12-31,CPTY_01624,Retail,Retail Customer,0.56,N,Y,2014-02-19,N,FICO,513,6 - Special Mention,0.17221,0.37494
2018-12-31,CPTY_01005,Retail,Retail Customer,0.4,Y,Y,2018-05-01,Y,FICO,602,4 - Bankable,0.00269,0.16009
2018-12-31,CPTY_00624,Retail,Retail Customer,0.38,N,Y,2017-05-04,N,FICO,607,4 - Bankable,0.01076,0.12861
2018-12-31,CPTY_00869,Retail,Retail Customer,0.56,Y,Y,2018-05-01,Y,FICO,540,6 - Special Mention,0.17221,0.35844
2018-12-31,CPTY_01134,Retail,Retail Customer,0.12,Y,Y,2018-05-01,Y,FICO,835,1 - Largely Risk Free,0.00024,0.01058
2018-12-31,CPTY_01269,Retail,Retail Customer,0.8,N,Y,2015-07-20,N,FICO,436,8 - Doubtful,0.04305,0.73052
2018-12-31,CPTY_00833,Retail,Retail Customer,0.42,N,N,.,N,FICO,623,4 - Bankable,0.01076,0.13029
2018-12-31,CPTY_01490,Retail,Retail Customer,0.22,N,N,.,N,FICO,704,2 - Minimal Risk,0.00068,0.03655
2018-12-31,CPTY_00686,Retail,Retail Customer,0.23,N,N,.,N,FICO,750,2 - Minimal Risk,0.00068,0.03412
2018-12-31,CPTY_00713,Retail,Retail Customer,0.22,N,N,.,N,FICO,729,2 - Minimal Risk,0.00068,0.03858
2018-12-31,CPTY_00860,Retail,Retail Customer,0.08,N,N,.,N,FICO,807,1 - Largely Risk Free,0.00024,0.01815
2018-12-31,CPTY_01615,Retail,Retail Customer,0.4,N,N,.,N,FICO,639,4 - Bankable,0.01076,0.17925
2018-12-31,CPTY_01136,Retail,Retail Customer,0.12,N,N,.,N,FICO,767,1 - Largely Risk Free,0.00024,0.01182
2018-12-31,CPTY_01392,Retail,Retail Customer,0.37,N,N,.,N,FICO,638,4 - Bankable,0.01076,0.15661
2018-12-31,CPTY_01466,Retail,Retail Customer,0.21,N,N,.,N,FICO,720,2 - Minimal Risk,0.00068,0.04861
2018-12-31,CPTY_00632,Retail,Retail Customer,0.83,N,N,.,N,FICO,414,8 - Doubtful,0.17221,0.80092
2018-12-31,CPTY_01456,Retail,Retail Customer,0.39,N,N,.,N,FICO,632,4 - Bankable,0.01076,0.10657
2018-12-31,CPTY_01282,Retail,Retail Customer,0.29,N,N,.,N,FICO,682,3 - Modest Risk,0.00068,0.06721
2018-12-31,CPTY_01145,Retail,Retail Customer,0.08,N,N,.,N,FICO,818,1 - Largely Risk Free,0.00024,0.01725
2018-12-31,CPTY_00896,Retail,Retail Customer,0.4,N,N,.,N,FICO,603,4 - Bankable,0.01076,0.18342
2018-12-31,CPTY_01671,Retail,Retail Customer,0.07,N,N,.,N,FICO,761,1 - Largely Risk Free,0.00024,0.02308
2018-12-31,CPTY_00957,Retail,Retail Customer,0.1,N,N,.,N,FICO,797,1 - Largely Risk Free,0.00024,0.02298
2018-12-31,CPTY_01681,Retail,Retail Customer,0.42,N,N,.,N,FICO,629,4 - Bankable,0.00024,0.11315
2018-12-31,CPTY_00967,Retail,Retail Customer,0.42,N,N,.,N,FICO,637,4 - Bankable,0.01076,0.17942
2018-12-31,CPTY_01185,Retail,Retail Customer,0.54,N,N,.,N,FICO,571,5 - Additional Review,0.04305,0.20577
2018-12-31,CPTY_01328,Retail,Retail Customer,0.59,Y,Y,2018-05-01,N,FICO,503,6 - Special Mention,0.04305,0.37083
2018-12-31,CPTY_01186,Retail,Retail Customer,0.53,N,N,.,N,FICO,578,5 - Additional Review,0.04305,0.2772
2018-12-31,CPTY_00682,Retail,Retail Customer,0.51,N,N,.,N,FICO,556,5 - Additional Review,0.00024,0.22447
2018-12-31,CPTY_01841,Retail,Retail Customer,0.67,Y,Y,2018-05-01,Y,FICO,498,7 - Sub-Standard,0.49351,0.52624
2018-12-31,CPTY_00905,Retail,Retail Customer,0.5,Y,Y,2018-05-01,N,FICO,550,5 - Additional Review,0.01076,0.28794
2018-12-31,CPTY_01138,Retail,Retail Customer,0.8,Y,Y,2018-05-01,N,FICO,433,8 - Doubtful,0.01076,0.7726
2018-12-31,CPTY_00932,Retail,Retail Customer,0.43,N,N,.,N,FICO,637,4 - Bankable,0.01076,0.11683
2018-12-31,CPTY_01786,Retail,Retail Customer,0.59,N,Y,2015-02-27,N,FICO,513,6 - Special Mention,0.17221,0.35487
2018-12-31,CPTY_01527,Retail,Retail Customer,0.43,N,N,.,N,FICO,637,4 - Bankable,0.01076,0.11824
2018-12-31,CPTY_00791,Retail,Retail Customer,0.38,N,N,.,N,FICO,600,4 - Bankable,0.01076,0.11672
2018-12-31,CPTY_01794,Retail,Retail Customer,0.59,N,N,.,N,FICO,527,6 - Special Mention,0.01076,0.36862
2018-12-31,CPTY_00688,Retail,Retail Customer,0.5,Y,Y,2018-05-01,Y,FICO,582,5 - Additional Review,0.04305,0.24123
2018-12-31,CPTY_01187,Retail,Retail Customer,0.13,N,N,.,N,FICO,770,1 - Largely Risk Free,0.00024,0.01802
2018-12-31,CPTY_01181,Retail,Retail Customer,0.11,N,N,.,N,FICO,829,1 - Largely Risk Free,0.00024,0.01053
2018-12-31,CPTY_00974,Retail,Retail Customer,0.42,N,N,.,N,FICO,646,4 - Bankable,0.01076,0.13399
2018-12-31,CPTY_01619,Retail,Retail Customer,0.2,N,N,.,N,FICO,723,2 - Minimal Risk,0.00068,0.04367
2018-12-31,CPTY_00792,Retail,Retail Customer,0.61,N,N,.,N,FICO,517,6 - Special Mention,0.01076,0.39495
2018-12-31,CPTY_00849,Retail,Retail Customer,0.5,N,N,.,N,FICO,594,5 - Additional Review,0.01076,0.2772
2018-12-31,CPTY_00843,Retail,Retail Customer,0.16,N,N,.,N,FICO,706,2 - Minimal Risk,0.00024,0.05458
2018-12-31,CPTY_00867,Retail,Retail Customer,0.38,N,N,.,N,FICO,622,4 - Bankable,0.01076,0.10904
2018-12-31,CPTY_00631,Retail,Retail Customer,0.5,N,N,.,N,FICO,567,5 - Additional Review,0.04305,0.24123
2018-12-31,CPTY_00926,Retail,Retail Customer,0.39,N,N,.,N,FICO,640,4 - Bankable,0.01076,0.16398
2018-12-31,CPTY_01214,Retail,Retail Customer,0.41,N,N,.,N,FICO,630,4 - Bankable,0.01076,0.14299
2018-12-31,CPTY_01297,Retail,Retail Customer,0.49,N,N,.,N,FICO,552,5 - Additional Review,0.01076,0.19515
2018-12-31,CPTY_01501,Retail,Retail Customer,0.12,N,N,.,N,FICO,813,1 - Largely Risk Free,0.00024,0.01955
2018-12-31,CPTY_01670,Retail,Retail Customer,0.19,N,N,.,N,FICO,746,2 - Minimal Risk,0.00068,0.03801
2018-12-31,CPTY_01550,Retail,Retail Customer,0.08,N,N,.,N,FICO,842,1 - Largely Risk Free,0.00024,0.00681
2018-12-31,CPTY_00802,Retail,Retail Customer,0.76,N,N,.,N,FICO,420,8 - Doubtful,0.17221,0.79374
2018-12-31,CPTY_01704,Retail,Retail Customer,0.71,N,N,.,N,FICO,470,7 - Sub-Standard,0.01076,0.40698
2018-12-31,CPTY_00783,Retail,Retail Customer,0.31,N,N,.,N,FICO,656,3 - Modest Risk,0.00068,0.08946
2018-12-31,CPTY_00671,Retail,Retail Customer,0.18,N,N,.,N,FICO,708,2 - Minimal Risk,0.00068,0.03474
2018-12-31,CPTY_01513,Retail,Retail Customer,0.48,N,N,.,N,FICO,579,5 - Additional Review,0.00024,0.22515
2018-12-31,CPTY_01514,Retail,Retail Customer,0.12,N,Y,2013-07-08,N,FICO,825,1 - Largely Risk Free,0.04305,0.00859
2018-12-31,CPTY_00946,Retail,Retail Customer,0.22,N,N,.,N,FICO,741,2 - Minimal Risk,0.00068,0.04088
2018-12-31,CPTY_00732,Retail,Retail Customer,0.6,N,N,.,N,FICO,550,6 - Special Mention,0.01076,0.36898
2018-12-31,CPTY_01373,Retail,Retail Customer,0.22,N,N,.,N,FICO,718,2 - Minimal Risk,0.00068,0.03862
2018-12-31,CPTY_00596,Retail,Retail Customer,0.61,Y,Y,2018-05-01,Y,FICO,505,6 - Special Mention,0.04305,0.37984
2018-12-31,CPTY_00757,Retail,Retail Customer,0.38,N,N,.,N,FICO,631,4 - Bankable,0.01076,0.11192
2018-12-31,CPTY_00912,Retail,Retail Customer,0.69,N,N,.,N,FICO,454,7 - Sub-Standard,0.04305,0.45068
2018-12-31,CPTY_01241,Retail,Retail Customer,0.13,N,N,.,N,FICO,824,1 - Largely Risk Free,0.00024,0.0302
2018-12-31,CPTY_01242,Retail,Retail Customer,0.81,N,N,.,N,FICO,408,8 - Doubtful,0.04305,0.51325
2018-12-31,CPTY_01585,Retail,Retail Customer,0.2,N,N,.,N,FICO,750,2 - Minimal Risk,0.00024,0.03901
2018-12-31,CPTY_00883,Retail,Retail Customer,0.73,Y,Y,2018-05-01,N,FICO,483,7 - Sub-Standard,0.01076,0.47616
2018-12-31,CPTY_01587,Retail,Retail Customer,0.28,Y,Y,2018-05-01,N,FICO,699,3 - Modest Risk,0.00269,0.09348
2018-12-31,CPTY_01588,Retail,Retail Customer,0.49,N,N,.,N,FICO,571,5 - Additional Review,0.04305,0.22069
2018-12-31,CPTY_01376,Retail,Retail Customer,0.22,N,N,.,N,FICO,720,2 - Minimal Risk,0.00068,0.05218
2018-12-31,CPTY_01589,Retail,Retail Customer,0.38,N,N,.,N,FICO,624,4 - Bankable,0.01076,0.13724
2018-12-31,CPTY_00701,Retail,Retail Customer,0.06,N,N,.,N,FICO,806,1 - Largely Risk Free,0.00024,0.00812
2018-12-31,CPTY_01591,Retail,Retail Customer,0.39,N,N,.,N,FICO,625,4 - Bankable,0.04305,0.11955
2018-12-31,CPTY_00774,Retail,Retail Customer,0.33,N,N,.,N,FICO,658,3 - Modest Risk,0.04305,0.06002
2018-12-31,CPTY_00910,Retail,Retail Customer,0.48,N,N,.,N,FICO,594,5 - Additional Review,0.01076,0.23907
2018-12-31,CPTY_01190,Retail,Retail Customer,0.43,N,N,.,N,FICO,649,4 - Bankable,0.04305,0.1054
2018-12-31,CPTY_01581,Retail,Retail Customer,0.5,N,N,.,N,FICO,552,5 - Additional Review,0.01076,0.24684
2018-12-31,CPTY_01586,Retail,Retail Customer,0.3,N,N,.,N,FICO,686,3 - Modest Risk,0.01076,0.07115
2018-12-31,CPTY_01375,Retail,Retail Customer,0.19,N,N,.,N,FICO,718,2 - Minimal Risk,0.00068,0.03594
2018-12-31,CPTY_01014,Retail,Retail Customer,0.11,N,N,.,N,FICO,778,1 - Largely Risk Free,0.00024,0.01684
2018-12-31,CPTY_01604,Retail,Retail Customer,0.09,N,N,.,N,FICO,833,1 - Largely Risk Free,0.00024,0.01103
2018-12-31,CPTY_01381,Retail,Retail Customer,0.36,N,N,.,N,FICO,625,4 - Bankable,0.01076,0.186
2018-12-31,CPTY_01382,Retail,Retail Customer,0.4,N,N,.,N,FICO,647,4 - Bankable,0.01076,0.17412
2018-12-31,CPTY_01605,Retail,Retail Customer,0.7,N,Y,2017-09-29,N,FICO,481,7 - Sub-Standard,0.04305,0.40861
2018-12-31,CPTY_01052,Retail,Retail Customer,0.39,N,N,.,N,FICO,621,4 - Bankable,0.01076,0.12381
2018-12-31,CPTY_00889,Retail,Retail Customer,0.24,N,N,.,N,FICO,713,2 - Minimal Risk,0.00068,0.03412
2018-12-31,CPTY_01620,Retail,Retail Customer,0.38,N,N,.,N,FICO,647,4 - Bankable,0.01076,0.15645
2018-12-31,CPTY_00628,Retail,Retail Customer,0.52,N,N,.,N,FICO,598,5 - Additional Review,0.04305,0.27999
2018-12-31,CPTY_01602,Retail,Retail Customer,0.52,N,N,.,N,FICO,587,5 - Additional Review,0.04305,0.20598
2018-12-31,CPTY_01608,Retail,Retail Customer,0.37,N,N,.,N,FICO,638,4 - Bankable,0.01076,0.15107
2018-12-31,CPTY_00692,Retail,Retail Customer,1,N,N,.,N,FICO,318,9 - Loss,0.04305,1
2018-12-31,CPTY_00690,Retail,Retail Customer,0.71,N,N,.,N,FICO,465,7 - Sub-Standard,0.00068,0.52729
2018-12-31,CPTY_01403,Retail,Retail Customer,0.1,N,N,.,N,FICO,767,1 - Largely Risk Free,0.00068,0.02359
2018-12-31,CPTY_01611,Retail,Retail Customer,0.28,N,N,.,N,FICO,668,3 - Modest Risk,0.00068,0.06594
2018-12-31,CPTY_01732,Retail,Retail Customer,0.3,N,N,.,N,FICO,679,3 - Modest Risk,0.00068,0.06317
2018-12-31,CPTY_00634,Retail,Retail Customer,0.2,N,N,.,N,FICO,717,2 - Minimal Risk,0.00068,0.0476
2018-12-31,CPTY_00801,Retail,Retail Customer,0.19,N,N,.,N,FICO,749,2 - Minimal Risk,0.00068,0.0408
2018-12-31,CPTY_01248,Retail,Retail Customer,0.4,N,N,.,N,FICO,625,4 - Bankable,0.01076,0.10764
2018-12-31,CPTY_01064,Retail,Retail Customer,0.39,N,N,.,N,FICO,612,4 - Bankable,0.01076,0.16447
2018-12-31,CPTY_01264,Retail,Retail Customer,0.59,N,N,.,N,FICO,506,6 - Special Mention,0.04305,0.35134
2018-12-31,CPTY_01380,Retail,Retail Customer,0.47,N,Y,2015-02-04,N,FICO,551,5 - Additional Review,0.04305,0.29553
2018-12-31,CPTY_01393,Retail,Retail Customer,0.67,N,N,.,N,FICO,491,7 - Sub-Standard,0.17221,0.48919
2018-12-31,CPTY_01603,Retail,Retail Customer,0.2,N,N,.,N,FICO,727,2 - Minimal Risk,0.00068,0.04665
2018-12-31,CPTY_01252,Retail,Retail Customer,0.6,N,N,.,N,FICO,513,6 - Special Mention,0.01076,0.37195
2018-12-31,CPTY_01253,Retail,Retail Customer,0.17,N,N,.,N,FICO,736,2 - Minimal Risk,0.00068,0.04861
2018-12-31,CPTY_01487,Retail,Retail Customer,0.28,N,N,.,N,FICO,699,3 - Modest Risk,0.00068,0.06008
2018-12-31,CPTY_00943,Retail,Retail Customer,0.08,N,N,.,N,FICO,757,1 - Largely Risk Free,0.00024,0.01138
2018-12-31,CPTY_01215,Retail,Retail Customer,0.4,N,N,.,N,FICO,628,4 - Bankable,0.01076,0.14808
2018-12-31,CPTY_01683,Retail,Retail Customer,0.69,N,N,.,N,FICO,491,7 - Sub-Standard,0.04305,0.58042
2018-12-31,CPTY_01617,Retail,Retail Customer,0.11,N,N,.,N,FICO,770,1 - Largely Risk Free,0.00024,0.02465
2018-12-31,CPTY_01798,Retail,Retail Customer,0.4,N,N,.,N,FICO,630,4 - Bankable,0.01076,0.12282
2018-12-31,CPTY_00633,Retail,Retail Customer,0.51,N,N,.,N,FICO,585,5 - Additional Review,0.04305,0.26421
2018-12-31,CPTY_01261,Retail,Retail Customer,0.05,N,N,.,N,FICO,837,1 - Largely Risk Free,0.00024,0.02978
2018-12-31,CPTY_01386,Retail,Retail Customer,0.36,N,N,.,N,FICO,622,4 - Bankable,0.01076,0.11036
2018-12-31,CPTY_01693,Retail,Retail Customer,0.33,N,N,.,N,FICO,665,3 - Modest Risk,0.01076,0.06601
2018-12-31,CPTY_00864,Retail,Retail Customer,0.28,N,N,.,N,FICO,672,3 - Modest Risk,0.00024,0.06336
2018-12-31,CPTY_01621,Retail,Retail Customer,0.23,N,N,.,N,FICO,732,2 - Minimal Risk,0.01076,0.05334
2018-12-31,CPTY_01538,Retail,Retail Customer,0.6,N,N,.,N,FICO,502,6 - Special Mention,0.17221,0.38366
2018-12-31,CPTY_00614,Retail,Retail Customer,0.17,N,N,.,N,FICO,735,2 - Minimal Risk,0.00068,0.0367
2018-12-31,CPTY_01075,Retail,Retail Customer,0.22,N,N,.,N,FICO,733,2 - Minimal Risk,0.00068,0.03666
2018-12-31,CPTY_01437,Retail,Retail Customer,0.65,N,N,.,N,FICO,511,6 - Special Mention,0.00024,0.36935
2018-12-31,CPTY_00925,Commercial,Retail Trade,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00269,0.04
2018-12-31,CPTY_00708,Commercial,Retail Trade,0.14,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02394
2018-12-31,CPTY_01078,Commercial,Retail Trade,0.8,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.5644
2018-12-31,CPTY_01119,Commercial,Retail Trade,0.59,Y,Y,2018-05-01,Y,S&P,B,6 - Special Mention,0.17221,0.36751
2018-12-31,CPTY_00710,Commercial,Manufacturing,0.33,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.07785
2018-12-31,CPTY_00935,Commercial,Retail Trade,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.10561
2018-12-31,CPTY_00985,Commercial,Retail Trade,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17978
2018-12-31,CPTY_00936,Commercial,Retail Trade,0.78,N,Y,2015-04-14,N,S&P,CC,8 - Doubtful,0.01076,0.64921
2018-12-31,CPTY_01140,Commercial,Manufacturing,0.59,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.36277
2018-12-31,CPTY_01019,Commercial,Manufacturing,0.6,Y,Y,2018-05-01,Y,S&P,B,6 - Special Mention,0.17221,0.36641
2018-12-31,CPTY_00952,Commercial,Manufacturing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00792
2018-12-31,CPTY_01116,Commercial,Retail Trade,0.97,Y,Y,2018-05-01,Y,S&P,D,9 - Loss,0.17221,1
2018-12-31,CPTY_01032,Commercial,Manufacturing,0.32,N,Y,2014-07-11,N,S&P,A,3 - Modest Risk,0.01076,0.07361
2018-12-31,CPTY_01528,Commercial,Retail Trade,0.22,N,Y,2015-07-24,N,S&P,AA,2 - Minimal Risk,0.00068,0.03722
2018-12-31,CPTY_01113,Commercial,Manufacturing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02599
2018-12-31,CPTY_00861,Commercial,Retail Trade,0.28,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.07129
2018-12-31,CPTY_01107,Commercial,Manufacturing,0.31,N,N,.,N,S&P,A,3 - Modest Risk,0.00269,0.07707
2018-12-31,CPTY_00827,Commercial,Manufacturing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.0197
2018-12-31,CPTY_01043,Commercial,Manufacturing,0.14,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.01334
2018-12-31,CPTY_01356,Commercial,Manufacturing,0.99,Y,Y,2018-05-01,Y,S&P,D,9 - Loss,0.6,1
2018-12-31,CPTY_00939,Commercial,Retail Trade,0.33,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.07273
2018-12-31,CPTY_01763,Commercial,Retail Trade,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11293
2018-12-31,CPTY_00930,Commercial,Retail Trade,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18619
2018-12-31,CPTY_00892,Commercial,Retail Trade,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.09063
2018-12-31,CPTY_01850,Commercial,Manufacturing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17622
2018-12-31,CPTY_00702,Commercial,Retail Trade,0.39,N,Y,2015-11-18,N,S&P,BBB,4 - Bankable,0.01076,0.18768
2018-12-31,CPTY_01576,Commercial,Retail Trade,0.62,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.38946
2018-12-31,CPTY_01045,Commercial,Retail Trade,0.31,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.06272
2018-12-31,CPTY_01077,Commercial,Manufacturing,0.42,N,Y,2017-07-03,N,S&P,BBB,4 - Bankable,0.01076,0.17102
2018-12-31,CPTY_01532,Commercial,Retail Trade,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04656
2018-12-31,CPTY_01840,Commercial,Retail Trade,1.01,Y,Y,2018-05-01,Y,S&P,D,9 - Loss,0.6,1
2018-12-31,CPTY_00756,Commercial,Retail Trade,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17693
2018-12-31,CPTY_01098,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12951
2018-12-31,CPTY_00895,Commercial,Retail Trade,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17605
2018-12-31,CPTY_01030,Commercial,Retail Trade,1,N,N,.,N,S&P,D,9 - Loss,0.01076,1
2018-12-31,CPTY_00823,Commercial,Retail Trade,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18507
2018-12-31,CPTY_00877,Commercial,Retail Trade,0.61,Y,Y,2018-05-01,Y,S&P,B,6 - Special Mention,0.17221,0.35416
2018-12-31,CPTY_00991,Commercial,Manufacturing,0.61,Y,Y,2018-05-01,Y,S&P,B,6 - Special Mention,0.17221,0.36788
2018-12-31,CPTY_00933,Commercial,Retail Trade,0.8,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.57984
2018-12-31,CPTY_00670,Commercial,Retail Trade,0.58,N,Y,2017-04-13,N,S&P,B,6 - Special Mention,0.01076,0.37046
2018-12-31,CPTY_00742,Commercial,Manufacturing,0.38,N,Y,2017-10-16,N,S&P,BBB,4 - Bankable,0.01076,0.10689
2018-12-31,CPTY_00707,Commercial,Retail Trade,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.00269,0.06191
2018-12-31,CPTY_01092,Commercial,Retail Trade,0.44,N,Y,2016-04-20,N,S&P,BBB,4 - Bankable,0.01076,0.11327
2018-12-31,CPTY_01084,Commercial,Retail Trade,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03381
2018-12-31,CPTY_01482,Commercial,Manufacturing,0.66,Y,Y,2018-05-01,Y,S&P,B,6 - Special Mention,0.17221,0.37158
2018-12-31,CPTY_01083,Commercial,Retail Trade,0.42,N,Y,2017-04-08,N,S&P,BBB,4 - Bankable,0.01076,0.11765
2018-12-31,CPTY_00716,Commercial,Retail Trade,0.72,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.57235
2018-12-31,CPTY_01123,Commercial,Retail Trade,0.57,Y,Y,2018-05-01,Y,S&P,B,6 - Special Mention,0.17221,0.35134
2018-12-31,CPTY_01102,Commercial,Retail Trade,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13506
2018-12-31,CPTY_00669,Commercial,Retail Trade,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16746
2018-12-31,CPTY_01530,Commercial,Retail Trade,0.48,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.27971
2018-12-31,CPTY_01209,Commercial,Retail Trade,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02109
2018-12-31,CPTY_00780,Commercial,Manufacturing,0.4,N,Y,2017-09-17,N,S&P,BBB,4 - Bankable,0.01076,0.14838
2018-12-31,CPTY_01358,Commercial,Retail Trade,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03988
2018-12-31,CPTY_00914,Commercial,Retail Trade,0.28,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.07593
2018-12-31,CPTY_00818,Commercial,Manufacturing,0.62,Y,Y,2018-05-01,Y,S&P,B,6 - Special Mention,0.17221,0.37494
2018-12-31,CPTY_01577,Commercial,Retail Trade,0.36,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12136
2018-12-31,CPTY_01109,Commercial,Retail Trade,0.46,N,N,.,N,S&P,BB,5 - Additional Review,0.00024,0.23955
2018-12-31,CPTY_00938,Commercial,Manufacturing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11047
2018-12-31,CPTY_00982,Commercial,Retail Trade,0.99,Y,Y,2018-05-01,Y,S&P,D,9 - Loss,0.6,1
2018-12-31,CPTY_01578,Commercial,Retail Trade,0.97,Y,Y,2018-05-01,Y,S&P,D,9 - Loss,0.6,1
2018-12-31,CPTY_00917,Commercial,Retail Trade,0.59,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.38251
2018-12-31,CPTY_01117,Commercial,Manufacturing,0.3,N,Y,2015-02-08,N,S&P,A,3 - Modest Risk,0.00269,0.06361
2018-12-31,CPTY_00918,Commercial,Retail Trade,0.71,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.55655
2018-12-31,CPTY_00775,Commercial,Retail Trade,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02197
2018-12-31,CPTY_01367,Commercial,Retail Trade,0.66,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.45384
2018-12-31,CPTY_01359,Commercial,Retail Trade,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01387
2018-12-31,CPTY_01118,Commercial,Manufacturing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10807
2018-12-31,CPTY_00868,Commercial,Retail Trade,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14602
2018-12-31,CPTY_00816,Commercial,Retail Trade,1,Y,Y,2018-05-01,Y,S&P,D,9 - Loss,0.17221,1
2018-12-31,CPTY_01531,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1805
2018-12-31,CPTY_01127,Commercial,Retail Trade,0.49,Y,Y,2018-05-01,Y,S&P,BB,5 - Additional Review,0.17221,0.25082
2018-12-31,CPTY_01040,Commercial,Retail Trade,0.38,N,Y,2015-07-30,N,S&P,BBB,4 - Bankable,0.01076,0.12221
2018-12-31,CPTY_00937,Commercial,Retail Trade,0.61,Y,Y,2018-05-01,Y,S&P,B,6 - Special Mention,0.17221,0.39141
2018-12-31,CPTY_01042,Commercial,Retail Trade,0.51,N,Y,2013-05-28,N,S&P,BB,5 - Additional Review,0.01076,0.21331
2018-12-31,CPTY_00697,Commercial,Retail Trade,0.41,N,Y,2016-06-01,N,S&P,BBB,4 - Bankable,0.01076,0.12733
2018-12-31,CPTY_01764,Commercial,Manufacturing,0.72,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.32595
2018-12-31,CPTY_00795,Commercial,Retail Trade,0.59,N,Y,2013-12-06,N,S&P,B,6 - Special Mention,0.01076,0.36349
2018-12-31,CPTY_01106,Commercial,Manufacturing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.05802
2018-12-31,CPTY_00784,Commercial,Retail Trade,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18507
2018-12-31,CPTY_01090,Commercial,Manufacturing,0.6,Y,Y,2018-05-01,Y,S&P,B,6 - Special Mention,0.17221,0.35987
2018-12-31,CPTY_00694,Commercial,Manufacturing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.25259
2018-12-31,CPTY_01031,Commercial,Retail Trade,0.59,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.35064
2018-12-31,CPTY_01360,Commercial,Retail Trade,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04614
2018-12-31,CPTY_01481,Commercial,Retail Trade,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14602
2018-12-31,CPTY_01805,Retail,Retail Customer,0.6,N,Y,2016-09-16,N,FICO,548,6 - Special Mention,0.17221,0.35629
2018-12-31,CPTY_00789,Retail,Retail Customer,0.32,N,N,.,N,FICO,689,3 - Modest Risk,0.00024,0.0575
2018-12-31,CPTY_01736,Retail,Retail Customer,0.21,N,N,.,N,FICO,715,2 - Minimal Risk,0.00024,0.03714
2018-12-31,CPTY_01213,Retail,Retail Customer,0.39,N,N,.,N,FICO,635,4 - Bankable,0.00024,0.17782
2018-12-31,CPTY_01245,Retail,Retail Customer,0.4,N,N,.,N,FICO,610,4 - Bankable,0.01076,0.17782
2018-12-31,CPTY_01131,Retail,Retail Customer,0.77,N,N,.,N,FICO,433,8 - Doubtful,0.01076,0.83027
2018-12-31,CPTY_01233,Retail,Retail Customer,0.99,N,N,.,N,FICO,335,9 - Loss,0.01076,1
2018-12-31,CPTY_01572,Retail,Retail Customer,0.08,N,N,.,N,FICO,825,1 - Largely Risk Free,0.00024,0.02754
2018-12-31,CPTY_01779,Retail,Retail Customer,0.41,N,N,.,N,FICO,603,4 - Bankable,0.01076,0.15107
2018-12-31,CPTY_01130,Retail,Retail Customer,0.3,N,N,.,N,FICO,676,3 - Modest Risk,0.00024,0.08664
2018-12-31,CPTY_01601,Retail,Retail Customer,0.74,N,N,.,N,FICO,462,7 - Sub-Standard,0.01076,0.44308
2018-12-31,CPTY_01618,Retail,Retail Customer,0.18,N,N,.,N,FICO,723,2 - Minimal Risk,0.00024,0.03604
2018-12-31,CPTY_01048,Retail,Retail Customer,0.22,N,N,.,N,FICO,723,2 - Minimal Risk,0.00068,0.04367
2018-12-31,CPTY_00966,Retail,Retail Customer,0.39,N,N,.,N,FICO,646,4 - Bankable,0.01076,0.11625
2018-12-31,CPTY_01059,Retail,Retail Customer,0.5,N,N,.,N,FICO,564,5 - Additional Review,0.04305,0.21077
2018-12-31,CPTY_01562,Retail,Retail Customer,0.52,N,N,.,N,FICO,593,5 - Additional Review,0.01076,0.2334
2018-12-31,CPTY_01259,Retail,Retail Customer,0.2,N,N,.,N,FICO,723,2 - Minimal Risk,0.00068,0.03364
2018-12-31,CPTY_01195,Retail,Retail Customer,0.75,N,N,.,N,FICO,477,7 - Sub-Standard,0.01076,0.32078
2018-12-31,CPTY_01110,Retail,Retail Customer,0.47,N,Y,2014-02-18,N,FICO,564,5 - Additional Review,0.04305,0.21246
2018-12-31,CPTY_01079,Retail,Retail Customer,0.39,N,N,.,N,FICO,639,4 - Bankable,0.01076,0.1705
2018-12-31,CPTY_01832,Retail,Retail Customer,0.49,N,N,.,N,FICO,583,5 - Additional Review,0.04305,0.29523
2018-12-31,CPTY_01281,Retail,Retail Customer,0.4,N,N,.,N,FICO,622,4 - Bankable,0.01076,0.12124
2018-12-31,CPTY_00718,Retail,Retail Customer,0.52,N,N,.,N,FICO,594,5 - Additional Review,0.04305,0.20639
2018-12-31,CPTY_00885,Retail,Retail Customer,0.08,N,N,.,N,FICO,832,1 - Largely Risk Free,0.00024,0.01432
2018-12-31,CPTY_00691,Retail,Retail Customer,0.31,N,N,.,N,FICO,651,3 - Modest Risk,0.01076,0.09027
2018-12-31,CPTY_01303,Retail,Retail Customer,0.21,N,N,.,N,FICO,742,2 - Minimal Risk,0.00068,0.03491
2018-12-31,CPTY_01388,Retail,Retail Customer,0.46,N,N,.,N,FICO,559,5 - Additional Review,0.01076,0.25133
2018-12-31,CPTY_00608,Retail,Retail Customer,0.39,Y,Y,2018-05-01,N,FICO,616,4 - Bankable,0.04305,0.17412
2018-12-31,CPTY_01622,Retail,Retail Customer,0.39,N,N,.,N,FICO,600,4 - Bankable,0.01076,0.14588
2018-12-31,CPTY_00900,Retail,Retail Customer,0.5,N,N,.,N,FICO,571,5 - Additional Review,0.04305,0.28679
2018-12-31,CPTY_00666,Retail,Retail Customer,0.52,N,N,.,N,FICO,586,5 - Additional Review,0.04305,0.19929
2018-12-31,CPTY_01623,Retail,Retail Customer,0.71,N,N,.,N,FICO,454,7 - Sub-Standard,0.04305,0.32857
2018-12-31,CPTY_00619,Retail,Retail Customer,0.6,N,N,.,N,FICO,525,6 - Special Mention,0.04305,0.39574
2018-12-31,CPTY_00829,Retail,Retail Customer,0.5,N,N,.,N,FICO,565,5 - Additional Review,0.01076,0.20129
2018-12-31,CPTY_01564,Retail,Retail Customer,0.48,Y,Y,2018-05-01,Y,FICO,585,5 - Additional Review,0.04305,0.2256
2018-12-31,CPTY_01196,Retail,Retail Customer,0.73,Y,Y,2018-05-01,Y,FICO,458,7 - Sub-Standard,0.00269,0.57868
2018-12-31,CPTY_01745,Retail,Retail Customer,0.17,N,N,.,N,FICO,704,2 - Minimal Risk,0.00068,0.03782
2018-12-31,CPTY_01753,Retail,Retail Customer,0.11,N,N,.,N,FICO,812,1 - Largely Risk Free,0.00024,0.01573
2018-12-31,CPTY_01397,Retail,Retail Customer,0.09,N,N,.,N,FICO,842,1 - Largely Risk Free,0.00068,0.0131
2018-12-31,CPTY_01797,Retail,Retail Customer,0.39,N,N,.,N,FICO,620,4 - Bankable,0.01076,0.15755
2018-12-31,CPTY_01799,Retail,Retail Customer,0.23,N,N,.,N,FICO,739,2 - Minimal Risk,0.01076,0.05281
2018-12-31,CPTY_01823,Retail,Retail Customer,0.2,N,N,.,N,FICO,723,2 - Minimal Risk,0.00024,0.049
2018-12-31,CPTY_01800,Retail,Retail Customer,0.4,N,N,.,N,FICO,646,4 - Bankable,0.00068,0.18014
2018-12-31,CPTY_01801,Retail,Retail Customer,0.18,N,N,.,N,FICO,742,2 - Minimal Risk,0.00068,0.05491
2018-12-31,CPTY_01824,Retail,Retail Customer,0.38,N,N,.,N,FICO,608,4 - Bankable,0.00068,0.12418
2018-12-31,CPTY_01802,Retail,Retail Customer,0.22,N,N,.,N,FICO,750,2 - Minimal Risk,0.00068,0.03401
2018-12-31,CPTY_01803,Retail,Retail Customer,0.38,N,N,.,N,FICO,649,4 - Bankable,0.00068,0.12185
2018-12-31,CPTY_01804,Retail,Retail Customer,0.3,N,N,.,N,FICO,657,3 - Modest Risk,0.01076,0.09117
2018-12-31,CPTY_00839,Retail,Retail Customer,0.39,N,N,.,N,FICO,627,4 - Bankable,0.01076,0.12381
2018-12-31,CPTY_01825,Retail,Retail Customer,0.38,N,N,.,N,FICO,603,4 - Bankable,0.01076,0.15397
2018-12-31,CPTY_01836,Retail,Retail Customer,0.13,N,N,.,N,FICO,812,1 - Largely Risk Free,0.00068,0.01327
2018-12-31,CPTY_01807,Retail,Retail Customer,0.22,N,N,.,N,FICO,733,2 - Minimal Risk,0.00068,0.05024
2018-12-31,CPTY_01780,Retail,Retail Customer,0.38,N,N,.,N,FICO,624,4 - Bankable,0.01076,0.13697
2018-12-31,CPTY_01848,Retail,Retail Customer,0.4,N,N,.,N,FICO,606,4 - Bankable,0.01076,0.15818
2018-12-31,CPTY_01184,Retail,Retail Customer,0.37,N,N,.,N,FICO,630,4 - Bankable,0.01076,0.12518
2018-12-31,CPTY_01582,Retail,Retail Customer,0.4,N,N,.,N,FICO,640,4 - Bankable,0.01076,0.10529
2018-12-31,CPTY_01592,Retail,Retail Customer,0.43,Y,Y,2018-05-01,N,FICO,644,4 - Bankable,0.01076,0.16663
2018-12-31,CPTY_01193,Retail,Retail Customer,0.38,N,N,.,N,FICO,607,4 - Bankable,0.01076,0.13426
2018-12-31,CPTY_01182,Retail,Retail Customer,0.61,N,N,.,N,FICO,534,6 - Special Mention,0.17221,0.35523
2018-12-31,CPTY_00984,Retail,Retail Customer,0.39,N,N,.,N,FICO,615,4 - Bankable,0.01076,0.12861
2018-12-31,CPTY_01491,Retail,Retail Customer,0.44,N,N,.,N,FICO,647,4 - Bankable,0.01076,0.14617
2018-12-31,CPTY_01396,Retail,Retail Customer,0.19,N,N,.,N,FICO,730,2 - Minimal Risk,0.00068,0.0413
2018-12-31,CPTY_00986,Retail,Retail Customer,0.5,N,N,.,N,FICO,593,5 - Additional Review,0.01076,0.26501
2018-12-31,CPTY_01656,Retail,Retail Customer,0.1,N,N,.,N,FICO,789,1 - Largely Risk Free,0.00024,0.01302
2018-12-31,CPTY_00962,Retail,Retail Customer,0.13,N,N,.,N,FICO,769,1 - Largely Risk Free,0.01076,0.00955
2018-12-31,CPTY_01499,Retail,Retail Customer,0.11,N,N,.,N,FICO,800,1 - Largely Risk Free,0.00024,0.02414
2018-12-31,CPTY_01410,Retail,Retail Customer,0.05,N,N,.,N,FICO,765,1 - Largely Risk Free,0.00024,0.01229
2018-12-31,CPTY_00788,Retail,Retail Customer,0.52,N,N,.,N,FICO,564,5 - Additional Review,0.04305,0.24883
2018-12-31,CPTY_01684,Retail,Retail Customer,0.19,N,N,.,N,FICO,744,2 - Minimal Risk,0.00068,0.03763
2018-12-31,CPTY_01507,Retail,Retail Customer,0.7,N,Y,2015-01-28,N,FICO,461,7 - Sub-Standard,0.04305,0.30361
2018-12-31,CPTY_01158,Retail,Retail Customer,0.11,N,N,.,N,FICO,766,1 - Largely Risk Free,0.00024,0.00683
2018-12-31,CPTY_01058,Retail,Retail Customer,0.48,N,N,.,N,FICO,574,5 - Additional Review,0.04305,0.28679
2018-12-31,CPTY_01163,Retail,Retail Customer,0.19,N,N,.,N,FICO,703,2 - Minimal Risk,0.00068,0.04846
2018-12-31,CPTY_01211,Retail,Retail Customer,0.2,N,N,.,N,FICO,711,2 - Minimal Risk,0.00068,0.04381
2018-12-31,CPTY_00846,Retail,Retail Customer,0.68,N,N,.,N,FICO,473,7 - Sub-Standard,0.00024,0.54281
2018-12-31,CPTY_01391,Retail,Retail Customer,0.38,N,N,.,N,FICO,647,4 - Bankable,0.01076,0.10373
2018-12-31,CPTY_00593,Retail,Retail Customer,0.14,N,N,.,N,FICO,777,1 - Largely Risk Free,0.00024,0.02428
2018-12-31,CPTY_01627,Retail,Retail Customer,0.17,N,N,.,N,FICO,820,1 - Largely Risk Free,0.00024,0.0094
2018-12-31,CPTY_01200,Retail,Retail Customer,0.49,N,N,.,N,FICO,572,5 - Additional Review,0.04305,0.28909
2018-12-31,CPTY_01008,Retail,Retail Customer,0.07,N,N,.,N,FICO,849,1 - Largely Risk Free,0.00068,0.01843
2018-12-31,CPTY_00841,Retail,Retail Customer,0.18,N,N,.,N,FICO,711,2 - Minimal Risk,0.00068,0.0476
2018-12-31,CPTY_01355,Retail,Retail Customer,0.49,N,N,.,N,FICO,597,5 - Additional Review,0.04305,0.26342
2018-12-31,CPTY_00643,Retail,Retail Customer,0.41,N,N,.,N,FICO,617,4 - Bankable,0.01076,0.14044
2018-12-31,CPTY_01628,Retail,Retail Customer,0.4,N,N,.,N,FICO,601,4 - Bankable,0.01076,0.16982
2018-12-31,CPTY_00621,Retail,Retail Customer,0.08,N,N,.,N,FICO,763,1 - Largely Risk Free,0.00024,0.01463
2018-12-31,CPTY_00948,Retail,Retail Customer,0.81,N,N,.,N,FICO,446,8 - Doubtful,0.01076,0.69489
2018-12-31,CPTY_01560,Retail,Retail Customer,0.41,N,N,.,N,FICO,616,4 - Bankable,0.01076,0.17871
2018-12-31,CPTY_01197,Retail,Retail Customer,0.09,N,N,.,N,FICO,835,1 - Largely Risk Free,0.00024,0.01027
2018-12-31,CPTY_01540,Retail,Retail Customer,0.69,N,N,.,N,FICO,469,7 - Sub-Standard,0.04305,0.32792
2018-12-31,CPTY_01198,Retail,Retail Customer,0.2,N,N,.,N,FICO,703,2 - Minimal Risk,0.00068,0.04052
2018-12-31,CPTY_00977,Retail,Retail Customer,0.59,N,Y,2016-06-14,N,FICO,548,6 - Special Mention,0.17221,0.39812
2018-12-31,CPTY_01727,Retail,Retail Customer,0.38,N,N,.,N,FICO,635,4 - Bankable,0.01076,0.13601
2018-12-31,CPTY_01830,Retail,Retail Customer,0.42,N,N,.,N,FICO,602,4 - Bankable,0.01076,0.10981
2018-12-31,CPTY_01454,Retail,Retail Customer,0.51,N,N,.,N,FICO,600,5 - Additional Review,0.04305,0.1934
2018-12-31,CPTY_01735,Retail,Retail Customer,0.69,N,N,.,N,FICO,479,7 - Sub-Standard,0.01076,0.4378
2018-12-31,CPTY_01177,Retail,Retail Customer,0.3,N,N,.,N,FICO,699,3 - Modest Risk,0.01076,0.09376
2018-12-31,CPTY_01569,Retail,Retail Customer,0.44,N,N,.,N,FICO,625,4 - Bankable,0.01076,0.12481
2018-12-31,CPTY_01570,Retail,Retail Customer,0.1,N,N,.,N,FICO,807,1 - Largely Risk Free,0.00024,0.01486
2018-12-31,CPTY_01760,Retail,Retail Customer,0.38,Y,Y,2018-05-01,N,FICO,644,4 - Bankable,0.01076,0.16203
2018-12-31,CPTY_01843,Retail,Retail Customer,0.06,Y,Y,2018-05-01,N,FICO,793,1 - Largely Risk Free,0.00024,0.00687
2018-12-31,CPTY_00764,Retail,Retail Customer,0.4,N,N,.,N,FICO,621,4 - Bankable,0.01076,0.17499
2018-12-31,CPTY_01777,Retail,Retail Customer,0.2,N,N,.,N,FICO,717,2 - Minimal Risk,0.00068,0.05182
2018-12-31,CPTY_00675,Retail,Retail Customer,0.11,N,N,.,N,FICO,825,1 - Largely Risk Free,0.00024,0.0076
2018-12-31,CPTY_01369,Retail,Retail Customer,0.08,N,N,.,N,FICO,768,1 - Largely Risk Free,0.00024,0.01248
2018-12-31,CPTY_00635,Retail,Retail Customer,0.6,N,N,.,N,FICO,541,6 - Special Mention,0.00024,0.37719
2018-12-31,CPTY_00965,Retail,Retail Customer,0.34,N,N,.,N,FICO,630,4 - Bankable,0.01076,0.11361
2018-12-31,CPTY_00609,Retail,Retail Customer,0.38,N,N,.,N,FICO,650,4 - Bankable,0.01076,0.11533
2018-12-31,CPTY_01469,Retail,Retail Customer,0.36,N,N,.,N,FICO,641,4 - Bankable,0.01076,0.13003
2018-12-31,CPTY_00972,Retail,Retail Customer,0.12,N,N,.,N,FICO,782,1 - Largely Risk Free,0.00024,0.0138
2018-12-31,CPTY_01480,Retail,Retail Customer,0.56,N,N,.,N,FICO,536,6 - Special Mention,0.00068,0.39455
2018-12-31,CPTY_00945,Retail,Retail Customer,0.23,N,N,.,N,FICO,747,2 - Minimal Risk,0.00024,0.05292
2018-12-31,CPTY_01533,Retail,Retail Customer,0.49,N,N,.,N,FICO,598,5 - Additional Review,0.01076,0.21546
2018-12-31,CPTY_01595,Retail,Retail Customer,0.38,N,N,.,N,FICO,612,4 - Bankable,0.01076,0.10342
2018-12-31,CPTY_01188,Retail,Retail Customer,0.45,N,N,.,N,FICO,550,5 - Additional Review,0.01076,0.2218
2018-12-31,CPTY_01536,Retail,Retail Customer,0.44,N,Y,2016-08-19,N,FICO,628,4 - Bankable,0.04305,0.15351
2018-12-31,CPTY_01489,Retail,Retail Customer,0.47,N,Y,2015-07-20,N,FICO,592,5 - Additional Review,0.04305,0.2865
2018-12-31,CPTY_01542,Retail,Retail Customer,0.51,N,N,.,N,FICO,595,5 - Additional Review,0.04305,0.21827
2018-12-31,CPTY_01518,Retail,Retail Customer,0.66,N,N,.,N,FICO,454,7 - Sub-Standard,0.04305,0.50916
2018-12-31,CPTY_01111,Retail,Retail Customer,0.48,N,N,.,N,FICO,576,5 - Additional Review,0.01076,0.23247
2018-12-31,CPTY_01389,Retail,Retail Customer,0.4,N,N,.,N,FICO,621,4 - Bankable,0.01076,0.14486
2018-12-31,CPTY_00699,Retail,Retail Customer,0.38,N,N,.,N,FICO,607,4 - Bankable,0.01076,0.18069
2018-12-31,CPTY_01012,Retail,Retail Customer,0.39,N,N,.,N,FICO,640,4 - Bankable,0.00068,0.1717
2018-12-31,CPTY_01137,Retail,Retail Customer,0.21,N,N,.,N,FICO,700,2 - Minimal Risk,0.00068,0.05431
2018-12-31,CPTY_00763,Retail,Retail Customer,0.49,N,N,.,N,FICO,583,5 - Additional Review,0.04305,0.2334
2018-12-31,CPTY_01625,Retail,Retail Customer,0.52,N,N,.,N,FICO,579,5 - Additional Review,0.01076,0.20271
2018-12-31,CPTY_00630,Retail,Retail Customer,0.1,N,N,.,N,FICO,814,1 - Largely Risk Free,0.00024,0.01929
2018-12-31,CPTY_00950,Retail,Retail Customer,0.18,N,N,.,N,FICO,708,2 - Minimal Risk,0.00068,0.04433
2018-12-31,CPTY_00683,Retail,Retail Customer,0.39,N,N,.,N,FICO,620,4 - Bankable,0.01076,0.14957
2018-12-31,CPTY_00794,Retail,Retail Customer,0.52,N,N,.,N,FICO,569,5 - Additional Review,0.04305,0.23062
2018-12-31,CPTY_00604,Retail,Retail Customer,0.31,N,N,.,N,FICO,684,3 - Modest Risk,0.01076,0.07982
2018-12-31,CPTY_01263,Retail,Retail Customer,0.59,N,N,.,N,FICO,518,6 - Special Mention,0.00068,0.39653
2018-12-31,CPTY_01806,Retail,Retail Customer,1.01,N,N,.,N,FICO,289,9 - Loss,0.01076,1
2018-12-31,CPTY_01265,Retail,Retail Customer,0.51,N,Y,2014-02-18,N,FICO,589,5 - Additional Review,0.04305,0.26874
2018-12-31,CPTY_01029,Retail,Retail Customer,0.42,N,N,.,N,FICO,614,4 - Bankable,0.01076,0.18656
2018-12-31,CPTY_01349,Retail,Retail Customer,0.21,N,N,.,N,FICO,722,2 - Minimal Risk,0.00068,0.04628
2018-12-31,CPTY_01199,Retail,Retail Customer,0.37,N,N,.,N,FICO,607,4 - Bankable,0.01076,0.11824
2018-12-31,CPTY_01626,Retail,Retail Customer,0.5,N,N,.,N,FICO,552,5 - Additional Review,0.04305,0.21438
2018-12-31,CPTY_00661,Retail,Retail Customer,0.19,N,N,.,N,FICO,728,2 - Minimal Risk,0.00024,0.05287
2018-12-31,CPTY_01390,Retail,Retail Customer,0.39,N,N,.,N,FICO,640,4 - Bankable,0.01076,0.1648
2018-12-31,CPTY_01629,Retail,Retail Customer,0.65,N,N,.,N,FICO,531,6 - Special Mention,0.00068,0.36313
2018-12-31,CPTY_01038,Retail,Retail Customer,0.37,N,N,.,N,FICO,619,4 - Bankable,0.01076,0.11967
2018-12-31,CPTY_01630,Retail,Retail Customer,0.52,Y,Y,2018-05-01,N,FICO,596,5 - Additional Review,0.04305,0.2161
2018-12-31,CPTY_01202,Retail,Retail Customer,0.3,N,N,.,N,FICO,655,3 - Modest Risk,0.01076,0.05779
2018-12-31,CPTY_01023,Retail,Retail Customer,0.48,N,N,.,N,FICO,558,5 - Additional Review,0.04305,0.19652
2018-12-31,CPTY_01203,Retail,Retail Customer,0.53,N,N,.,N,FICO,559,5 - Additional Review,0.04305,0.25133
2018-12-31,CPTY_01081,Retail,Retail Customer,0.08,N,N,.,N,FICO,819,1 - Largely Risk Free,0.04305,0.0101
2018-12-31,CPTY_01011,Retail,Retail Customer,0.24,N,N,.,N,FICO,729,2 - Minimal Risk,0.04305,0.03418
2018-12-31,CPTY_01768,Retail,Retail Customer,0.7,N,N,.,N,FICO,498,7 - Sub-Standard,0.01076,0.34646
2018-12-31,CPTY_01135,Retail,Retail Customer,0.44,N,N,.,N,FICO,608,4 - Bankable,0.01076,0.13094
2018-12-31,CPTY_00611,Retail,Retail Customer,0.31,N,N,.,N,FICO,658,3 - Modest Risk,0.00024,0.09798
2018-12-31,CPTY_00876,Retail,Retail Customer,0.19,N,N,.,N,FICO,737,2 - Minimal Risk,0.00068,0.0525
2018-12-31,CPTY_00975,Retail,Retail Customer,0.41,N,N,.,N,FICO,618,4 - Bankable,0.01076,0.14749
2018-12-31,CPTY_00599,Retail,Retail Customer,0.71,N,N,.,N,FICO,475,7 - Sub-Standard,0.01076,0.38289
2018-12-31,CPTY_01268,Retail,Retail Customer,0.3,N,N,.,N,FICO,683,3 - Modest Risk,0.00068,0.07427
2018-12-31,CPTY_01839,Retail,Retail Customer,0.48,N,N,.,N,FICO,564,5 - Additional Review,0.01076,0.27009
2018-12-31,CPTY_00971,Retail,Retail Customer,0.61,N,N,.,N,FICO,528,6 - Special Mention,0.01076,0.34819
2018-12-31,CPTY_01583,Retail,Retail Customer,0.1,N,N,.,N,FICO,752,1 - Largely Risk Free,0.00024,0.02152
2018-12-31,CPTY_00656,Retail,Retail Customer,0.7,N,N,.,N,FICO,462,7 - Sub-Standard,0.00024,0.34994
2018-12-31,CPTY_01395,Retail,Retail Customer,0.39,N,N,.,N,FICO,640,4 - Bankable,0.01076,0.16613
2018-12-31,CPTY_01033,Retail,Retail Customer,0.39,N,N,.,N,FICO,614,4 - Bankable,0.01076,0.17291
2018-12-31,CPTY_00993,Retail,Retail Customer,0.14,N,N,.,N,FICO,778,1 - Largely Risk Free,0.04305,0.01471
2018-12-31,CPTY_01208,Retail,Retail Customer,0.42,N,N,.,N,FICO,636,4 - Bankable,0.04305,0.12745
2018-12-31,CPTY_00857,Retail,Retail Customer,0.79,N,N,.,N,FICO,450,8 - Doubtful,0.04305,0.82944
2018-12-31,CPTY_00797,Retail,Retail Customer,0.8,N,N,.,N,FICO,410,8 - Doubtful,0.04305,0.61385
2018-12-31,CPTY_01385,Retail,Retail Customer,0.2,N,N,.,N,FICO,743,2 - Minimal Risk,0.00068,0.05602
2018-12-31,CPTY_01278,Retail,Retail Customer,0.41,N,N,.,N,FICO,631,4 - Bankable,0.01076,0.11556
2018-12-31,CPTY_01652,Retail,Retail Customer,0.39,N,N,.,N,FICO,630,4 - Bankable,0.01076,0.11648
2018-12-31,CPTY_01734,Retail,Retail Customer,0.21,N,N,.,N,FICO,747,2 - Minimal Risk,0.00024,0.03384
2018-12-31,CPTY_00770,Retail,Retail Customer,0.32,N,N,.,N,FICO,668,3 - Modest Risk,0.01076,0.07457
2018-12-31,CPTY_01496,Retail,Retail Customer,0.11,N,N,.,N,FICO,785,1 - Largely Risk Free,0.00024,0.01007
2018-12-31,CPTY_01290,Retail,Retail Customer,0.81,N,N,.,N,FICO,410,8 - Doubtful,0.00068,0.70893
2018-12-31,CPTY_01406,Retail,Retail Customer,0.22,N,N,.,N,FICO,738,2 - Minimal Risk,0.00068,0.03501
2018-12-31,CPTY_01664,Retail,Retail Customer,0.42,N,N,.,N,FICO,621,4 - Bankable,0.01076,0.15803
2018-12-31,CPTY_01723,Retail,Retail Customer,0.7,N,Y,2014-04-18,N,FICO,464,7 - Sub-Standard,0.17221,0.46255
2018-12-31,CPTY_01301,Retail,Retail Customer,1.04,N,Y,2013-06-18,N,FICO,198,9 - Loss,0.17221,1
2018-12-31,CPTY_01549,Retail,Retail Customer,0.2,N,N,.,N,FICO,712,2 - Minimal Risk,0.01076,0.03477
2018-12-31,CPTY_00995,Retail,Retail Customer,0.39,N,N,.,N,FICO,602,4 - Bankable,0.01076,0.1437
2018-12-31,CPTY_00915,Retail,Retail Customer,0.41,N,N,.,N,FICO,600,4 - Bankable,0.01076,0.13332
2018-12-31,CPTY_00842,Retail,Retail Customer,0.23,N,N,.,N,FICO,742,2 - Minimal Risk,0.00068,0.03641
2018-12-31,CPTY_01306,Retail,Retail Customer,0.82,N,N,.,N,FICO,436,8 - Doubtful,0.04305,0.84535
2018-12-31,CPTY_00779,Retail,Retail Customer,0.39,N,N,.,N,FICO,647,4 - Bankable,0.01076,0.15882
2018-12-31,CPTY_01716,Retail,Retail Customer,0.44,N,N,.,N,FICO,614,4 - Bankable,0.01076,0.12873
2018-12-31,CPTY_01308,Retail,Retail Customer,0.38,N,N,.,N,FICO,618,4 - Bankable,0.01076,0.17728
2018-12-31,CPTY_01311,Retail,Retail Customer,0.08,N,N,.,N,FICO,782,1 - Largely Risk Free,0.00024,0.02394
2018-12-31,CPTY_00617,Retail,Retail Customer,0.2,N,N,.,N,FICO,736,2 - Minimal Risk,0.00068,0.04146
2018-12-31,CPTY_00785,Retail,Retail Customer,0.46,N,Y,2013-08-06,N,FICO,593,5 - Additional Review,0.04305,0.23645
2018-12-31,CPTY_00831,Retail,Retail Customer,0.77,N,N,.,N,FICO,434,8 - Doubtful,0.17221,0.52309
2018-12-31,CPTY_01318,Retail,Retail Customer,0.45,N,N,.,N,FICO,610,4 - Bankable,0.04305,0.15866
2018-12-31,CPTY_00978,Retail,Retail Customer,0.42,N,N,.,N,FICO,623,4 - Bankable,0.01076,0.17799
2018-12-31,CPTY_01696,Retail,Retail Customer,0.41,N,N,.,N,FICO,643,4 - Bankable,0.01076,0.14385
2018-12-31,CPTY_01545,Retail,Retail Customer,0.59,N,Y,2015-06-06,N,FICO,502,6 - Special Mention,0.04305,0.36132
2018-12-31,CPTY_00629,Retail,Retail Customer,0.43,N,N,.,N,FICO,646,4 - Bankable,0.01076,0.18323
2018-12-31,CPTY_01714,Retail,Retail Customer,0.36,N,N,.,N,FICO,615,4 - Bankable,0.01076,0.16713
2018-12-31,CPTY_00800,Retail,Retail Customer,0.06,N,N,.,N,FICO,806,1 - Largely Risk Free,0.00024,0.02785
2018-12-31,CPTY_00969,Retail,Retail Customer,0.38,N,N,.,N,FICO,649,4 - Bankable,0.01076,0.1529
2018-12-31,CPTY_00958,Retail,Retail Customer,0.39,N,N,.,N,FICO,607,4 - Bankable,0.00024,0.1085
2018-12-31,CPTY_00929,Retail,Retail Customer,0.06,N,N,.,N,FICO,827,1 - Largely Risk Free,0.00068,0.02676
2018-12-31,CPTY_01240,Retail,Retail Customer,0.22,N,N,.,N,FICO,746,2 - Minimal Risk,0.00068,0.03418
2018-12-31,CPTY_01831,Retail,Retail Customer,0.69,N,N,.,N,FICO,459,7 - Sub-Standard,0.01076,0.35452
2018-12-31,CPTY_01112,Retail,Retail Customer,0.37,N,N,.,N,FICO,638,4 - Bankable,0.01076,0.11719
2018-12-31,CPTY_00886,Retail,Retail Customer,0.61,Y,Y,2018-05-01,Y,FICO,510,6 - Special Mention,0.17221,0.38674
2018-12-31,CPTY_01229,Retail,Retail Customer,0.36,N,N,.,N,FICO,640,4 - Bankable,0.01076,0.14942
2018-12-31,CPTY_01129,Retail,Retail Customer,0.2,N,N,.,N,FICO,740,2 - Minimal Risk,0.00068,0.03429
2018-12-31,CPTY_01467,Retail,Retail Customer,0.71,N,N,.,N,FICO,456,7 - Sub-Standard,0.17221,0.324
2018-12-31,CPTY_00987,Retail,Retail Customer,0.48,N,N,.,N,FICO,582,5 - Additional Review,0.04305,0.20049
2018-12-31,CPTY_00674,Retail,Retail Customer,0.3,N,N,.,N,FICO,671,3 - Modest Risk,0.00024,0.0891
2018-12-31,CPTY_00679,Retail,Retail Customer,0.73,N,N,.,N,FICO,454,7 - Sub-Standard,0.01076,0.36788
2018-12-31,CPTY_00956,Retail,Retail Customer,0.22,N,N,.,N,FICO,737,2 - Minimal Risk,0.00068,0.04251
2018-12-31,CPTY_01726,Retail,Retail Customer,0.46,N,N,.,N,FICO,568,5 - Additional Review,0.01076,0.20271
2018-12-31,CPTY_01061,Retail,Retail Customer,0.38,N,N,.,N,FICO,644,4 - Bankable,0.01076,0.12784
2018-12-31,CPTY_01483,Retail,Retail Customer,0.48,N,N,.,N,FICO,561,5 - Additional Review,0.04305,0.21014
2018-12-31,CPTY_01584,Retail,Retail Customer,0.79,N,N,.,N,FICO,400,8 - Doubtful,0.01076,0.5644
2018-12-31,CPTY_01374,Retail,Retail Customer,0.12,N,N,.,N,FICO,773,1 - Largely Risk Free,0.00024,0.02002
2018-12-31,CPTY_01357,Retail,Retail Customer,0.53,N,Y,2016-07-03,N,FICO,559,5 - Additional Review,0.04305,0.27417
2018-12-31,CPTY_01243,Retail,Retail Customer,0.52,N,N,.,N,FICO,552,5 - Additional Review,0.04305,0.20846
2018-12-31,CPTY_00615,Retail,Retail Customer,0.27,N,N,.,N,FICO,699,3 - Modest Risk,0.01076,0.09976
2018-12-31,CPTY_00696,Retail,Retail Customer,0.54,N,Y,2014-10-27,N,FICO,551,5 - Additional Review,0.04305,0.25717
2018-12-31,CPTY_01368,Retail,Retail Customer,0.51,N,N,.,N,FICO,551,5 - Additional Review,0.04305,0.25462
2018-12-31,CPTY_01590,Retail,Retail Customer,0.51,N,N,.,N,FICO,565,5 - Additional Review,0.00068,0.2348
2018-12-31,CPTY_01095,Retail,Retail Customer,0.39,Y,Y,2018-05-01,N,FICO,637,4 - Bankable,0.01076,0.11872
2018-12-31,CPTY_01525,Retail,Retail Customer,0.7,Y,Y,2018-05-01,N,FICO,451,7 - Sub-Standard,0.04305,0.29969
2018-12-31,CPTY_01377,Retail,Retail Customer,0.38,Y,Y,2018-05-01,N,FICO,648,4 - Bankable,0.01076,0.13439
2018-12-31,CPTY_01795,Retail,Retail Customer,0.14,N,N,.,N,FICO,728,2 - Minimal Risk,0.00068,0.04217
2018-12-31,CPTY_01792,Retail,Retail Customer,0.19,N,N,.,N,FICO,737,2 - Minimal Risk,0.00068,0.03877
2018-12-31,CPTY_01244,Retail,Retail Customer,0.1,N,N,.,N,FICO,844,1 - Largely Risk Free,0.00068,0.02164
2018-12-31,CPTY_01796,Retail,Retail Customer,0.41,N,N,.,N,FICO,603,4 - Bankable,0.04305,0.16415
2018-12-31,CPTY_01484,Retail,Retail Customer,0.3,N,N,.,N,FICO,678,3 - Modest Risk,0.00068,0.05802
2018-12-31,CPTY_01793,Retail,Retail Customer,0.46,N,N,.,N,FICO,566,5 - Additional Review,0.04305,0.20867
2018-12-31,CPTY_01189,Retail,Retail Customer,0.63,N,N,.,N,FICO,518,6 - Special Mention,0.04305,0.38022
2018-12-31,CPTY_01251,Retail,Retail Customer,0.21,N,N,.,N,FICO,745,2 - Minimal Risk,0.00068,0.05552
2018-12-31,CPTY_00909,Retail,Retail Customer,0.48,N,N,.,N,FICO,559,5 - Additional Review,0.01076,0.20598
2018-12-31,CPTY_01246,Retail,Retail Customer,0.4,N,N,.,N,FICO,601,4 - Bankable,0.00068,0.1108
2018-12-31,CPTY_01599,Retail,Retail Customer,0.43,N,N,.,N,FICO,606,4 - Bankable,0.01076,0.12886
2018-12-31,CPTY_01018,Retail,Retail Customer,0.8,N,N,.,N,FICO,428,8 - Doubtful,0.00024,0.64082
2018-12-31,CPTY_01166,Retail,Retail Customer,0.39,Y,Y,2018-05-01,N,FICO,641,4 - Bankable,0.01076,0.13081
2018-12-31,CPTY_00590,Retail,Retail Customer,0.08,N,N,.,N,FICO,760,1 - Largely Risk Free,0.04305,0.00935
2018-12-31,CPTY_00712,Retail,Retail Customer,0.39,N,N,.,N,FICO,640,4 - Bankable,0.01076,0.10498
2018-12-31,CPTY_01379,Retail,Retail Customer,0.07,N,N,.,N,FICO,793,1 - Largely Risk Free,0.00024,0.00929
2018-12-31,CPTY_01593,Retail,Retail Customer,0.52,N,N,.,N,FICO,592,5 - Additional Review,0.04305,0.29641
2018-12-31,CPTY_00709,Retail,Retail Customer,0.52,N,N,.,N,FICO,588,5 - Additional Review,0.17221,0.25032
2018-12-31,CPTY_01596,Retail,Retail Customer,0.1,N,N,.,N,FICO,787,1 - Largely Risk Free,0.00024,0.01072
2018-12-31,CPTY_01191,Retail,Retail Customer,0.76,N,N,.,N,FICO,438,8 - Doubtful,0.01076,0.8336
2018-12-31,CPTY_01597,Retail,Retail Customer,0.41,N,N,.,N,FICO,618,4 - Bankable,0.00068,0.13266
2018-12-31,CPTY_01598,Retail,Retail Customer,0.48,N,N,.,N,FICO,596,5 - Additional Review,0.01076,0.28309
2018-12-31,CPTY_00863,Retail,Retail Customer,0.23,N,N,.,N,FICO,723,2 - Minimal Risk,0.00068,0.05059
2018-12-31,CPTY_00721,Retail,Retail Customer,0.3,N,N,.,N,FICO,676,3 - Modest Risk,0.00068,0.09769
2018-12-31,CPTY_01205,Retail,Retail Customer,0.49,N,N,.,N,FICO,561,5 - Additional Review,0.04305,0.25233
2018-12-31,CPTY_01534,Retail,Retail Customer,0.4,N,N,.,N,FICO,602,4 - Bankable,0.01076,0.13642
2018-12-31,CPTY_01485,Retail,Retail Customer,0.51,N,N,.,N,FICO,587,5 - Additional Review,0.00068,0.24147
2018-12-31,CPTY_00852,Retail,Retail Customer,0.1,N,N,.,N,FICO,816,1 - Largely Risk Free,0.00024,0.00942
2018-12-31,CPTY_01067,Retail,Retail Customer,0.4,N,N,.,N,FICO,638,4 - Bankable,0.01076,0.1743
2018-12-31,CPTY_01606,Retail,Retail Customer,0.18,N,N,.,N,FICO,739,2 - Minimal Risk,0.00068,0.03463
2018-12-31,CPTY_00901,Retail,Retail Customer,0.58,N,N,.,N,FICO,543,6 - Special Mention,0.01076,0.39892
2018-12-31,CPTY_01613,Retail,Retail Customer,0.43,N,N,.,N,FICO,623,4 - Bankable,0.01076,0.13239
2018-12-31,CPTY_01247,Retail,Retail Customer,0.49,N,N,.,N,FICO,571,5 - Additional Review,0.00024,0.2146
2018-12-31,CPTY_01600,Retail,Retail Customer,0.43,N,N,.,N,FICO,644,4 - Bankable,0.01076,0.17377
2018-12-31,CPTY_00744,Retail,Retail Customer,0.11,N,N,.,N,FICO,813,1 - Largely Risk Free,0.00024,0.02697
2018-12-31,CPTY_01778,Retail,Retail Customer,0.41,N,N,.,N,FICO,633,4 - Bankable,0.01076,0.17675
2018-12-31,CPTY_01762,Retail,Retail Customer,0.1,N,N,.,N,FICO,816,1 - Largely Risk Free,0.00024,0.03275
2018-12-31,CPTY_00911,Retail,Retail Customer,0.29,N,N,.,N,FICO,655,3 - Modest Risk,0.00068,0.09274
2018-12-31,CPTY_01607,Retail,Retail Customer,0.47,N,N,.,N,FICO,588,5 - Additional Review,0.04305,0.2265
2018-12-31,CPTY_01609,Retail,Retail Customer,0.59,N,N,.,N,FICO,546,6 - Special Mention,0.04305,0.36678
2018-12-31,CPTY_01474,Retail,Retail Customer,1.01,N,N,.,N,FICO,273,9 - Loss,0.01076,1
2018-12-31,CPTY_00902,Retail,Retail Customer,0.2,N,N,.,N,FICO,745,2 - Minimal Risk,0.00024,0.05084
2018-12-31,CPTY_01383,Retail,Retail Customer,0.19,N,N,.,N,FICO,732,2 - Minimal Risk,0.00068,0.04851
2018-12-31,CPTY_00652,Retail,Retail Customer,0.53,N,N,.,N,FICO,566,5 - Additional Review,0.01076,0.28083
2018-12-31,CPTY_01488,Retail,Retail Customer,0.11,N,N,.,N,FICO,813,1 - Largely Risk Free,0.00024,0.00745
2018-12-31,CPTY_01535,Retail,Retail Customer,0.38,N,N,.,N,FICO,613,4 - Bankable,0.01076,0.17889
2018-12-31,CPTY_01610,Retail,Retail Customer,0.41,N,N,.,N,FICO,622,4 - Bankable,0.01076,0.14442
2018-12-31,CPTY_01254,Retail,Retail Customer,0.42,N,N,.,N,FICO,613,4 - Bankable,0.01076,0.16813
2018-12-31,CPTY_00840,Retail,Retail Customer,0.29,N,N,.,N,FICO,653,3 - Modest Risk,0.01076,0.08982
2018-12-31,CPTY_01594,Retail,Retail Customer,0.5,N,N,.,N,FICO,564,5 - Additional Review,0.04305,0.28765
2018-12-31,CPTY_01378,Retail,Retail Customer,0.08,N,N,.,N,FICO,784,1 - Largely Risk Free,0.00068,0.02847
2018-12-31,CPTY_01249,Retail,Retail Customer,0.41,N,N,.,N,FICO,612,4 - Bankable,0.01076,0.15614
2018-12-31,CPTY_01250,Retail,Retail Customer,0.4,N,N,.,N,FICO,614,4 - Bankable,0.01076,0.12938
2018-12-31,CPTY_01486,Retail,Retail Customer,0.19,N,N,.,N,FICO,722,2 - Minimal Risk,0.00024,0.03391
2018-12-31,CPTY_01026,Retail,Retail Customer,0.37,N,N,.,N,FICO,649,4 - Bankable,0.01076,0.12912
2018-12-31,CPTY_01344,Retail,Retail Customer,0.41,N,N,.,N,FICO,632,4 - Bankable,0.00024,0.11991
2018-12-31,CPTY_00870,Retail,Retail Customer,0.49,N,N,.,N,FICO,588,5 - Additional Review,0.01076,0.27887
2018-12-31,CPTY_01255,Retail,Retail Customer,0.17,N,N,.,N,FICO,704,2 - Minimal Risk,0.00024,0.04359
2018-12-31,CPTY_01561,Retail,Retail Customer,0.1,N,N,.,N,FICO,846,1 - Largely Risk Free,0.00024,0.03152
2018-12-31,CPTY_01291,Retail,Retail Customer,0.98,Y,Y,2018-05-01,N,FICO,241,9 - Loss,0.01076,1
2018-12-31,CPTY_01256,Retail,Retail Customer,0.49,N,N,.,N,FICO,570,5 - Additional Review,0.04305,0.23016
2018-12-31,CPTY_00751,Retail,Retail Customer,0.39,N,N,.,N,FICO,625,4 - Bankable,0.01076,0.13601
2018-12-31,CPTY_01257,Retail,Retail Customer,0.21,N,N,.,N,FICO,746,2 - Minimal Risk,0.00068,0.05558
2018-12-31,CPTY_00681,Retail,Retail Customer,0.27,N,N,.,N,FICO,685,3 - Modest Risk,0.00068,0.09778
2018-12-31,CPTY_01680,Retail,Retail Customer,0.7,N,N,.,N,FICO,493,7 - Sub-Standard,0.01076,0.51018
2018-12-31,CPTY_01021,Retail,Retail Customer,0.31,N,N,.,N,FICO,684,3 - Modest Risk,0.00024,0.07193
2018-12-31,CPTY_01416,Retail,Retail Customer,0.52,N,N,.,N,FICO,597,5 - Additional Review,0.04305,0.19849
2018-12-31,CPTY_00983,Retail,Retail Customer,0.24,N,N,.,N,FICO,719,2 - Minimal Risk,0.00068,0.04803
2018-12-31,CPTY_00873,Retail,Retail Customer,0.11,N,N,.,N,FICO,777,1 - Largely Risk Free,0.00024,0.02821
2018-12-31,CPTY_00871,Retail,Retail Customer,0.5,N,N,.,N,FICO,557,5 - Additional Review,0.04305,0.25284
2018-12-31,CPTY_01260,Retail,Retail Customer,0.4,N,N,.,N,FICO,625,4 - Bankable,0.01076,0.17605
2018-12-31,CPTY_01544,Retail,Retail Customer,0.26,N,N,.,N,FICO,672,3 - Modest Risk,0.01076,0.06918
2018-12-31,CPTY_00618,Retail,Retail Customer,0.2,N,N,.,N,FICO,715,2 - Minimal Risk,0.00024,0.0402
2018-12-31,CPTY_01055,Retail,Retail Customer,0.21,N,N,.,N,FICO,745,2 - Minimal Risk,0.00068,0.05234
2018-12-31,CPTY_01258,Retail,Retail Customer,0.75,N,N,.,N,FICO,484,7 - Sub-Standard,0.04305,0.30453
2018-12-31,CPTY_00804,Retail,Retail Customer,0.38,N,N,.,N,FICO,636,4 - Bankable,0.01076,0.11919
2018-12-31,CPTY_00646,Retail,Retail Customer,0.29,N,N,.,N,FICO,671,3 - Modest Risk,0.01076,0.08501
2018-12-31,CPTY_01614,Retail,Retail Customer,0.39,N,N,.,N,FICO,606,4 - Bankable,0.01076,0.17942
2018-12-31,CPTY_00668,Retail,Retail Customer,0.11,N,N,.,N,FICO,765,1 - Largely Risk Free,0.00024,0.03002
2018-12-31,CPTY_01035,Retail,Retail Customer,0.6,Y,Y,2018-05-01,Y,FICO,524,6 - Special Mention,0.04305,0.38946
2018-12-31,CPTY_01537,Retail,Retail Customer,0.53,Y,Y,2018-05-01,Y,FICO,587,5 - Additional Review,0.04305,0.19652
2018-12-31,CPTY_01221,Retail,Retail Customer,0.2,N,N,.,N,FICO,707,2 - Minimal Risk,0.01076,0.04478
2018-12-31,CPTY_01194,Retail,Retail Customer,0.11,Y,Y,2018-05-01,Y,FICO,836,1 - Largely Risk Free,0.00024,0.01111
2018-12-31,CPTY_01539,Retail,Retail Customer,0.52,Y,Y,2018-05-01,Y,FICO,570,5 - Additional Review,0.17221,0.26132
2018-12-31,CPTY_01220,Retail,Retail Customer,0.31,Y,Y,2018-05-01,Y,FICO,696,3 - Modest Risk,0.00269,0.07143
2018-12-31,CPTY_00790,Retail,Retail Customer,0.61,N,N,.,N,FICO,524,6 - Special Mention,0.01076,0.38098
2018-12-31,CPTY_00711,Retail,Retail Customer,0.4,N,N,.,N,FICO,637,4 - Bankable,0.01076,0.15002
2018-12-31,CPTY_01089,Retail,Retail Customer,0.17,N,N,.,N,FICO,715,2 - Minimal Risk,0.00068,0.03533
2018-12-31,CPTY_01071,Retail,Retail Customer,0.42,N,N,.,N,FICO,612,4 - Bankable,0.00068,0.13055
2018-12-31,CPTY_01387,Retail,Retail Customer,0.39,N,N,.,N,FICO,624,4 - Bankable,0.01076,0.14882
2018-12-31,CPTY_01612,Retail,Retail Customer,0.51,N,N,.,N,FICO,577,5 - Additional Review,0.00068,0.19989
2018-12-31,CPTY_01616,Retail,Retail Customer,0.38,N,Y,2014-03-17,N,FICO,645,4 - Bankable,0.17221,0.186
2018-12-31,CPTY_00597,Retail,Retail Customer,0.79,N,Y,2016-09-16,N,FICO,411,8 - Doubtful,0.17221,0.84198
2018-12-31,CPTY_00980,Retail,Retail Customer,0.49,Y,Y,2018-05-01,N,FICO,598,5 - Additional Review,0.00269,0.24171
2018-12-31,CPTY_00811,Retail,Retail Customer,0.8,N,Y,2014-12-30,N,FICO,403,8 - Doubtful,0.17221,0.59096
2018-12-31,CPTY_01262,Retail,Retail Customer,0.6,N,N,.,N,FICO,544,6 - Special Mention,0.17221,0.36678
2018-12-31,CPTY_00637,Retail,Retail Customer,0.32,N,N,.,N,FICO,661,3 - Modest Risk,0.00068,0.10269
2018-12-31,CPTY_00061,Retail,Retail Customer,0.12,N,N,.,N,FICO,797,1 - Largely Risk Free,0.00024,0.01188
2018-12-31,CPTY_00189,Retail,Retail Customer,0.41,N,N,.,N,FICO,648,4 - Bankable,0.01076,0.17996
2018-12-31,CPTY_00117,Retail,Retail Customer,0.32,N,N,.,N,FICO,677,3 - Modest Risk,0.01076,0.0795
2018-12-31,CPTY_00384,Retail,Retail Customer,0.41,N,N,.,N,FICO,611,4 - Bankable,0.01076,0.13683
2018-12-31,CPTY_00244,Retail,Retail Customer,0.5,N,N,.,N,FICO,571,5 - Additional Review,0.01076,0.20515
2018-12-31,CPTY_00247,Retail,Retail Customer,0.27,N,N,.,N,FICO,685,3 - Modest Risk,0.01076,0.0668
2018-12-31,CPTY_00510,Retail,Retail Customer,0.06,N,N,.,N,FICO,850,1 - Largely Risk Free,0.00024,0.02584
2018-12-31,CPTY_00379,Retail,Retail Customer,0.41,N,Y,2017-10-11,N,FICO,626,4 - Bankable,0.01076,0.16073
2018-12-31,CPTY_00211,Retail,Retail Customer,0.32,N,Y,2014-12-17,N,FICO,674,3 - Modest Risk,0.00269,0.07863
2018-12-31,CPTY_00566,Retail,Retail Customer,0.11,N,N,.,N,FICO,846,1 - Largely Risk Free,0.00024,0.02152
2018-12-31,CPTY_00385,Retail,Retail Customer,0.09,N,N,.,N,FICO,848,1 - Largely Risk Free,0.01076,0.02633
2018-12-31,CPTY_00318,Retail,Retail Customer,0.4,N,Y,2018-01-28,N,FICO,603,4 - Bankable,0.01076,0.12951
2018-12-31,CPTY_00082,Retail,Retail Customer,0.4,N,N,.,N,FICO,607,4 - Bankable,0.01076,0.1469
2018-12-31,CPTY_00239,Retail,Retail Customer,0.36,N,Y,2016-05-02,N,FICO,643,4 - Bankable,0.01076,0.11967
2018-12-31,CPTY_00110,Retail,Retail Customer,0.52,N,N,.,N,FICO,565,5 - Additional Review,0.01076,0.27172
2018-12-31,CPTY_00536,Retail,Retail Customer,0.72,Y,Y,2018-05-01,N,FICO,471,7 - Sub-Standard,0.17221,0.49214
2018-12-31,CPTY_00027,Retail,Retail Customer,0.5,N,Y,2014-08-24,N,FICO,566,5 - Additional Review,0.00068,0.27582
2018-12-31,CPTY_00155,Retail,Retail Customer,0.19,N,N,.,N,FICO,728,2 - Minimal Risk,0.00068,0.04255
2018-12-31,CPTY_00133,Retail,Retail Customer,0.31,N,N,.,N,FICO,659,3 - Modest Risk,0.00269,0.05819
2018-12-31,CPTY_00230,Retail,Retail Customer,0.41,N,N,.,N,FICO,644,4 - Bankable,0.01076,0.11315
2018-12-31,CPTY_00199,Retail,Retail Customer,0.3,N,N,.,N,FICO,656,3 - Modest Risk,0.00269,0.07839
2018-12-31,CPTY_00576,Retail,Retail Customer,0.4,N,N,.,N,FICO,612,4 - Bankable,0.00068,0.1764
2018-12-31,CPTY_00206,Retail,Retail Customer,0.38,N,N,.,N,FICO,616,4 - Bankable,0.01076,0.12381
2018-12-31,CPTY_00142,Retail,Retail Customer,0.6,Y,Y,2018-05-01,N,FICO,519,6 - Special Mention,0.17221,0.36714
2018-12-31,CPTY_00079,Retail,Retail Customer,0.6,Y,Y,2018-05-01,N,FICO,545,6 - Special Mention,0.17221,0.37531
2018-12-31,CPTY_00245,Retail,Retail Customer,0.4,N,N,.,N,FICO,616,4 - Bankable,0.01076,0.11919
2018-12-31,CPTY_00410,Retail,Retail Customer,0.28,N,Y,2016-04-01,N,FICO,651,3 - Modest Risk,0.00269,0.06361
2018-12-31,CPTY_00093,Retail,Retail Customer,0.19,N,N,.,N,FICO,715,2 - Minimal Risk,0.00269,0.0553
2018-12-31,CPTY_00437,Retail,Retail Customer,0.31,N,Y,2017-09-22,N,FICO,695,3 - Modest Risk,0.01076,0.08857
2018-12-31,CPTY_00070,Retail,Retail Customer,0.41,N,N,.,N,FICO,637,4 - Bankable,0.01076,0.13094
2018-12-31,CPTY_00480,Retail,Retail Customer,0.68,N,N,.,N,FICO,473,7 - Sub-Standard,0.01076,0.54553
2018-12-31,CPTY_00375,Retail,Retail Customer,0.38,N,Y,2013-06-17,N,FICO,633,4 - Bankable,0.01076,0.11848
2018-12-31,CPTY_00194,Retail,Retail Customer,0.21,N,N,.,N,FICO,747,2 - Minimal Risk,0.00068,0.03862
2018-12-31,CPTY_00181,Retail,Retail Customer,1.03,Y,Y,2018-05-01,N,FICO,387,9 - Loss,0.6,1
2018-12-31,CPTY_00074,Retail,Retail Customer,1,Y,Y,2018-05-01,N,FICO,342,9 - Loss,0.6,1
2018-12-31,CPTY_00338,Retail,Retail Customer,0.42,N,Y,2015-01-07,N,FICO,613,4 - Bankable,0.00269,0.12039
2018-12-31,CPTY_00555,Retail,Retail Customer,0.4,N,N,.,N,FICO,609,4 - Bankable,0.01076,0.13656
2018-12-31,CPTY_00237,Retail,Retail Customer,0.4,N,Y,2018-03-11,N,FICO,643,4 - Bankable,0.01076,0.18806
2018-12-31,CPTY_00321,Retail,Retail Customer,0.44,N,N,.,N,FICO,622,4 - Bankable,0.01076,0.13385
2018-12-31,CPTY_00145,Retail,Retail Customer,0.21,N,N,.,N,FICO,737,2 - Minimal Risk,0.01076,0.05281
2018-12-31,CPTY_00585,Retail,Retail Customer,0.1,N,N,.,N,FICO,821,1 - Largely Risk Free,0.01076,0.0231
2018-12-31,CPTY_00530,Retail,Retail Customer,0.42,N,N,.,N,FICO,641,4 - Bankable,0.01076,0.1705
2018-12-31,CPTY_00453,Retail,Retail Customer,0.33,N,N,.,N,FICO,682,3 - Modest Risk,0.00068,0.08964
2018-12-31,CPTY_00253,Retail,Retail Customer,0.61,Y,Y,2018-05-01,N,FICO,507,6 - Special Mention,0.17221,0.40012
2018-12-31,CPTY_00077,Retail,Retail Customer,0.42,N,N,.,N,FICO,612,4 - Bankable,0.01076,0.16931
2018-12-31,CPTY_00215,Retail,Retail Customer,0.29,N,N,.,N,FICO,688,3 - Modest Risk,0.01076,0.07346
2018-12-31,CPTY_00492,Retail,Retail Customer,0.41,N,N,.,N,FICO,642,4 - Bankable,0.01076,0.11441
2018-12-31,CPTY_00012,Retail,Retail Customer,0.39,N,N,.,N,FICO,616,4 - Bankable,0.01076,0.10572
2018-12-31,CPTY_00259,Retail,Retail Customer,0.51,N,N,.,N,FICO,583,5 - Additional Review,0.00269,0.28622
2018-12-31,CPTY_00316,Retail,Retail Customer,0.14,N,N,.,N,FICO,806,1 - Largely Risk Free,0.00024,0.02771
2018-12-31,CPTY_00192,Retail,Retail Customer,0.38,N,N,.,N,FICO,648,4 - Bankable,0.01076,0.11672
2018-12-31,CPTY_00072,Retail,Retail Customer,0.12,N,N,.,N,FICO,832,1 - Largely Risk Free,0.00024,0.01235
2018-12-31,CPTY_00493,Retail,Retail Customer,0.39,N,N,.,N,FICO,631,4 - Bankable,0.01076,0.10342
2018-12-31,CPTY_00138,Retail,Retail Customer,0.62,Y,Y,2018-05-01,N,FICO,543,6 - Special Mention,0.17221,0.34959
2018-12-31,CPTY_00193,Retail,Retail Customer,0.2,N,N,.,N,FICO,743,2 - Minimal Risk,0.00068,0.05448
2018-12-31,CPTY_00310,Retail,Retail Customer,0.61,N,Y,2015-09-26,N,FICO,549,6 - Special Mention,0.01076,0.40012
2018-12-31,CPTY_00302,Retail,Retail Customer,0.4,N,N,.,N,FICO,600,4 - Bankable,0.01076,0.12745
2018-12-31,CPTY_00139,Retail,Retail Customer,0.58,Y,Y,2018-05-01,N,FICO,513,6 - Special Mention,0.17221,0.36204
2018-12-31,CPTY_00296,Retail,Retail Customer,0.42,N,N,.,N,FICO,646,4 - Bankable,0.01076,0.15459
2018-12-31,CPTY_00339,Retail,Retail Customer,0.43,N,Y,2018-01-03,N,FICO,602,4 - Bankable,0.01076,0.1764
2018-12-31,CPTY_00298,Retail,Retail Customer,0.79,Y,Y,2018-05-01,N,FICO,436,8 - Doubtful,0.17221,0.63192
2018-12-31,CPTY_00438,Retail,Retail Customer,0.37,N,Y,2016-04-13,N,FICO,645,4 - Bankable,0.00269,0.13292
2018-12-31,CPTY_00165,Retail,Retail Customer,0.29,N,N,.,N,FICO,672,3 - Modest Risk,0.00269,0.06148
2018-12-31,CPTY_00166,Retail,Retail Customer,0.14,N,N,.,N,FICO,786,1 - Largely Risk Free,0.00024,0.01041
2018-12-31,CPTY_00152,Retail,Retail Customer,0.09,N,Y,2014-06-10,N,FICO,838,1 - Largely Risk Free,0.00269,0.0155
2018-12-31,CPTY_00556,Retail,Retail Customer,0.5,Y,Y,2018-05-01,N,FICO,596,5 - Additional Review,0.17221,0.19929
2018-12-31,CPTY_00203,Retail,Retail Customer,0.27,N,N,.,N,FICO,675,3 - Modest Risk,0.00269,0.07577
2018-12-31,CPTY_00347,Retail,Retail Customer,0.38,N,N,.,N,FICO,624,4 - Bankable,0.01076,0.10839
2018-12-31,CPTY_00201,Retail,Retail Customer,0.35,N,N,.,N,FICO,603,4 - Bankable,0.00269,0.12606
2018-12-31,CPTY_00309,Retail,Retail Customer,0.09,N,N,.,N,FICO,765,1 - Largely Risk Free,0.00024,0.00917
2018-12-31,CPTY_00341,Retail,Retail Customer,0.33,N,Y,2015-12-04,N,FICO,671,3 - Modest Risk,0.00269,0.0599
2018-12-31,CPTY_00120,Retail,Retail Customer,0.58,N,N,.,N,FICO,509,6 - Special Mention,0.01076,0.37046
2018-12-31,CPTY_00065,Retail,Retail Customer,0.39,N,N,.,N,FICO,615,4 - Bankable,0.01076,0.15724
2018-12-31,CPTY_00386,Retail,Retail Customer,0.29,N,N,.,N,FICO,672,3 - Modest Risk,0.00269,0.08725
2018-12-31,CPTY_00255,Retail,Retail Customer,1,Y,Y,2018-05-01,N,FICO,348,9 - Loss,0.6,1
2018-12-31,CPTY_00094,Retail,Retail Customer,0.32,N,N,.,N,FICO,671,3 - Modest Risk,0.01076,0.08751
2018-12-31,CPTY_00180,Retail,Retail Customer,1,Y,Y,2018-05-01,N,FICO,182,9 - Loss,0.6,1
2018-12-31,CPTY_00335,Retail,Retail Customer,0.52,N,N,.,N,FICO,590,5 - Additional Review,0.00269,0.28909
2018-12-31,CPTY_00286,Retail,Retail Customer,0.36,N,Y,2018-04-28,N,FICO,603,4 - Bankable,0.01076,0.10529
2018-12-31,CPTY_00340,Retail,Retail Customer,0.36,N,N,.,N,FICO,615,4 - Bankable,0.01076,0.13946
2018-12-31,CPTY_00288,Retail,Retail Customer,0.3,N,Y,2017-05-13,N,FICO,694,3 - Modest Risk,0.00269,0.07832
2018-12-31,CPTY_00164,Retail,Retail Customer,0.21,N,N,.,N,FICO,726,2 - Minimal Risk,0.00269,0.03714
2018-12-31,CPTY_00229,Retail,Retail Customer,0.4,N,N,.,N,FICO,608,4 - Bankable,0.01076,0.12912
2018-12-31,CPTY_00325,Retail,Retail Customer,0.49,N,N,.,N,FICO,564,5 - Additional Review,0.00269,0.19711
2018-12-31,CPTY_00108,Retail,Retail Customer,0.21,N,N,.,N,FICO,735,2 - Minimal Risk,0.00068,0.05415
2018-12-31,CPTY_00518,Retail,Retail Customer,1,N,N,.,N,FICO,238,9 - Loss,0.01076,1
2018-12-31,CPTY_00503,Retail,Retail Customer,0.42,N,N,.,N,FICO,640,4 - Bankable,0.01076,0.13697
2018-12-31,CPTY_00038,Retail,Retail Customer,0.32,N,N,.,N,FICO,678,3 - Modest Risk,0.01076,0.09818
2018-12-31,CPTY_00587,Retail,Retail Customer,0.19,N,N,.,N,FICO,721,2 - Minimal Risk,0.00068,0.04105
2018-12-31,CPTY_00160,Retail,Retail Customer,0.32,N,N,.,N,FICO,662,3 - Modest Risk,0.00024,0.05733
2018-12-31,CPTY_00088,Retail,Retail Customer,0.14,N,N,.,N,FICO,752,1 - Largely Risk Free,0.00024,0.02409
2018-12-31,CPTY_00495,Retail,Retail Customer,0.41,N,N,.,N,FICO,612,4 - Bankable,0.01076,0.17499
2018-12-31,CPTY_00307,Retail,Retail Customer,0.31,N,Y,2016-03-25,N,FICO,687,3 - Modest Risk,0.01076,0.07172
2018-12-31,CPTY_00392,Retail,Retail Customer,0.2,N,N,.,N,FICO,702,2 - Minimal Risk,0.01076,0.04959
2018-12-31,CPTY_00334,Retail,Retail Customer,0.57,Y,Y,2018-05-01,N,FICO,544,6 - Special Mention,0.17221,0.37606
2018-12-31,CPTY_00036,Retail,Retail Customer,0.09,N,N,.,N,FICO,783,1 - Largely Risk Free,0.00269,0.00676
2018-12-31,CPTY_00344,Retail,Retail Customer,0.38,N,N,.,N,FICO,607,4 - Bankable,0.01076,0.15521
2018-12-31,CPTY_00381,Retail,Retail Customer,0.44,N,N,.,N,FICO,604,4 - Bankable,0.01076,0.10342
2018-12-31,CPTY_00466,Retail,Retail Customer,0.32,N,N,.,N,FICO,674,3 - Modest Risk,0.01076,0.09117
2018-12-31,CPTY_00041,Retail,Retail Customer,0.42,N,N,.,N,FICO,603,4 - Bankable,0.00024,0.13134
2018-12-31,CPTY_00439,Retail,Retail Customer,0.4,N,N,.,N,FICO,609,4 - Bankable,0.01076,0.14399
2018-12-31,CPTY_00176,Retail,Retail Customer,0.51,N,Y,2016-12-10,N,FICO,565,5 - Additional Review,0.01076,0.25795
2018-12-31,CPTY_00188,Retail,Retail Customer,0.69,N,N,.,N,FICO,481,7 - Sub-Standard,0.00024,0.30089
2018-12-31,CPTY_00565,Retail,Retail Customer,0.42,N,N,.,N,FICO,630,4 - Bankable,0.01076,0.16349
2018-12-31,CPTY_00187,Retail,Retail Customer,0.3,N,N,.,N,FICO,676,3 - Modest Risk,0.01076,0.09537
2018-12-31,CPTY_00557,Retail,Retail Customer,0.22,N,Y,2013-08-01,N,FICO,711,2 - Minimal Risk,0.01076,0.05558
2018-12-31,CPTY_00197,Retail,Retail Customer,1,Y,Y,2018-05-01,N,FICO,287,9 - Loss,0.6,1
2018-12-31,CPTY_00249,Retail,Retail Customer,0.41,N,N,.,N,FICO,643,4 - Bankable,0.01076,0.18825
2018-12-31,CPTY_00507,Retail,Retail Customer,0.16,N,N,.,N,FICO,728,2 - Minimal Risk,0.00068,0.03722
2018-12-31,CPTY_00440,Retail,Retail Customer,0.28,N,Y,2014-02-07,N,FICO,685,3 - Modest Risk,0.00269,0.09956
2018-12-31,CPTY_00342,Retail,Retail Customer,0.11,N,N,.,N,FICO,781,1 - Largely Risk Free,0.00024,0.01364
2018-12-31,CPTY_00109,Retail,Retail Customer,0.4,Y,Y,2018-05-01,N,FICO,647,4 - Bankable,0.17221,0.10362
2018-12-31,CPTY_00512,Retail,Retail Customer,1,Y,Y,2018-05-01,N,FICO,161,9 - Loss,0.6,1
2018-12-31,CPTY_00345,Retail,Retail Customer,0.6,N,N,.,N,FICO,520,6 - Special Mention,0.00068,0.35345
2018-12-31,CPTY_00171,Retail,Retail Customer,0.4,N,Y,2014-06-14,N,FICO,611,4 - Bankable,0.01076,0.13068
2018-12-31,CPTY_00461,Retail,Retail Customer,0.31,N,N,.,N,FICO,657,3 - Modest Risk,0.01076,0.06898
2018-12-31,CPTY_00578,Retail,Retail Customer,0.41,N,N,.,N,FICO,625,4 - Bankable,0.01076,0.14661
2018-12-31,CPTY_00234,Retail,Retail Customer,0.4,N,Y,2017-05-07,N,FICO,614,4 - Bankable,0.01076,0.12307
2018-12-31,CPTY_00161,Retail,Retail Customer,0.07,N,N,.,N,FICO,813,1 - Largely Risk Free,0.00024,0.01597
2018-12-31,CPTY_00116,Retail,Retail Customer,0.14,N,N,.,N,FICO,807,1 - Largely Risk Free,0.00024,0.00975
2018-12-31,CPTY_00558,Retail,Retail Customer,0.52,N,Y,2013-10-29,N,FICO,563,5 - Additional Review,0.01076,0.24003
2018-12-31,CPTY_00223,Retail,Retail Customer,0.51,N,Y,2016-09-17,N,FICO,584,5 - Additional Review,0.01076,0.26185
2018-12-31,CPTY_00158,Retail,Retail Customer,0.36,N,N,.,N,FICO,600,4 - Bankable,0.01076,0.12418
2018-12-31,CPTY_00474,Retail,Retail Customer,0.96,N,N,.,N,FICO,296,9 - Loss,0.01076,1
2018-12-31,CPTY_00332,Retail,Retail Customer,0.39,N,Y,2017-07-25,N,FICO,649,4 - Bankable,0.01076,0.12369
2018-12-31,CPTY_00331,Retail,Retail Customer,0.49,N,N,.,N,FICO,594,5 - Additional Review,0.00269,0.20311
2018-12-31,CPTY_00533,Retail,Retail Customer,0.41,N,Y,2013-07-02,N,FICO,610,4 - Bankable,0.01076,0.12209
2018-12-31,CPTY_00348,Retail,Retail Customer,0.23,N,N,.,N,FICO,743,2 - Minimal Risk,0.00068,0.0489
2018-12-31,CPTY_00260,Retail,Retail Customer,0.42,N,Y,2015-01-11,N,FICO,608,4 - Bankable,0.01076,0.16513
2018-12-31,CPTY_00306,Retail,Retail Customer,0.09,N,N,.,N,FICO,813,1 - Largely Risk Free,0.00024,0.00676
2018-12-31,CPTY_00105,Retail,Retail Customer,0.6,Y,Y,2018-05-01,N,FICO,523,6 - Special Mention,0.17221,0.36604
2018-12-31,CPTY_00487,Retail,Retail Customer,0.6,N,N,.,N,FICO,548,6 - Special Mention,0.01076,0.35099
2018-12-31,CPTY_00225,Retail,Retail Customer,0.08,N,N,.,N,FICO,820,1 - Largely Risk Free,0.00024,0.02206
2018-12-31,CPTY_00195,Retail,Retail Customer,0.37,N,Y,2017-05-02,N,FICO,644,4 - Bankable,0.01076,0.10414
2018-12-31,CPTY_00085,Retail,Retail Customer,0.28,N,N,.,N,FICO,683,3 - Modest Risk,0.00269,0.06781
2018-12-31,CPTY_00467,Retail,Retail Customer,0.3,N,N,.,N,FICO,686,3 - Modest Risk,0.01076,0.08501
2018-12-31,CPTY_00564,Retail,Retail Customer,0.35,N,N,.,N,FICO,610,4 - Bankable,0.01076,0.11069
2018-12-31,CPTY_00283,Retail,Retail Customer,0.19,N,Y,2017-09-24,N,FICO,750,2 - Minimal Risk,0.00269,0.05064
2018-12-31,CPTY_00337,Retail,Retail Customer,0.4,N,N,.,N,FICO,600,4 - Bankable,0.00269,0.10992
2018-12-31,CPTY_00200,Retail,Retail Customer,0.41,N,N,.,N,FICO,628,4 - Bankable,0.01076,0.12644
2018-12-31,CPTY_00327,Retail,Retail Customer,0.2,N,N,.,N,FICO,724,2 - Minimal Risk,0.00024,0.05059
2018-12-31,CPTY_00257,Retail,Retail Customer,0.8,N,Y,2013-07-23,N,FICO,446,8 - Doubtful,0.01076,0.78427
2018-12-31,CPTY_00274,Retail,Retail Customer,0.23,N,N,.,N,FICO,728,2 - Minimal Risk,0.00068,0.03893
2018-12-31,CPTY_00157,Retail,Retail Customer,0.39,N,N,.,N,FICO,611,4 - Bankable,0.01076,0.15945
2018-12-31,CPTY_00462,Retail,Retail Customer,0.1,N,N,.,N,FICO,842,1 - Largely Risk Free,0.00024,0.03232
2018-12-31,CPTY_00039,Retail,Retail Customer,0.61,Y,Y,2018-05-01,N,FICO,519,6 - Special Mention,0.17221,0.35736
2018-12-31,CPTY_00527,Retail,Retail Customer,0.98,Y,Y,2018-05-01,N,FICO,217,9 - Loss,0.6,1
2018-12-31,CPTY_00488,Retail,Retail Customer,0.43,N,N,.,N,FICO,600,4 - Bankable,0.01076,0.14256
2018-12-31,CPTY_00365,Retail,Retail Customer,0.43,N,N,.,N,FICO,638,4 - Bankable,0.01076,0.13147
2018-12-31,CPTY_00275,Retail,Retail Customer,0.44,N,Y,2013-10-04,N,FICO,634,4 - Bankable,0.01076,0.18675
2018-12-31,CPTY_00173,Retail,Retail Customer,0.37,N,Y,2018-02-09,N,FICO,624,4 - Bankable,0.01076,0.12393
2018-12-31,CPTY_00504,Retail,Retail Customer,0.42,N,N,.,N,FICO,631,4 - Bankable,0.01076,0.15244
2018-12-31,CPTY_00106,Retail,Retail Customer,0.4,N,Y,2015-10-09,N,FICO,630,4 - Bankable,0.01076,0.18177
2018-12-31,CPTY_00251,Retail,Retail Customer,0.7,N,N,.,N,FICO,464,7 - Sub-Standard,0.01076,0.51685
2018-12-31,CPTY_00498,Retail,Retail Customer,1.01,Y,Y,2018-05-01,N,FICO,400,9 - Loss,0.6,1
2018-12-31,CPTY_00277,Retail,Retail Customer,0.39,N,Y,2017-04-27,N,FICO,623,4 - Bankable,0.01076,0.1825
2018-12-31,CPTY_00024,Retail,Retail Customer,0.38,N,Y,2014-11-01,N,FICO,648,4 - Bankable,0.01076,0.1836
2018-12-31,CPTY_00417,Retail,Retail Customer,0.37,N,N,.,N,FICO,628,4 - Bankable,0.01076,0.13738
2018-12-31,CPTY_00132,Retail,Retail Customer,0.75,N,N,.,N,FICO,431,8 - Doubtful,0.01076,0.66034
2018-12-31,CPTY_00233,Retail,Retail Customer,0.32,N,Y,2016-02-14,N,FICO,682,3 - Modest Risk,0.00269,0.06374
2018-12-31,CPTY_00125,Retail,Retail Customer,0.39,N,Y,2018-03-29,N,FICO,638,4 - Bankable,0.01076,0.13029
2018-12-31,CPTY_00278,Retail,Retail Customer,0.4,N,Y,2015-06-05,N,FICO,627,4 - Bankable,0.01076,0.14457
2018-12-31,CPTY_00352,Retail,Retail Customer,0.12,N,N,.,N,FICO,840,1 - Largely Risk Free,0.00024,0.01491
2018-12-31,CPTY_00080,Retail,Retail Customer,0.62,Y,Y,2018-05-01,N,FICO,530,6 - Special Mention,0.17221,0.36972
2018-12-31,CPTY_00131,Retail,Retail Customer,0.08,N,N,.,N,FICO,799,1 - Largely Risk Free,0.00024,0.01507
2018-12-31,CPTY_00154,Retail,Retail Customer,0.48,N,N,.,N,FICO,589,5 - Additional Review,0.01076,0.19128
2018-12-31,CPTY_00586,Retail,Retail Customer,0.1,N,N,.,N,FICO,812,1 - Largely Risk Free,0.01076,0.03219
2018-12-31,CPTY_00221,Retail,Retail Customer,0.41,N,N,.,N,FICO,631,4 - Bankable,0.01076,0.16235
2018-12-31,CPTY_00559,Retail,Retail Customer,0.49,N,N,.,N,FICO,577,5 - Additional Review,0.00068,0.23716
2018-12-31,CPTY_00103,Retail,Retail Customer,0.19,N,N,.,N,FICO,734,2 - Minimal Risk,0.00068,0.04555
2018-12-31,CPTY_00054,Retail,Retail Customer,0.43,N,Y,2016-06-04,N,FICO,600,4 - Bankable,0.01076,0.18526
2018-12-31,CPTY_00064,Retail,Retail Customer,0.33,N,Y,2013-12-24,N,FICO,669,3 - Modest Risk,0.01076,0.06185
2018-12-31,CPTY_00442,Retail,Retail Customer,0.51,N,Y,2014-02-08,N,FICO,588,5 - Additional Review,0.01076,0.24858
2018-12-31,CPTY_00473,Retail,Retail Customer,0.49,N,N,.,N,FICO,576,5 - Additional Review,0.00269,0.19731
2018-12-31,CPTY_00579,Retail,Retail Customer,0.57,Y,Y,2018-05-01,N,FICO,508,6 - Special Mention,0.17221,0.38674
2018-12-31,CPTY_00123,Retail,Retail Customer,0.05,N,N,.,N,FICO,825,1 - Largely Risk Free,0.00024,0.01504
2018-12-31,CPTY_00465,Retail,Retail Customer,0.3,N,Y,2014-11-07,N,FICO,696,3 - Modest Risk,0.01076,0.09594
2018-12-31,CPTY_00326,Retail,Retail Customer,1.01,Y,Y,2018-05-01,N,FICO,339,9 - Loss,0.17221,1
2018-12-31,CPTY_00280,Retail,Retail Customer,0.3,N,Y,2016-11-06,N,FICO,686,3 - Modest Risk,0.00269,0.06266
2018-12-31,CPTY_00202,Retail,Retail Customer,0.69,N,Y,2018-02-26,N,FICO,453,7 - Sub-Standard,0.01076,0.3918
2018-12-31,CPTY_00016,Retail,Retail Customer,0.38,N,N,.,N,FICO,615,4 - Bankable,0.00269,0.14356
2018-12-31,CPTY_00279,Retail,Retail Customer,0.6,Y,Y,2018-05-01,N,FICO,519,6 - Special Mention,0.17221,0.39892
2018-12-31,CPTY_00015,Retail,Retail Customer,0.36,N,N,.,N,FICO,624,4 - Bankable,0.01076,0.18489
2018-12-31,CPTY_00026,Retail,Retail Customer,0.4,N,N,.,N,FICO,617,4 - Bankable,0.01076,0.13252
2018-12-31,CPTY_00126,Retail,Retail Customer,1.03,Y,Y,2018-05-01,N,FICO,196,9 - Loss,0.6,1
2018-12-31,CPTY_00563,Retail,Retail Customer,0.39,N,Y,2016-06-13,N,FICO,641,4 - Bankable,0.01076,0.18434
2018-12-31,CPTY_00129,Retail,Retail Customer,0.39,N,Y,2013-07-27,N,FICO,607,4 - Bankable,0.01076,0.15274
2018-12-31,CPTY_00577,Retail,Retail Customer,0.39,N,N,.,N,FICO,625,4 - Bankable,0.01076,0.18844
2018-12-31,CPTY_00178,Retail,Retail Customer,0.21,N,N,.,N,FICO,737,2 - Minimal Risk,0.00024,0.0348
2018-12-31,CPTY_00043,Retail,Retail Customer,0.4,N,N,.,N,FICO,638,4 - Bankable,0.01076,0.10753
2018-12-31,CPTY_00449,Retail,Retail Customer,0.64,Y,Y,2018-05-01,N,FICO,500,6 - Special Mention,0.17221,0.39259
2018-12-31,CPTY_00346,Retail,Retail Customer,0.58,Y,Y,2018-05-01,N,FICO,543,6 - Special Mention,0.17221,0.34889
2018-12-31,CPTY_00285,Retail,Retail Customer,1.01,Y,Y,2018-05-01,N,FICO,238,9 - Loss,0.6,1
2018-12-31,CPTY_00560,Retail,Retail Customer,0.37,N,N,.,N,FICO,631,4 - Bankable,0.01076,0.10435
2018-12-31,CPTY_00519,Retail,Retail Customer,0.58,Y,Y,2018-05-01,N,FICO,537,6 - Special Mention,0.17221,0.34507
2018-12-31,CPTY_00023,Retail,Retail Customer,0.49,N,N,.,N,FICO,589,5 - Additional Review,0.01076,0.20433
2018-12-31,CPTY_00475,Retail,Retail Customer,0.99,Y,Y,2018-05-01,N,FICO,252,9 - Loss,0.17221,1
2018-12-31,CPTY_00513,Retail,Retail Customer,0.37,N,N,.,N,FICO,619,4 - Bankable,0.01076,0.12356
2018-12-31,CPTY_00534,Retail,Retail Customer,0.6,N,Y,2015-04-18,N,FICO,518,6 - Special Mention,0.01076,0.3475
2018-12-31,CPTY_00013,Retail,Retail Customer,0.59,Y,Y,2018-05-01,N,FICO,526,6 - Special Mention,0.17221,0.35134
2018-12-31,CPTY_00146,Retail,Retail Customer,0.31,N,N,.,N,FICO,671,3 - Modest Risk,0.00024,0.09614
2018-12-31,CPTY_00506,Retail,Retail Customer,0.54,N,N,.,N,FICO,572,5 - Additional Review,0.01076,0.2297
2018-12-31,CPTY_00242,Retail,Retail Customer,0.59,N,Y,2018-02-22,N,FICO,521,6 - Special Mention,0.01076,0.39377
2018-12-31,CPTY_00196,Retail,Retail Customer,0.2,N,N,.,N,FICO,708,2 - Minimal Risk,0.00068,0.04097
2018-12-31,CPTY_00028,Retail,Retail Customer,0.49,Y,Y,2018-05-01,N,FICO,590,5 - Additional Review,0.17221,0.2218
2018-12-31,CPTY_00149,Retail,Retail Customer,0.43,N,N,.,N,FICO,630,4 - Bankable,0.01076,0.18232
2018-12-31,CPTY_00122,Retail,Retail Customer,0.59,Y,Y,2018-05-01,N,FICO,534,6 - Special Mention,0.17221,0.39298
2018-12-31,CPTY_00267,Retail,Retail Customer,0.09,N,N,.,N,FICO,844,1 - Largely Risk Free,0.00024,0.01047
2018-12-31,CPTY_00373,Retail,Retail Customer,1.02,N,Y,2017-04-26,N,FICO,261,9 - Loss,0.01076,1
2018-12-31,CPTY_00366,Retail,Retail Customer,0.39,N,Y,2017-11-26,N,FICO,635,4 - Bankable,0.01076,0.14867
2018-12-31,CPTY_00150,Retail,Retail Customer,0.27,N,Y,2013-05-28,N,FICO,689,3 - Modest Risk,0.01076,0.10056
2018-12-31,CPTY_00121,Retail,Retail Customer,0.51,N,N,.,N,FICO,575,5 - Additional Review,0.01076,0.19456
2018-12-31,CPTY_00580,Retail,Retail Customer,0.4,N,Y,2015-06-16,N,FICO,611,4 - Bankable,0.01076,0.12606
2018-12-31,CPTY_00265,Retail,Retail Customer,0.29,N,Y,2014-10-14,N,FICO,699,3 - Modest Risk,0.01076,0.05973
2018-12-31,CPTY_00045,Retail,Retail Customer,0.2,N,N,.,N,FICO,736,2 - Minimal Risk,0.01076,0.04372
2018-12-31,CPTY_00148,Retail,Retail Customer,0.35,N,N,.,N,FICO,622,4 - Bankable,0.01076,0.10466
2018-12-31,CPTY_00400,Retail,Retail Customer,0.43,N,N,.,N,FICO,622,4 - Bankable,0.01076,0.16713
2018-12-31,CPTY_00371,Retail,Retail Customer,0.79,N,N,.,N,FICO,419,8 - Doubtful,0.00269,0.60471
2018-12-31,CPTY_00019,Retail,Retail Customer,0.12,N,N,.,N,FICO,779,1 - Largely Risk Free,0.00024,0.01439
2018-12-31,CPTY_00354,Retail,Retail Customer,0.41,N,Y,2017-03-18,N,FICO,624,4 - Bankable,0.01076,0.10582
2018-12-31,CPTY_00029,Retail,Retail Customer,0.6,Y,Y,2018-05-01,N,FICO,521,6 - Special Mention,0.17221,0.36385
2018-12-31,CPTY_00151,Retail,Retail Customer,0.4,N,N,.,N,FICO,639,4 - Bankable,0.01076,0.10992
2018-12-31,CPTY_00127,Retail,Retail Customer,0.41,N,Y,2014-07-18,N,FICO,603,4 - Bankable,0.01076,0.12172
2018-12-31,CPTY_00423,Retail,Retail Customer,0.51,N,N,.,N,FICO,564,5 - Additional Review,0.00024,0.2019
2018-12-31,CPTY_00040,Retail,Retail Customer,0.39,N,N,.,N,FICO,627,4 - Bankable,0.01076,0.11114
2018-12-31,CPTY_00014,Retail,Retail Customer,0.4,N,Y,2018-04-20,N,FICO,617,4 - Bankable,0.01076,0.12493
2018-12-31,CPTY_00535,Retail,Retail Customer,0.39,N,N,.,N,FICO,608,4 - Bankable,0.01076,0.17799
2018-12-31,CPTY_00561,Retail,Retail Customer,0.68,N,N,.,N,FICO,479,7 - Sub-Standard,0.01076,0.40943
2018-12-31,CPTY_00053,Retail,Retail Customer,0.58,Y,Y,2018-05-01,N,FICO,508,6 - Special Mention,0.17221,0.36059
2018-12-31,CPTY_00205,Retail,Retail Customer,0.31,N,N,.,N,FICO,680,3 - Modest Risk,0.00269,0.09788
2018-12-31,CPTY_00248,Retail,Retail Customer,0.82,N,N,.,N,FICO,449,8 - Doubtful,0.01076,0.76644
2018-12-31,CPTY_00147,Retail,Retail Customer,0.39,N,N,.,N,FICO,624,4 - Bankable,0.00024,0.13932
2018-12-31,CPTY_00111,Retail,Retail Customer,0.63,N,N,.,N,FICO,530,6 - Special Mention,0.01076,0.36059
2018-12-31,CPTY_00100,Retail,Retail Customer,1,N,N,.,N,FICO,275,9 - Loss,0.00024,1
2018-12-31,CPTY_00231,Retail,Retail Customer,0.6,Y,Y,2018-05-01,N,FICO,507,6 - Special Mention,0.17221,0.39574
2018-12-31,CPTY_00124,Retail,Retail Customer,0.38,N,N,.,N,FICO,618,4 - Bankable,0.00269,0.1166
2018-12-31,CPTY_00355,Retail,Retail Customer,0.46,N,N,.,N,FICO,588,5 - Additional Review,0.01076,0.27445
2018-12-31,CPTY_00104,Retail,Retail Customer,0.3,N,N,.,N,FICO,671,3 - Modest Risk,0.01076,0.05687
2018-12-31,CPTY_00044,Retail,Retail Customer,0.37,N,Y,2013-10-03,N,FICO,633,4 - Bankable,0.01076,0.1352
2018-12-31,CPTY_00246,Retail,Retail Customer,0.09,N,N,.,N,FICO,770,1 - Largely Risk Free,0.00024,0.02705
2018-12-31,CPTY_00207,Retail,Retail Customer,0.49,N,N,.,N,FICO,600,5 - Additional Review,0.00269,0.26554
2018-12-31,CPTY_00254,Retail,Retail Customer,0.07,N,N,.,N,FICO,768,1 - Largely Risk Free,0.00024,0.02191
2018-12-31,CPTY_00540,Retail,Retail Customer,0.58,Y,Y,2018-05-01,N,FICO,531,6 - Special Mention,0.17221,0.37494
2018-12-31,CPTY_00143,Retail,Retail Customer,0.5,N,Y,2016-01-21,N,FICO,562,5 - Additional Review,0.01076,0.25436
2018-12-31,CPTY_00101,Retail,Retail Customer,0.56,Y,Y,2018-05-01,N,FICO,520,6 - Special Mention,0.17221,0.38946
2018-12-31,CPTY_00391,Retail,Retail Customer,0.43,N,Y,2015-07-22,N,FICO,641,4 - Bankable,0.01076,0.17153
2018-12-31,CPTY_00390,Retail,Retail Customer,0.71,N,Y,2015-12-14,N,FICO,498,7 - Sub-Standard,0.01076,0.53153
2018-12-31,CPTY_00315,Retail,Retail Customer,0.18,N,Y,2014-07-06,N,FICO,733,2 - Minimal Risk,0.01076,0.05502
2018-12-31,CPTY_00048,Retail,Retail Customer,0.51,N,N,.,N,FICO,551,5 - Additional Review,0.01076,0.19398
2018-12-31,CPTY_00463,Retail,Retail Customer,0.4,N,N,.,N,FICO,648,4 - Bankable,0.01076,0.17412
2018-12-31,CPTY_00049,Retail,Retail Customer,0.38,N,N,.,N,FICO,604,4 - Bankable,0.01076,0.186
2018-12-31,CPTY_00471,Retail,Retail Customer,0.09,N,N,.,N,FICO,816,1 - Largely Risk Free,0.00024,0.03291
2018-12-31,CPTY_00240,Retail,Retail Customer,0.62,N,N,.,N,FICO,538,6 - Special Mention,0.00269,0.40012
2018-12-31,CPTY_00050,Retail,Retail Customer,0.22,N,N,.,N,FICO,709,2 - Minimal Risk,0.00068,0.04969
2018-12-31,CPTY_00491,Retail,Retail Customer,0.39,N,Y,2015-04-15,N,FICO,649,4 - Bankable,0.01076,0.15474
2018-12-31,CPTY_00096,Retail,Retail Customer,0.42,N,N,.,N,FICO,645,4 - Bankable,0.01076,0.12873
2018-12-31,CPTY_00414,Retail,Retail Customer,0.52,N,Y,2014-11-02,N,FICO,575,5 - Additional Review,0.01076,0.20009
2018-12-31,CPTY_00454,Retail,Retail Customer,1,Y,Y,2018-05-01,N,FICO,169,9 - Loss,0.6,1
2018-12-31,CPTY_00468,Retail,Retail Customer,0.5,Y,Y,2018-05-01,N,FICO,565,5 - Additional Review,0.17221,0.27527
2018-12-31,CPTY_00177,Retail,Retail Customer,0.4,N,N,.,N,FICO,609,4 - Bankable,0.01076,0.11931
2018-12-31,CPTY_00209,Retail,Retail Customer,0.42,N,N,.,N,FICO,614,4 - Bankable,0.01076,0.14778
2018-12-31,CPTY_00046,Retail,Retail Customer,0.4,N,N,.,N,FICO,644,4 - Bankable,0.01076,0.18014
2018-12-31,CPTY_00232,Retail,Retail Customer,0.08,N,N,.,N,FICO,817,1 - Largely Risk Free,0.00024,0.00962
2018-12-31,CPTY_00581,Retail,Retail Customer,0.42,N,N,.,N,FICO,650,4 - Bankable,0.01076,0.1396
2018-12-31,CPTY_00183,Retail,Retail Customer,0.6,N,N,.,N,FICO,543,6 - Special Mention,0.01076,0.39219
2018-12-31,CPTY_00144,Retail,Retail Customer,0.42,N,N,.,N,FICO,605,4 - Bankable,0.01076,0.15305
2018-12-31,CPTY_00424,Retail,Retail Customer,0.68,N,Y,2014-09-29,N,FICO,471,7 - Sub-Standard,0.01076,0.52466
2018-12-31,CPTY_00086,Retail,Retail Customer,0.6,N,N,.,N,FICO,520,6 - Special Mention,0.01076,0.37494
2018-12-31,CPTY_00089,Retail,Retail Customer,0.11,N,N,.,N,FICO,799,1 - Largely Risk Free,0.00024,0.03337
2018-12-31,CPTY_00090,Retail,Retail Customer,0.41,N,N,.,N,FICO,609,4 - Bankable,0.01076,0.14912
2018-12-31,CPTY_00084,Retail,Retail Customer,0.1,N,N,.,N,FICO,791,1 - Largely Risk Free,0.00269,0.00846
2018-12-31,CPTY_00057,Retail,Retail Customer,0.63,Y,Y,2018-05-01,N,FICO,548,6 - Special Mention,0.17221,0.35987
2018-12-31,CPTY_00002,Retail,Retail Customer,0.1,N,N,.,N,FICO,757,1 - Largely Risk Free,0.00024,0.02507
2018-12-31,CPTY_00227,Retail,Retail Customer,0.61,N,N,.,N,FICO,539,6 - Special Mention,0.00068,0.40012
2018-12-31,CPTY_00062,Retail,Retail Customer,0.43,N,N,.,N,FICO,633,4 - Bankable,0.01076,0.11315
2018-12-31,CPTY_00358,Retail,Retail Customer,0.38,N,Y,2013-10-24,N,FICO,639,4 - Bankable,0.01076,0.17222
2018-12-31,CPTY_00324,Retail,Retail Customer,0.39,N,N,.,N,FICO,638,4 - Bankable,0.01076,0.13107
2018-12-31,CPTY_00329,Retail,Retail Customer,0.08,N,N,.,N,FICO,770,1 - Largely Risk Free,0.00024,0.02673
2018-12-31,CPTY_00021,Retail,Retail Customer,0.18,N,Y,2015-05-25,N,FICO,749,2 - Minimal Risk,0.00269,0.04125
2018-12-31,CPTY_00360,Retail,Retail Customer,0.38,N,Y,2014-08-22,N,FICO,645,4 - Bankable,0.01076,0.14486
2018-12-31,CPTY_00372,Retail,Retail Customer,0.41,N,N,.,N,FICO,608,4 - Bankable,0.01076,0.17067
2018-12-31,CPTY_00478,Retail,Retail Customer,0.64,Y,Y,2018-05-01,N,FICO,550,6 - Special Mention,0.17221,0.37833
2018-12-31,CPTY_00528,Retail,Retail Customer,0.99,Y,Y,2018-05-01,N,FICO,332,9 - Loss,0.6,1
2018-12-31,CPTY_00068,Retail,Retail Customer,0.4,N,N,.,N,FICO,638,4 - Bankable,0.01076,0.12418
2018-12-31,CPTY_00067,Retail,Retail Customer,0.68,N,Y,2013-06-11,N,FICO,490,7 - Sub-Standard,0.01076,0.43085
2018-12-31,CPTY_00582,Retail,Retail Customer,0.36,N,N,.,N,FICO,613,4 - Bankable,0.01076,0.18069
2018-12-31,CPTY_00499,Retail,Retail Customer,0.43,N,N,.,N,FICO,621,4 - Bankable,0.01076,0.13332
2018-12-31,CPTY_00071,Retail,Retail Customer,0.43,N,Y,2017-10-13,N,FICO,645,4 - Bankable,0.01076,0.12493
2018-12-31,CPTY_00191,Retail,Retail Customer,0.38,N,N,.,N,FICO,615,4 - Bankable,0.01076,0.12593
2018-12-31,CPTY_00367,Retail,Retail Customer,0.2,N,N,.,N,FICO,704,2 - Minimal Risk,0.00068,0.03583
2018-12-31,CPTY_00042,Retail,Retail Customer,0.4,N,N,.,N,FICO,621,4 - Bankable,0.01076,0.11979
2018-12-31,CPTY_00362,Retail,Retail Customer,0.31,N,N,.,N,FICO,698,3 - Modest Risk,0.00068,0.07998
2018-12-31,CPTY_00170,Retail,Retail Customer,0.49,N,N,.,N,FICO,551,5 - Additional Review,0.01076,0.24783
2018-12-31,CPTY_00464,Retail,Retail Customer,0.61,Y,Y,2018-05-01,N,FICO,530,6 - Special Mention,0.17221,0.35594
2018-12-31,CPTY_00401,Retail,Retail Customer,0.3,Y,Y,2018-05-01,N,FICO,679,3 - Modest Risk,0.17221,0.09264
2018-12-31,CPTY_00112,Retail,Retail Customer,0.32,N,N,.,N,FICO,690,3 - Modest Risk,0.00269,0.06298
2018-12-31,CPTY_00517,Retail,Retail Customer,0.72,N,Y,2017-03-05,N,FICO,494,7 - Sub-Standard,0.01076,0.36714
2018-12-31,CPTY_00210,Retail,Retail Customer,0.27,N,N,.,N,FICO,681,3 - Modest Risk,0.00269,0.05802
2018-12-31,CPTY_00238,Retail,Retail Customer,0.21,N,N,.,N,FICO,734,2 - Minimal Risk,0.00068,0.05208
2018-12-31,CPTY_00153,Retail,Retail Customer,0.41,N,N,.,N,FICO,640,4 - Bankable,0.00024,0.18378
2018-12-31,CPTY_00217,Retail,Retail Customer,0.42,N,N,.,N,FICO,625,4 - Bankable,0.01076,0.17711
2018-12-31,CPTY_00156,Retail,Retail Customer,0.41,N,N,.,N,FICO,605,4 - Bankable,0.01076,0.12606
2018-12-31,CPTY_00508,Retail,Retail Customer,0.73,N,N,.,N,FICO,466,7 - Sub-Standard,0.00024,0.4177
2018-12-31,CPTY_00378,Retail,Retail Customer,0.4,N,N,.,N,FICO,629,4 - Bankable,0.01076,0.13588
2018-12-31,CPTY_00198,Retail,Retail Customer,0.12,N,N,.,N,FICO,818,1 - Largely Risk Free,0.00068,0.01141
2018-12-31,CPTY_00190,Retail,Retail Customer,0.42,N,N,.,N,FICO,637,4 - Bankable,0.01076,0.12809
2018-12-31,CPTY_00336,Retail,Retail Customer,0.57,Y,Y,2018-05-01,N,FICO,531,6 - Special Mention,0.17221,0.36714
2018-12-31,CPTY_00185,Retail,Retail Customer,0.61,N,N,.,N,FICO,546,6 - Special Mention,0.01076,0.39377
2018-12-31,CPTY_00500,Retail,Retail Customer,0.38,N,N,.,N,FICO,647,4 - Bankable,0.01076,0.15122
2018-12-31,CPTY_00214,Retail,Retail Customer,0.39,N,Y,2015-01-07,N,FICO,649,4 - Bankable,0.01076,0.14972
2018-12-31,CPTY_00425,Retail,Retail Customer,0.39,N,N,.,N,FICO,617,4 - Bankable,0.01076,0.1683
2018-12-31,CPTY_00107,Retail,Retail Customer,0.39,N,Y,2016-02-14,N,FICO,620,4 - Bankable,0.01076,0.12848
2018-12-31,CPTY_00502,Retail,Retail Customer,0.31,N,Y,2018-02-28,N,FICO,655,3 - Modest Risk,0.00269,0.07065
2018-12-31,CPTY_00320,Retail,Retail Customer,0.41,N,N,.,N,FICO,615,4 - Bankable,0.01076,0.11533
2018-12-31,CPTY_00304,Retail,Retail Customer,0.7,N,N,.,N,FICO,480,7 - Sub-Standard,0.01076,0.36972
2018-12-31,CPTY_00017,Retail,Retail Customer,0.11,N,Y,2013-08-15,N,FICO,833,1 - Largely Risk Free,0.00269,0.00691
2018-12-31,CPTY_00250,Retail,Retail Customer,0.16,N,N,.,N,FICO,714,2 - Minimal Risk,0.00024,0.04817
2018-12-31,CPTY_00483,Retail,Retail Customer,0.29,N,N,.,N,FICO,652,3 - Modest Risk,0.01076,0.09227
2018-12-31,CPTY_00212,Retail,Retail Customer,0.28,N,N,.,N,FICO,693,3 - Modest Risk,0.00269,0.0745
2018-12-31,CPTY_00099,Retail,Retail Customer,0.67,Y,Y,2018-05-01,N,FICO,491,7 - Sub-Standard,0.17221,0.30882
2018-12-31,CPTY_00136,Retail,Retail Customer,0.21,N,N,.,N,FICO,711,2 - Minimal Risk,0.00068,0.05475
2018-12-31,CPTY_00313,Retail,Retail Customer,0.31,N,N,.,N,FICO,678,3 - Modest Risk,0.01076,0.08561
2018-12-31,CPTY_00496,Retail,Retail Customer,0.98,N,Y,2015-11-13,N,FICO,286,9 - Loss,0.00269,1
2018-12-31,CPTY_00051,Retail,Retail Customer,0.47,N,Y,2014-12-06,N,FICO,556,5 - Additional Review,0.01076,0.25335
2018-12-31,CPTY_00141,Retail,Retail Customer,0.39,N,Y,2014-10-17,N,FICO,632,4 - Bankable,0.01076,0.12543
2018-12-31,CPTY_00317,Retail,Retail Customer,0.72,N,N,.,N,FICO,493,7 - Sub-Standard,0.01076,0.39455
2018-12-31,CPTY_00479,Retail,Retail Customer,0.3,N,N,.,N,FICO,651,3 - Modest Risk,0.01076,0.09036
2018-12-31,CPTY_00258,Retail,Retail Customer,0.6,Y,Y,2018-05-01,N,FICO,533,6 - Special Mention,0.17221,0.36641
2018-12-31,CPTY_00098,Retail,Retail Customer,0.19,N,Y,2015-02-23,N,FICO,713,2 - Minimal Risk,0.00269,0.03996
2018-12-31,CPTY_00319,Retail,Retail Customer,0.38,N,N,.,N,FICO,613,4 - Bankable,0.01076,0.15397
2018-12-31,CPTY_00460,Retail,Retail Customer,1,Y,Y,2018-05-01,N,FICO,289,9 - Loss,0.6,1
2018-12-31,CPTY_00135,Retail,Retail Customer,0.07,N,N,.,N,FICO,819,1 - Largely Risk Free,0.00024,0.02107
2018-12-31,CPTY_00472,Retail,Retail Customer,0.4,N,N,.,N,FICO,637,4 - Bankable,0.01076,0.13876
2018-12-31,CPTY_00322,Retail,Retail Customer,0.57,Y,Y,2018-05-01,N,FICO,550,6 - Special Mention,0.17221,0.40052
2018-12-31,CPTY_00137,Retail,Retail Customer,0.6,Y,Y,2018-05-01,N,FICO,539,6 - Special Mention,0.17221,0.34784
2018-12-31,CPTY_00300,Retail,Retail Customer,0.4,N,Y,2015-08-10,N,FICO,623,4 - Bankable,0.01076,0.14171
2018-12-31,CPTY_00213,Retail,Retail Customer,0.28,N,N,.,N,FICO,673,3 - Modest Risk,0.01076,0.06496
2018-12-31,CPTY_00290,Retail,Retail Customer,0.63,Y,Y,2018-05-01,N,FICO,532,6 - Special Mention,0.17221,0.38098
2018-12-31,CPTY_00052,Retail,Retail Customer,0.7,N,Y,2014-04-30,N,FICO,474,7 - Sub-Standard,0.01076,0.48047
2018-12-31,CPTY_00363,Retail,Retail Customer,0.4,N,N,.,N,FICO,610,4 - Bankable,0.01076,0.10667
2018-12-31,CPTY_00305,Retail,Retail Customer,0.27,N,Y,2014-05-25,N,FICO,669,3 - Modest Risk,0.00269,0.06741
2018-12-31,CPTY_00134,Retail,Retail Customer,0.39,N,N,.,N,FICO,601,4 - Bankable,0.01076,0.13279
2018-12-31,CPTY_00075,Retail,Retail Customer,0.22,N,N,.,N,FICO,737,2 - Minimal Risk,0.00068,0.04505
2018-12-31,CPTY_00509,Retail,Retail Customer,0.18,N,N,.,N,FICO,729,2 - Minimal Risk,0.00269,0.05647
2018-12-31,CPTY_00303,Retail,Retail Customer,0.42,N,N,.,N,FICO,620,4 - Bankable,0.01076,0.14867
2018-12-31,CPTY_00476,Retail,Retail Customer,0.7,Y,Y,2018-05-01,N,FICO,484,7 - Sub-Standard,0.17221,0.48481
2018-12-31,CPTY_00343,Retail,Retail Customer,0.51,N,N,.,N,FICO,599,5 - Additional Review,0.01076,0.28967
2018-12-31,CPTY_00218,Retail,Retail Customer,0.4,N,Y,2015-04-11,N,FICO,638,4 - Bankable,0.01076,0.18434
2018-12-31,CPTY_00361,Retail,Retail Customer,0.37,N,N,.,N,FICO,603,4 - Bankable,0.01076,0.13724
2018-12-31,CPTY_00382,Retail,Retail Customer,0.77,N,N,.,N,FICO,444,8 - Doubtful,0.01076,0.70328
2018-12-31,CPTY_00505,Retail,Retail Customer,0.09,N,N,.,N,FICO,767,1 - Largely Risk Free,0.00024,0.01531
2018-12-31,CPTY_00083,Retail,Retail Customer,0.47,N,N,.,N,FICO,571,5 - Additional Review,0.01076,0.21632
2018-12-31,CPTY_00529,Retail,Retail Customer,0.4,N,Y,2017-06-25,N,FICO,644,4 - Bankable,0.01076,0.1108
2018-12-31,CPTY_00380,Retail,Retail Customer,1.01,Y,Y,2018-05-01,N,FICO,261,9 - Loss,0.6,1
2018-12-31,CPTY_00066,Retail,Retail Customer,0.39,N,N,.,N,FICO,630,4 - Bankable,0.01076,0.13016
2018-12-31,CPTY_00364,Retail,Retail Customer,0.2,N,N,.,N,FICO,741,2 - Minimal Risk,0.00068,0.03808
2018-12-31,CPTY_00140,Retail,Retail Customer,0.08,N,N,.,N,FICO,799,1 - Largely Risk Free,0.00024,0.01132
2018-12-31,CPTY_00443,Retail,Retail Customer,1.01,Y,Y,2018-05-01,N,FICO,358,9 - Loss,0.17221,1
2018-12-31,CPTY_00035,Retail,Retail Customer,0.37,N,N,.,N,FICO,621,4 - Bankable,0.01076,0.16881
2018-12-31,CPTY_00047,Retail,Retail Customer,0.06,N,N,.,N,FICO,763,1 - Largely Risk Free,0.00024,0.00845
2018-12-31,CPTY_00252,Retail,Retail Customer,0.72,N,N,.,N,FICO,468,7 - Sub-Standard,0.00269,0.4543
2018-12-31,CPTY_00163,Retail,Retail Customer,0.21,N,Y,2017-11-05,N,FICO,714,2 - Minimal Risk,0.01076,0.03718
2018-12-31,CPTY_00058,Retail,Retail Customer,0.62,N,N,.,N,FICO,505,6 - Special Mention,0.00068,0.34889
2018-12-31,CPTY_00308,Retail,Retail Customer,0.31,N,N,.,N,FICO,657,3 - Modest Risk,0.00269,0.06457
2018-12-31,CPTY_00224,Retail,Retail Customer,0.56,N,N,.,N,FICO,546,6 - Special Mention,0.01076,0.39141
2018-12-31,CPTY_00357,Retail,Retail Customer,0.1,N,N,.,N,FICO,774,1 - Largely Risk Free,0.00269,0.00688
2018-12-31,CPTY_00407,Retail,Retail Customer,0.28,N,N,.,N,FICO,674,3 - Modest Risk,0.00269,0.06081
2018-12-31,CPTY_00204,Retail,Retail Customer,0.41,N,N,.,N,FICO,642,4 - Bankable,0.00068,0.18619
2018-12-31,CPTY_00477,Retail,Retail Customer,0.48,N,Y,2014-05-16,N,FICO,571,5 - Additional Review,0.01076,0.28139
2018-12-31,CPTY_00216,Retail,Retail Customer,0.7,N,Y,2013-09-27,N,FICO,494,7 - Sub-Standard,0.01076,0.45886
2018-12-31,CPTY_00219,Retail,Retail Customer,0.41,N,N,.,N,FICO,632,4 - Bankable,0.00068,0.18768
2018-12-31,CPTY_00168,Retail,Retail Customer,0.4,N,N,.,N,FICO,617,4 - Bankable,0.01076,0.10948
2018-12-31,CPTY_00359,Retail,Retail Customer,0.38,N,Y,2017-06-07,N,FICO,609,4 - Bankable,0.01076,0.15382
2018-12-31,CPTY_00063,Retail,Retail Customer,0.61,N,Y,2018-02-26,N,FICO,522,6 - Special Mention,0.01076,0.36604
2018-12-31,CPTY_00374,Retail,Retail Customer,0.58,Y,Y,2018-05-01,N,FICO,544,6 - Special Mention,0.17221,0.3852
2018-12-31,CPTY_00511,Retail,Retail Customer,0.18,N,N,.,N,FICO,748,2 - Minimal Risk,0.00068,0.05437
2018-12-31,CPTY_00095,Retail,Retail Customer,0.31,N,Y,2015-12-07,N,FICO,650,3 - Modest Risk,0.00269,0.06027
2018-12-31,CPTY_00490,Retail,Retail Customer,0.2,N,N,.,N,FICO,713,2 - Minimal Risk,0.00068,0.04717
2018-12-31,CPTY_00003,Retail,Retail Customer,0.63,Y,Y,2018-05-01,N,FICO,510,6 - Special Mention,0.17221,0.37795
2018-12-31,CPTY_00370,Retail,Retail Customer,0.29,N,N,.,N,FICO,653,3 - Modest Risk,0.00024,0.0773
2018-12-31,CPTY_00297,Retail,Retail Customer,0.83,N,N,.,N,FICO,433,8 - Doubtful,0.01076,0.6866
2018-12-31,CPTY_00501,Retail,Retail Customer,0.13,N,N,.,N,FICO,794,1 - Largely Risk Free,0.00068,0.01289
2018-12-31,CPTY_00186,Retail,Retail Customer,0.29,N,N,.,N,FICO,699,3 - Modest Risk,0.01076,0.06667
2018-12-31,CPTY_00292,Retail,Retail Customer,0.51,N,N,.,N,FICO,565,5 - Additional Review,0.01076,0.28196
2018-12-31,CPTY_00172,Retail,Retail Customer,0.2,N,N,.,N,FICO,711,2 - Minimal Risk,0.00068,0.05608
2018-12-31,CPTY_00270,Retail,Retail Customer,0.41,N,N,.,N,FICO,641,4 - Bankable,0.01076,0.17377
2018-12-31,CPTY_00584,Retail,Retail Customer,0.8,N,Y,2016-07-15,N,FICO,418,8 - Doubtful,0.17221,0.80977
2018-12-31,CPTY_00056,Retail,Retail Customer,0.41,N,N,.,N,FICO,618,4 - Bankable,0.01076,0.13656
2018-12-31,CPTY_00544,Retail,Retail Customer,0.2,N,N,.,N,FICO,706,2 - Minimal Risk,0.00068,0.0542
2018-12-31,CPTY_00415,Retail,Retail Customer,0.19,N,N,.,N,FICO,738,2 - Minimal Risk,0.00024,0.04238
2018-12-31,CPTY_00435,Retail,Retail Customer,0.38,N,N,.,N,FICO,647,4 - Bankable,0.01076,0.1847
2018-12-31,CPTY_00411,Retail,Retail Customer,0.36,N,N,.,N,FICO,620,4 - Bankable,0.00068,0.10861
2018-12-31,CPTY_00421,Retail,Retail Customer,0.4,N,N,.,N,FICO,615,4 - Bankable,0.01076,0.16009
2018-12-31,CPTY_00522,Retail,Retail Customer,0.69,N,N,.,N,FICO,482,7 - Sub-Standard,0.04305,0.43955
2018-12-31,CPTY_00545,Retail,Retail Customer,0.4,N,N,.,N,FICO,650,4 - Bankable,0.01076,0.12356
2018-12-31,CPTY_00406,Retail,Retail Customer,0.5,N,N,.,N,FICO,581,5 - Additional Review,0.04305,0.19691
2018-12-31,CPTY_00546,Retail,Retail Customer,0.51,N,Y,2016-05-26,N,FICO,582,5 - Additional Review,0.04305,0.26316
2018-12-31,CPTY_00575,Retail,Retail Customer,0.09,N,N,.,N,FICO,792,1 - Largely Risk Free,0.00024,0.02392
2018-12-31,CPTY_00087,Retail,Retail Customer,0.21,N,N,.,N,FICO,736,2 - Minimal Risk,0.00068,0.0534
2018-12-31,CPTY_00034,Retail,Retail Customer,0.99,Y,Y,2018-05-01,Y,FICO,347,9 - Loss,0.04305,1
2018-12-31,CPTY_00228,Retail,Retail Customer,0.5,N,N,.,N,FICO,552,5 - Additional Review,0.04305,0.28422
2018-12-31,CPTY_00523,Retail,Retail Customer,0.4,N,N,.,N,FICO,642,4 - Bankable,0.01076,0.16284
2018-12-31,CPTY_00436,Retail,Retail Customer,0.2,N,N,.,N,FICO,703,2 - Minimal Risk,0.00068,0.04028
2018-12-31,CPTY_00418,Retail,Retail Customer,0.19,N,N,.,N,FICO,719,2 - Minimal Risk,0.00068,0.04093
2018-12-31,CPTY_00175,Retail,Retail Customer,0.67,Y,Y,2018-05-01,Y,FICO,455,7 - Sub-Standard,0.49351,0.44978
2018-12-31,CPTY_00179,Retail,Retail Customer,0.38,N,N,.,N,FICO,621,4 - Bankable,0.01076,0.15198
2018-12-31,CPTY_00583,Retail,Retail Customer,1.02,N,N,.,N,FICO,242,9 - Loss,0.00068,1
2018-12-31,CPTY_00429,Retail,Retail Customer,0.47,N,N,.,N,FICO,596,5 - Additional Review,0.04305,0.26185
2018-12-31,CPTY_00226,Retail,Retail Customer,0.78,N,N,.,N,FICO,450,8 - Doubtful,0.01076,0.521
2018-12-31,CPTY_00276,Retail,Retail Customer,0.1,N,N,.,N,FICO,777,1 - Largely Risk Free,0.00024,0.01958
2018-12-31,CPTY_00020,Retail,Retail Customer,0.18,N,N,.,N,FICO,739,2 - Minimal Risk,0.00068,0.04307
2018-12-31,CPTY_00430,Retail,Retail Customer,0.19,N,N,.,N,FICO,712,2 - Minimal Risk,0.00068,0.04175
2018-12-31,CPTY_00451,Retail,Retail Customer,0.46,N,N,.,N,FICO,590,5 - Additional Review,0.01076,0.21546
2018-12-31,CPTY_00009,Retail,Retail Customer,0.5,N,N,.,N,FICO,561,5 - Additional Review,0.00024,0.26474
2018-12-31,CPTY_00562,Retail,Retail Customer,0.7,N,N,.,N,FICO,477,7 - Sub-Standard,0.00024,0.56722
2018-12-31,CPTY_00484,Retail,Retail Customer,0.52,N,Y,2016-09-10,N,FICO,599,5 - Additional Review,0.04305,0.24147
2018-12-31,CPTY_00408,Retail,Retail Customer,0.09,N,N,.,N,FICO,791,1 - Largely Risk Free,0.00024,0.00752
2018-12-31,CPTY_00033,Retail,Retail Customer,0.72,N,N,.,N,FICO,498,7 - Sub-Standard,0.04305,0.33994
2018-12-31,CPTY_00409,Retail,Retail Customer,0.5,N,N,.,N,FICO,554,5 - Additional Review,0.04305,0.2256
2018-12-31,CPTY_00413,Retail,Retail Customer,0.22,N,N,.,N,FICO,729,2 - Minimal Risk,0.00068,0.05213
2018-12-31,CPTY_00055,Retail,Retail Customer,0.1,N,N,.,N,FICO,766,1 - Largely Risk Free,0.00024,0.01016
2018-12-31,CPTY_00452,Retail,Retail Customer,0.11,N,N,.,N,FICO,799,1 - Largely Risk Free,0.00024,0.02824
2018-12-31,CPTY_00005,Retail,Retail Customer,0.12,N,N,.,N,FICO,815,1 - Largely Risk Free,0.00024,0.0285
2018-12-31,CPTY_00552,Retail,Retail Customer,0.49,N,N,.,N,FICO,590,5 - Additional Review,0.01076,0.27776
2018-12-31,CPTY_00419,Retail,Retail Customer,0.51,N,N,.,N,FICO,562,5 - Additional Review,0.01076,0.19849
2018-12-31,CPTY_00293,Retail,Retail Customer,0.12,N,N,.,N,FICO,837,1 - Largely Risk Free,0.00068,0.03149
2018-12-31,CPTY_00261,Retail,Retail Customer,0.43,N,N,.,N,FICO,617,4 - Bankable,0.01076,0.12468
2018-12-31,CPTY_00444,Retail,Retail Customer,0.79,N,N,.,N,FICO,430,8 - Doubtful,0.01076,0.63699
2018-12-31,CPTY_00010,Retail,Retail Customer,0.49,N,N,.,N,FICO,596,5 - Additional Review,0.01076,0.20742
2018-12-31,CPTY_00553,Retail,Retail Customer,0.58,N,N,.,N,FICO,531,6 - Special Mention,0.00024,0.35381
2018-12-31,CPTY_00007,Retail,Retail Customer,0.26,N,N,.,N,FICO,747,2 - Minimal Risk,0.00024,0.05642
2018-12-31,CPTY_00291,Retail,Retail Customer,0.39,N,N,.,N,FICO,614,4 - Bankable,0.01076,0.18305
2018-12-31,CPTY_00524,Retail,Retail Customer,0.64,N,N,.,N,FICO,518,6 - Special Mention,0.04305,0.37419
2018-12-31,CPTY_00420,Retail,Retail Customer,0.51,N,N,.,N,FICO,564,5 - Additional Review,0.04305,0.2341
2018-12-31,CPTY_00312,Retail,Retail Customer,0.35,N,N,.,N,FICO,619,4 - Bankable,0.01076,0.15898
2018-12-31,CPTY_00311,Retail,Retail Customer,0.54,N,N,.,N,FICO,585,5 - Additional Review,0.04305,0.21225
2018-12-31,CPTY_00450,Retail,Retail Customer,0.5,N,N,.,N,FICO,595,5 - Additional Review,0.01076,0.20495
2018-12-31,CPTY_00426,Retail,Retail Customer,0.39,N,N,.,N,FICO,632,4 - Bankable,0.01076,0.1836
2018-12-31,CPTY_00541,Retail,Retail Customer,0.31,Y,Y,2018-05-01,N,FICO,689,3 - Modest Risk,0.01076,0.10106
2018-12-31,CPTY_00549,Retail,Retail Customer,0.38,Y,Y,2018-05-01,N,FICO,631,4 - Bankable,0.01076,0.10572
2018-12-31,CPTY_00162,Retail,Retail Customer,0.39,N,N,.,N,FICO,638,4 - Bankable,0.01076,0.17067
2018-12-31,CPTY_00485,Retail,Retail Customer,0.52,N,N,.,N,FICO,594,5 - Additional Review,0.01076,0.2629
2018-12-31,CPTY_00427,Retail,Retail Customer,0.2,N,N,.,N,FICO,704,2 - Minimal Risk,0.00068,0.04895
2018-12-31,CPTY_00456,Retail,Retail Customer,0.2,N,N,.,N,FICO,700,2 - Minimal Risk,0.00068,0.04251
2018-12-31,CPTY_00542,Retail,Retail Customer,0.52,N,N,.,N,FICO,593,5 - Additional Review,0.01076,0.21417
2018-12-31,CPTY_00543,Retail,Retail Customer,0.1,N,N,.,N,FICO,832,1 - Largely Risk Free,0.00024,0.02928
2018-12-31,CPTY_00428,Retail,Retail Customer,0.61,N,N,.,N,FICO,541,6 - Special Mention,0.17221,0.36935
2018-12-31,CPTY_00521,Retail,Retail Customer,0.22,N,N,.,N,FICO,722,2 - Minimal Risk,0.00068,0.04324
2018-12-31,CPTY_00169,Retail,Retail Customer,0.38,N,N,.,N,FICO,634,4 - Bankable,0.01076,0.13279
2018-12-31,CPTY_00289,Retail,Retail Customer,0.8,N,N,.,N,FICO,407,8 - Doubtful,0.01076,0.55322
2018-12-31,CPTY_00241,Retail,Retail Customer,0.2,N,N,.,N,FICO,700,2 - Minimal Risk,0.00068,0.04346
2018-12-31,CPTY_00568,Retail,Retail Customer,0.48,N,N,.,N,FICO,561,5 - Additional Review,0.01076,0.25411
2018-12-31,CPTY_00091,Retail,Retail Customer,0.08,N,N,.,N,FICO,800,1 - Largely Risk Free,0.00024,0.01536
2018-12-31,CPTY_00081,Retail,Retail Customer,0.2,N,N,.,N,FICO,736,2 - Minimal Risk,0.00068,0.03737
2018-12-31,CPTY_00569,Retail,Retail Customer,0.53,N,N,.,N,FICO,573,5 - Additional Review,0.04305,0.21959
2018-12-31,CPTY_00457,Retail,Retail Customer,0.39,N,N,.,N,FICO,643,4 - Bankable,0.01076,0.14428
2018-12-31,CPTY_00412,Retail,Retail Customer,0.43,N,N,.,N,FICO,619,4 - Bankable,0.01076,0.17835
2018-12-31,CPTY_00174,Retail,Retail Customer,0.37,N,N,.,N,FICO,641,4 - Bankable,0.01076,0.11418
2018-12-31,CPTY_00113,Retail,Retail Customer,0.1,N,N,.,N,FICO,790,1 - Largely Risk Free,0.00024,0.02105
2018-12-31,CPTY_00243,Retail,Retail Customer,0.85,Y,Y,2018-05-01,Y,FICO,439,8 - Doubtful,0.04305,0.60896
2018-12-31,CPTY_00455,Retail,Retail Customer,0.14,N,N,.,N,FICO,819,1 - Largely Risk Free,0.00024,0.01282
2018-12-31,CPTY_00554,Retail,Retail Customer,0.09,N,N,.,N,FICO,758,1 - Largely Risk Free,0.00024,0.02665
2018-12-31,CPTY_00434,Retail,Retail Customer,0.52,N,N,.,N,FICO,584,5 - Additional Review,0.04305,0.19014
2018-12-31,CPTY_00416,Retail,Retail Customer,0.4,N,N,.,N,FICO,631,4 - Bankable,0.01076,0.10948
2018-12-31,CPTY_00486,Retail,Retail Customer,0.1,N,N,.,N,FICO,802,1 - Largely Risk Free,0.00068,0.00757
2018-12-31,CPTY_00353,Retail,Retail Customer,0.4,N,N,.,N,FICO,626,4 - Bankable,0.01076,0.13561
2018-12-31,CPTY_00550,Retail,Retail Customer,0.4,N,N,.,N,FICO,621,4 - Bankable,0.01076,0.14912
2018-12-31,CPTY_00547,Retail,Retail Customer,0.44,N,N,.,N,FICO,604,4 - Bankable,0.01076,0.17907
2018-12-31,CPTY_00431,Retail,Retail Customer,0.85,N,N,.,N,FICO,416,8 - Doubtful,0.01076,0.56496
2018-12-31,CPTY_00432,Retail,Retail Customer,0.4,N,N,.,N,FICO,650,4 - Bankable,0.00024,0.17799
2018-12-31,CPTY_00006,Retail,Retail Customer,0.39,N,N,.,N,FICO,613,4 - Bankable,0.00068,0.1653
2018-12-31,CPTY_00060,Retail,Retail Customer,0.81,N,Y,2017-01-27,N,FICO,403,8 - Doubtful,0.04305,0.6866
2018-12-31,CPTY_00220,Retail,Retail Customer,0.68,N,N,.,N,FICO,464,7 - Sub-Standard,0.17221,0.34473
2018-12-31,CPTY_00433,Retail,Retail Customer,0.29,N,N,.,N,FICO,699,3 - Modest Risk,0.04305,0.09916
2018-12-31,CPTY_00184,Retail,Retail Customer,0.39,N,N,.,N,FICO,645,4 - Bankable,0.01076,0.14414
2018-12-31,CPTY_00548,Retail,Retail Customer,0.41,N,N,.,N,FICO,619,4 - Bankable,0.01076,0.1403
2018-12-31,CPTY_00520,Retail,Retail Customer,0.5,N,N,.,N,FICO,592,5 - Additional Review,0.04305,0.23955
2018-12-31,CPTY_00008,Retail,Retail Customer,0.39,N,N,.,N,FICO,623,4 - Bankable,0.01076,0.14072
2019-01-31,CPTY_01543,Commercial,Manufacturing,0.41,Y,Y,2018-06-01,N,S&P,BBB,4 - Bankable,0.01076,0.17871
2019-01-31,CPTY_00740,Commercial,Manufacturing,0.09,Y,Y,2018-06-01,Y,S&P,AAA,1 - Largely Risk Free,0.00024,0.03099
2019-01-31,CPTY_01274,Commercial,Manufacturing,0.8,Y,Y,2018-06-01,Y,S&P,CC,8 - Doubtful,0.04305,0.72181
2019-01-31,CPTY_00990,Commercial,Manufacturing,0.42,Y,Y,2018-06-01,Y,S&P,BBB,4 - Bankable,0.01076,0.14588
2019-01-31,CPTY_01690,Commercial,Manufacturing,0.53,N,Y,2017-09-03,N,S&P,BB,5 - Additional Review,0.04305,0.2728
2019-01-31,CPTY_01808,Commercial,Manufacturing,0.51,Y,Y,2018-06-01,Y,S&P,BB,5 - Additional Review,0.04305,0.26448
2019-01-31,CPTY_01639,Commercial,Manufacturing,0.62,Y,Y,2018-06-01,N,S&P,B,6 - Special Mention,0.04305,0.3468
2019-01-31,CPTY_01640,Commercial,Manufacturing,0.61,Y,Y,2018-06-01,Y,S&P,B,6 - Special Mention,0.17221,0.34889
2019-01-31,CPTY_01641,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11025
2019-01-31,CPTY_01642,Commercial,Manufacturing,0.79,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.64468
2019-01-31,CPTY_01813,Commercial,Manufacturing,0.81,Y,Y,2018-06-01,N,S&P,CC,8 - Doubtful,0.17221,0.7423
2019-01-31,CPTY_01508,Commercial,Manufacturing,0.28,Y,Y,2018-06-01,Y,S&P,A,3 - Modest Risk,0.01076,0.09518
2019-01-31,CPTY_01425,Commercial,Manufacturing,0.41,Y,Y,2018-06-01,N,S&P,BBB,4 - Bankable,0.01076,0.11908
2019-01-31,CPTY_01036,Commercial,Manufacturing,0.41,Y,Y,2018-06-01,N,S&P,BBB,4 - Bankable,0.01076,0.14313
2019-01-31,CPTY_00660,Commercial,Manufacturing,0.61,Y,Y,2018-06-01,Y,S&P,B,6 - Special Mention,0.04305,0.36678
2019-01-31,CPTY_01709,Commercial,Manufacturing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04251
2019-01-31,CPTY_00825,Commercial,Manufacturing,0.61,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.34924
2019-01-31,CPTY_01493,Commercial,Manufacturing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.2865
2019-01-31,CPTY_01275,Commercial,Manufacturing,0.58,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.34646
2019-01-31,CPTY_00805,Commercial,Manufacturing,0.72,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.48627
2019-01-31,CPTY_00953,Commercial,Manufacturing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03722
2019-01-31,CPTY_01644,Commercial,Manufacturing,0.07,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.00881
2019-01-31,CPTY_01337,Commercial,Manufacturing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.04305,0.15062
2019-01-31,CPTY_00813,Commercial,Manufacturing,0.33,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.06457
2019-01-31,CPTY_01126,Commercial,Manufacturing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18619
2019-01-31,CPTY_01224,Commercial,Manufacturing,0.12,Y,Y,2018-06-01,Y,S&P,AAA,1 - Largely Risk Free,0.00024,0.01025
2019-01-31,CPTY_00766,Commercial,Manufacturing,0.53,Y,Y,2018-06-01,Y,S&P,BB,5 - Additional Review,0.04305,0.28365
2019-01-31,CPTY_01559,Commercial,Manufacturing,0.99,Y,Y,2018-06-01,Y,S&P,D,9 - Loss,0.17221,1
2019-01-31,CPTY_01276,Commercial,Manufacturing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.22069
2019-01-31,CPTY_01277,Commercial,Manufacturing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04376
2019-01-31,CPTY_01631,Commercial,Manufacturing,0.29,Y,Y,2018-06-01,N,S&P,A,3 - Modest Risk,0.01076,0.08062
2019-01-31,CPTY_01267,Commercial,Manufacturing,0.31,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.06898
2019-01-31,CPTY_01210,Commercial,Manufacturing,0.72,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.3475
2019-01-31,CPTY_00743,Commercial,Manufacturing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02331
2019-01-31,CPTY_01646,Commercial,Manufacturing,0.07,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.03301
2019-01-31,CPTY_01647,Commercial,Manufacturing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14213
2019-01-31,CPTY_01279,Commercial,Manufacturing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.01212
2019-01-31,CPTY_01697,Commercial,Manufacturing,0.44,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10981
2019-01-31,CPTY_01324,Commercial,Manufacturing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0429
2019-01-31,CPTY_01161,Commercial,Manufacturing,0.72,Y,Y,2018-06-01,Y,S&P,CCC,7 - Sub-Standard,0.17221,0.30331
2019-01-31,CPTY_01649,Commercial,Manufacturing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05187
2019-01-31,CPTY_01325,Commercial,Manufacturing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1299
2019-01-31,CPTY_01494,Commercial,Manufacturing,0.37,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18123
2019-01-31,CPTY_00979,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1071
2019-01-31,CPTY_01700,Commercial,Manufacturing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.23979
2019-01-31,CPTY_01284,Commercial,Manufacturing,0.59,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.35916
2019-01-31,CPTY_01653,Commercial,Manufacturing,0.25,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0475
2019-01-31,CPTY_01654,Commercial,Manufacturing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.02385
2019-01-31,CPTY_00625,Commercial,Manufacturing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1396
2019-01-31,CPTY_00887,Commercial,Manufacturing,0.15,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03604
2019-01-31,CPTY_00610,Commercial,Manufacturing,0.59,N,N,.,N,S&P,B,6 - Special Mention,0.17221,0.40052
2019-01-31,CPTY_01285,Commercial,Manufacturing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.2674
2019-01-31,CPTY_00736,Commercial,Manufacturing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.04305,0.06843
2019-01-31,CPTY_00654,Commercial,Manufacturing,0.58,N,Y,2016-11-10,N,S&P,B,6 - Special Mention,0.17221,0.36972
2019-01-31,CPTY_01655,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.00024,0.1312
2019-01-31,CPTY_00755,Commercial,Manufacturing,0.37,Y,Y,2018-06-01,Y,S&P,BBB,4 - Bankable,0.04305,0.11136
2019-01-31,CPTY_01495,Commercial,Manufacturing,0.62,N,N,.,N,S&P,B,6 - Special Mention,0.17221,0.34889
2019-01-31,CPTY_01024,Commercial,Manufacturing,0.58,Y,Y,2018-06-01,Y,S&P,B,6 - Special Mention,0.17221,0.39259
2019-01-31,CPTY_01286,Commercial,Manufacturing,0.06,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.0209
2019-01-31,CPTY_01398,Commercial,Manufacturing,0.49,Y,Y,2018-06-01,Y,S&P,BB,5 - Additional Review,0.04305,0.24196
2019-01-31,CPTY_01815,Commercial,Manufacturing,0.07,Y,Y,2018-06-01,Y,S&P,AAA,1 - Largely Risk Free,0.00024,0.01765
2019-01-31,CPTY_00714,Commercial,Manufacturing,0.61,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.36313
2019-01-31,CPTY_01051,Commercial,Manufacturing,0.42,Y,Y,2018-06-01,Y,S&P,BBB,4 - Bankable,0.01076,0.13173
2019-01-31,CPTY_01404,Commercial,Manufacturing,0.29,Y,Y,2018-06-01,Y,S&P,A,3 - Modest Risk,0.00269,0.09
2019-01-31,CPTY_01287,Commercial,Manufacturing,0.59,Y,Y,2018-06-01,Y,S&P,B,6 - Special Mention,0.01076,0.38713
2019-01-31,CPTY_01658,Commercial,Manufacturing,0.39,Y,Y,2018-06-01,Y,S&P,BBB,4 - Bankable,0.01076,0.10477
2019-01-31,CPTY_00606,Commercial,Manufacturing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00945
2019-01-31,CPTY_00822,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12644
2019-01-31,CPTY_00640,Commercial,Manufacturing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03755
2019-01-31,CPTY_01636,Commercial,Manufacturing,0.6,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.37232
2019-01-31,CPTY_00758,Commercial,Manufacturing,0.25,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.08883
2019-01-31,CPTY_01660,Commercial,Manufacturing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04372
2019-01-31,CPTY_01661,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14867
2019-01-31,CPTY_01662,Commercial,Manufacturing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04028
2019-01-31,CPTY_01082,Commercial,Manufacturing,0.54,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.20271
2019-01-31,CPTY_01405,Commercial,Manufacturing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11848
2019-01-31,CPTY_00815,Commercial,Manufacturing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.20951
2019-01-31,CPTY_00981,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13561
2019-01-31,CPTY_00819,Commercial,Manufacturing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.25564
2019-01-31,CPTY_01056,Commercial,Manufacturing,0.41,N,Y,2013-10-25,N,S&P,BBB,4 - Bankable,0.04305,0.15274
2019-01-31,CPTY_01329,Commercial,Manufacturing,0.72,Y,Y,2018-06-01,N,S&P,CCC,7 - Sub-Standard,0.04305,0.42359
2019-01-31,CPTY_01294,Commercial,Manufacturing,0.6,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.3918
2019-01-31,CPTY_01223,Commercial,Manufacturing,0.82,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.81873
2019-01-31,CPTY_01665,Commercial,Manufacturing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.23131
2019-01-31,CPTY_01667,Commercial,Manufacturing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.01076,0.04146
2019-01-31,CPTY_00648,Commercial,Manufacturing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.20169
2019-01-31,CPTY_01272,Commercial,Manufacturing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03508
2019-01-31,CPTY_01668,Commercial,Manufacturing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13399
2019-01-31,CPTY_00747,Commercial,Manufacturing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.03178
2019-01-31,CPTY_01327,Commercial,Manufacturing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10774
2019-01-31,CPTY_00820,Commercial,Manufacturing,0.39,N,Y,2018-03-27,N,S&P,BBB,4 - Bankable,0.04305,0.17552
2019-01-31,CPTY_01132,Commercial,Manufacturing,0.61,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.35558
2019-01-31,CPTY_00733,Commercial,Manufacturing,0.48,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.23016
2019-01-31,CPTY_00731,Commercial,Manufacturing,0.61,N,N,.,N,S&P,B,6 - Special Mention,0.17221,0.36568
2019-01-31,CPTY_01299,Commercial,Manufacturing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05442
2019-01-31,CPTY_01409,Commercial,Manufacturing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.03187
2019-01-31,CPTY_01672,Commercial,Manufacturing,0.47,N,Y,2017-08-30,N,S&P,BB,5 - Additional Review,0.04305,0.25924
2019-01-31,CPTY_00999,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1085
2019-01-31,CPTY_00749,Commercial,Manufacturing,0.24,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.08848
2019-01-31,CPTY_01434,Commercial,Manufacturing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10362
2019-01-31,CPTY_01086,Commercial,Manufacturing,0.49,N,Y,2017-09-25,N,S&P,BB,5 - Additional Review,0.04305,0.27859
2019-01-31,CPTY_00916,Commercial,Manufacturing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16948
2019-01-31,CPTY_01154,Commercial,Manufacturing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.21438
2019-01-31,CPTY_01151,Commercial,Manufacturing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.00863
2019-01-31,CPTY_01816,Commercial,Manufacturing,1.01,N,N,.,N,S&P,D,9 - Loss,0.04305,1
2019-01-31,CPTY_00748,Commercial,Manufacturing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.05913
2019-01-31,CPTY_00689,Commercial,Manufacturing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05415
2019-01-31,CPTY_01414,Commercial,Manufacturing,0.36,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12899
2019-01-31,CPTY_01504,Commercial,Manufacturing,0.64,Y,Y,2018-06-01,N,S&P,B,6 - Special Mention,0.04305,0.39614
2019-01-31,CPTY_01323,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15017
2019-01-31,CPTY_01070,Commercial,Manufacturing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01895
2019-01-31,CPTY_01305,Commercial,Manufacturing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14399
2019-01-31,CPTY_00673,Commercial,Manufacturing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12964
2019-01-31,CPTY_01087,Commercial,Manufacturing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16729
2019-01-31,CPTY_00772,Commercial,Manufacturing,0.34,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.06714
2019-01-31,CPTY_01675,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17746
2019-01-31,CPTY_01307,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11025
2019-01-31,CPTY_01678,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.00024,0.11943
2019-01-31,CPTY_00796,Commercial,Manufacturing,0.49,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.23955
2019-01-31,CPTY_01218,Commercial,Manufacturing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.20372
2019-01-31,CPTY_01552,Commercial,Manufacturing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15244
2019-01-31,CPTY_01415,Commercial,Manufacturing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.10056
2019-01-31,CPTY_01505,Commercial,Manufacturing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01657
2019-01-31,CPTY_00591,Commercial,Manufacturing,0.39,Y,Y,2018-06-01,Y,S&P,BBB,4 - Bankable,0.01076,0.14675
2019-01-31,CPTY_01418,Commercial,Manufacturing,0.42,Y,Y,2018-06-01,N,S&P,BBB,4 - Bankable,0.00024,0.15062
2019-01-31,CPTY_00934,Commercial,Manufacturing,0.44,N,Y,2016-04-24,N,S&P,BB,5 - Additional Review,0.04305,0.22673
2019-01-31,CPTY_00725,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12369
2019-01-31,CPTY_01069,Commercial,Manufacturing,0.15,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01677
2019-01-31,CPTY_01817,Commercial,Manufacturing,0.63,Y,Y,2018-06-01,N,S&P,B,6 - Special Mention,0.17221,0.38713
2019-01-31,CPTY_00655,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11406
2019-01-31,CPTY_01553,Commercial,Manufacturing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.21937
2019-01-31,CPTY_01682,Commercial,Manufacturing,0.72,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.31854
2019-01-31,CPTY_01447,Commercial,Manufacturing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02373
2019-01-31,CPTY_00605,Commercial,Manufacturing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.26767
2019-01-31,CPTY_01713,Commercial,Manufacturing,0.31,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.07847
2019-01-31,CPTY_00741,Commercial,Manufacturing,0.53,Y,Y,2018-06-01,Y,S&P,BB,5 - Additional Review,0.04305,0.28679
2019-01-31,CPTY_00782,Commercial,Manufacturing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00772
2019-01-31,CPTY_01818,Commercial,Manufacturing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.12003
2019-01-31,CPTY_01686,Commercial,Manufacturing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00948
2019-01-31,CPTY_00973,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13779
2019-01-31,CPTY_01219,Commercial,Manufacturing,0.06,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01699
2019-01-31,CPTY_01422,Commercial,Manufacturing,0.53,N,N,.,N,S&P,BB,5 - Additional Review,0.00024,0.2114
2019-01-31,CPTY_00727,Commercial,Manufacturing,0.31,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.06788
2019-01-31,CPTY_01169,Commercial,Manufacturing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.042
2019-01-31,CPTY_00959,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14957
2019-01-31,CPTY_00726,Commercial,Manufacturing,0.71,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.00068,0.37833
2019-01-31,CPTY_01313,Commercial,Manufacturing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18434
2019-01-31,CPTY_00996,Commercial,Manufacturing,0.48,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.19128
2019-01-31,CPTY_01820,Commercial,Manufacturing,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.03099
2019-01-31,CPTY_01809,Commercial,Manufacturing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03401
2019-01-31,CPTY_00642,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1705
2019-01-31,CPTY_01694,Commercial,Manufacturing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.2146
2019-01-31,CPTY_00994,Commercial,Manufacturing,0.48,N,Y,2017-09-18,N,S&P,BB,5 - Additional Review,0.04305,0.24709
2019-01-31,CPTY_01822,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14602
2019-01-31,CPTY_01321,Commercial,Manufacturing,0.59,Y,Y,2018-06-01,N,S&P,B,6 - Special Mention,0.04305,0.3468
2019-01-31,CPTY_00745,Commercial,Manufacturing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00765
2019-01-31,CPTY_00809,Commercial,Manufacturing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0429
2019-01-31,CPTY_01160,Commercial,Manufacturing,0.32,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.06386
2019-01-31,CPTY_00765,Commercial,Manufacturing,0.63,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.36349
2019-01-31,CPTY_00998,Commercial,Manufacturing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.03047
2019-01-31,CPTY_00639,Commercial,Manufacturing,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01756
2019-01-31,CPTY_00851,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11384
2019-01-31,CPTY_00856,Commercial,Manufacturing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.00024,0.12809
2019-01-31,CPTY_01555,Commercial,Manufacturing,0.34,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.06829
2019-01-31,CPTY_01206,Commercial,Manufacturing,0.41,Y,Y,2018-06-01,Y,S&P,BBB,4 - Bankable,0.01076,0.15583
2019-01-31,CPTY_01421,Commercial,Manufacturing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.2348
2019-01-31,CPTY_01073,Commercial,Manufacturing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04196
2019-01-31,CPTY_01316,Commercial,Manufacturing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.23247
2019-01-31,CPTY_01317,Commercial,Manufacturing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.05069
2019-01-31,CPTY_00947,Commercial,Manufacturing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00834
2019-01-31,CPTY_01319,Commercial,Manufacturing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01586
2019-01-31,CPTY_01426,Commercial,Manufacturing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1272
2019-01-31,CPTY_01429,Commercial,Manufacturing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01039
2019-01-31,CPTY_01701,Commercial,Manufacturing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.00068,0.25233
2019-01-31,CPTY_00951,Commercial,Manufacturing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02785
2019-01-31,CPTY_00598,Commercial,Manufacturing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01968
2019-01-31,CPTY_01331,Commercial,Manufacturing,0.37,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12556
2019-01-31,CPTY_01810,Commercial,Manufacturing,0.49,Y,Y,2018-06-01,N,S&P,BB,5 - Additional Review,0.04305,0.20951
2019-01-31,CPTY_00908,Commercial,Manufacturing,0.32,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.08192
2019-01-31,CPTY_01718,Commercial,Manufacturing,0.29,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.0932
2019-01-31,CPTY_01721,Commercial,Manufacturing,0.79,N,Y,2015-07-03,N,S&P,CC,8 - Doubtful,0.17221,0.72325
2019-01-31,CPTY_01811,Commercial,Manufacturing,0.36,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14299
2019-01-31,CPTY_00735,Commercial,Manufacturing,0.83,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.63002
2019-01-31,CPTY_00769,Commercial,Manufacturing,0.49,Y,Y,2018-06-01,N,S&P,BB,5 - Additional Review,0.04305,0.2828
2019-01-31,CPTY_00761,Commercial,Manufacturing,0.52,Y,Y,2018-06-01,Y,S&P,BB,5 - Additional Review,0.04305,0.19128
2019-01-31,CPTY_01720,Commercial,Manufacturing,0.48,N,Y,2016-06-08,N,S&P,BB,5 - Additional Review,0.04305,0.22809
2019-01-31,CPTY_01563,Commercial,Manufacturing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10678
2019-01-31,CPTY_01176,Commercial,Manufacturing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.23504
2019-01-31,CPTY_01492,Commercial,Manufacturing,0.45,Y,Y,2018-06-01,Y,S&P,BBB,4 - Bankable,0.01076,0.12771
2019-01-31,CPTY_01428,Commercial,Manufacturing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15739
2019-01-31,CPTY_00616,Commercial,Manufacturing,0.31,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.09386
2019-01-31,CPTY_00786,Commercial,Manufacturing,0.82,Y,Y,2018-06-01,N,S&P,CC,8 - Doubtful,0.17221,0.81302
2019-01-31,CPTY_00653,Commercial,Manufacturing,0.81,N,N,.,N,S&P,CC,8 - Doubtful,0.00068,0.72906
2019-01-31,CPTY_01433,Commercial,Manufacturing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04247
2019-01-31,CPTY_00768,Commercial,Manufacturing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.0216
2019-01-31,CPTY_00551,Retail,Retail Customer,0.11,N,N,.,N,FICO,778,1 - Largely Risk Free,0.00068,0.01578
2019-01-31,CPTY_01273,Commercial,Real Estate and Rental and Leasing,0.31,Y,Y,2018-06-01,N,S&P,A,3 - Modest Risk,0.00269,0.06761
2019-01-31,CPTY_01400,Commercial,Real Estate and Rental and Leasing,0.17,Y,Y,2018-06-01,Y,S&P,AA,2 - Minimal Risk,0.00269,0.05415
2019-01-31,CPTY_01638,Commercial,Real Estate and Rental and Leasing,0.77,Y,Y,2018-06-01,N,S&P,CC,8 - Doubtful,0.01076,0.66299
2019-01-31,CPTY_01554,Commercial,Real Estate and Rental and Leasing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.0155
2019-01-31,CPTY_01689,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.05693
2019-01-31,CPTY_01156,Commercial,Real Estate and Rental and Leasing,0.24,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05404
2019-01-31,CPTY_00752,Commercial,Real Estate and Rental and Leasing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.02394
2019-01-31,CPTY_00832,Commercial,Real Estate and Rental and Leasing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03554
2019-01-31,CPTY_01010,Commercial,Real Estate and Rental and Leasing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.2564
2019-01-31,CPTY_01812,Commercial,Real Estate and Rental and Leasing,0.58,Y,Y,2018-06-01,N,S&P,B,6 - Special Mention,0.04305,0.38713
2019-01-31,CPTY_00882,Commercial,Real Estate and Rental and Leasing,0.26,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.067
2019-01-31,CPTY_01402,Commercial,Real Estate and Rental and Leasing,0.36,Y,Y,2018-06-01,N,S&P,BBB,4 - Bankable,0.01076,0.18507
2019-01-31,CPTY_01165,Commercial,Real Estate and Rental and Leasing,0.36,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17817
2019-01-31,CPTY_01711,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.02916
2019-01-31,CPTY_01139,Commercial,Real Estate and Rental and Leasing,0.28,Y,Y,2018-06-01,Y,S&P,A,3 - Modest Risk,0.04305,0.05784
2019-01-31,CPTY_01724,Commercial,Real Estate and Rental and Leasing,0.63,Y,Y,2018-06-01,Y,S&P,B,6 - Special Mention,0.17221,0.40052
2019-01-31,CPTY_01338,Commercial,Real Estate and Rental and Leasing,0.78,Y,Y,2018-06-01,Y,S&P,CC,8 - Doubtful,0.00269,0.81383
2019-01-31,CPTY_00923,Commercial,Real Estate and Rental and Leasing,0.65,Y,Y,2018-06-01,Y,S&P,B,6 - Special Mention,0.17221,0.38366
2019-01-31,CPTY_01225,Commercial,Real Estate and Rental and Leasing,0.09,Y,Y,2018-06-01,Y,S&P,AAA,1 - Largely Risk Free,0.00024,0.01293
2019-01-31,CPTY_01431,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.05464
2019-01-31,CPTY_00890,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03812
2019-01-31,CPTY_01432,Commercial,Real Estate and Rental and Leasing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00906
2019-01-31,CPTY_01435,Commercial,Real Estate and Rental and Leasing,0.44,N,N,.,N,S&P,BBB,4 - Bankable,0.00024,0.14471
2019-01-31,CPTY_01016,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04163
2019-01-31,CPTY_00989,Commercial,Real Estate and Rental and Leasing,0.68,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.00068,0.41853
2019-01-31,CPTY_01438,Commercial,Real Estate and Rental and Leasing,0.07,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.015
2019-01-31,CPTY_00798,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03858
2019-01-31,CPTY_01441,Commercial,Real Estate and Rental and Leasing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02219
2019-01-31,CPTY_00676,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05172
2019-01-31,CPTY_01442,Commercial,Real Estate and Rental and Leasing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02092
2019-01-31,CPTY_00720,Commercial,Real Estate and Rental and Leasing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03526
2019-01-31,CPTY_01444,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00843
2019-01-31,CPTY_00919,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05541
2019-01-31,CPTY_01446,Commercial,Real Estate and Rental and Leasing,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.0321
2019-01-31,CPTY_00767,Commercial,Real Estate and Rental and Leasing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14086
2019-01-31,CPTY_01448,Commercial,Real Estate and Rental and Leasing,0.16,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05069
2019-01-31,CPTY_00898,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13173
2019-01-31,CPTY_01451,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04736
2019-01-31,CPTY_00830,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15818
2019-01-31,CPTY_01452,Commercial,Real Estate and Rental and Leasing,0.58,N,N,.,N,S&P,B,6 - Special Mention,0.00024,0.34611
2019-01-31,CPTY_00687,Commercial,Real Estate and Rental and Leasing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04537
2019-01-31,CPTY_01270,Commercial,Real Estate and Rental and Leasing,0.33,Y,Y,2018-06-01,N,S&P,A,3 - Modest Risk,0.01076,0.09996
2019-01-31,CPTY_01698,Commercial,Real Estate and Rental and Leasing,0.6,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.35594
2019-01-31,CPTY_01648,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05659
2019-01-31,CPTY_01280,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.14897
2019-01-31,CPTY_01074,Commercial,Real Estate and Rental and Leasing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.23247
2019-01-31,CPTY_01633,Commercial,Real Estate and Rental and Leasing,0.31,Y,Y,2018-06-01,Y,S&P,A,3 - Modest Risk,0.00269,0.06574
2019-01-31,CPTY_01283,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05287
2019-01-31,CPTY_01212,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04028
2019-01-31,CPTY_00737,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13107
2019-01-31,CPTY_01144,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.08184
2019-01-31,CPTY_01000,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.04247
2019-01-31,CPTY_00837,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14399
2019-01-31,CPTY_01028,Commercial,Real Estate and Rental and Leasing,0.53,Y,Y,2018-06-01,Y,S&P,BB,5 - Additional Review,0.04305,0.23575
2019-01-31,CPTY_01046,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12443
2019-01-31,CPTY_01057,Commercial,Real Estate and Rental and Leasing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00858
2019-01-31,CPTY_01565,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04209
2019-01-31,CPTY_01729,Commercial,Real Estate and Rental and Leasing,0.58,N,Y,2017-01-10,N,S&P,B,6 - Special Mention,0.17221,0.34959
2019-01-31,CPTY_01174,Commercial,Real Estate and Rental and Leasing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11707
2019-01-31,CPTY_01722,Commercial,Real Estate and Rental and Leasing,0.71,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.04305,0.32046
2019-01-31,CPTY_01336,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04217
2019-01-31,CPTY_00961,Commercial,Real Estate and Rental and Leasing,0.81,N,N,.,N,S&P,CC,8 - Doubtful,0.04305,0.75805
2019-01-31,CPTY_01170,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.0125
2019-01-31,CPTY_01227,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01701
2019-01-31,CPTY_01022,Commercial,Real Estate and Rental and Leasing,0.8,N,N,.,N,S&P,CC,8 - Doubtful,0.00024,0.61631
2019-01-31,CPTY_00592,Commercial,Real Estate and Rental and Leasing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.19263
2019-01-31,CPTY_01207,Commercial,Real Estate and Rental and Leasing,0.38,Y,Y,2018-06-01,Y,S&P,BBB,4 - Bankable,0.01076,0.11464
2019-01-31,CPTY_01546,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0548
2019-01-31,CPTY_01049,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17482
2019-01-31,CPTY_00650,Commercial,Real Estate and Rental and Leasing,0.41,Y,Y,2018-06-01,Y,S&P,BBB,4 - Bankable,0.01076,0.10529
2019-01-31,CPTY_01657,Commercial,Real Estate and Rental and Leasing,0.32,Y,Y,2018-06-01,Y,S&P,A,3 - Modest Risk,0.00269,0.07638
2019-01-31,CPTY_00607,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11192
2019-01-31,CPTY_01289,Commercial,Real Estate and Rental and Leasing,0.99,N,N,.,N,S&P,D,9 - Loss,0.00068,1
2019-01-31,CPTY_01512,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14927
2019-01-31,CPTY_00723,Commercial,Real Estate and Rental and Leasing,0.29,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.09857
2019-01-31,CPTY_01708,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13588
2019-01-31,CPTY_00814,Commercial,Real Estate and Rental and Leasing,0.78,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.82037
2019-01-31,CPTY_01497,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15274
2019-01-31,CPTY_00644,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00871
2019-01-31,CPTY_01147,Commercial,Real Estate and Rental and Leasing,0.59,N,N,.,N,S&P,B,6 - Special Mention,0.04305,0.39972
2019-01-31,CPTY_01637,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16154
2019-01-31,CPTY_01292,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12631
2019-01-31,CPTY_01712,Commercial,Real Estate and Rental and Leasing,0.45,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14299
2019-01-31,CPTY_01054,Commercial,Real Estate and Rental and Leasing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.00068,0.20805
2019-01-31,CPTY_01148,Commercial,Real Estate and Rental and Leasing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.19632
2019-01-31,CPTY_01394,Commercial,Real Estate and Rental and Leasing,0.68,Y,Y,2018-06-01,N,S&P,CCC,7 - Sub-Standard,0.01076,0.36972
2019-01-31,CPTY_01093,Commercial,Real Estate and Rental and Leasing,0.7,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.3027
2019-01-31,CPTY_00781,Commercial,Real Estate and Rental and Leasing,0.21,N,Y,2013-11-18,N,S&P,AA,2 - Minimal Risk,0.04305,0.05208
2019-01-31,CPTY_01096,Commercial,Real Estate and Rental and Leasing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.02443
2019-01-31,CPTY_01725,Commercial,Real Estate and Rental and Leasing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.00068,0.28938
2019-01-31,CPTY_00906,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03554
2019-01-31,CPTY_01516,Commercial,Real Estate and Rental and Leasing,0.61,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.3879
2019-01-31,CPTY_00907,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04974
2019-01-31,CPTY_00693,Commercial,Real Estate and Rental and Leasing,0.49,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.26106
2019-01-31,CPTY_01517,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04675
2019-01-31,CPTY_00722,Commercial,Real Estate and Rental and Leasing,0.79,N,N,.,N,S&P,CC,8 - Doubtful,0.04305,0.78663
2019-01-31,CPTY_01728,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.12185
2019-01-31,CPTY_01171,Commercial,Real Estate and Rental and Leasing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.00024,0.14242
2019-01-31,CPTY_00773,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03789
2019-01-31,CPTY_00627,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.04251
2019-01-31,CPTY_00942,Commercial,Real Estate and Rental and Leasing,0.25,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04394
2019-01-31,CPTY_00875,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.01076,0.03797
2019-01-31,CPTY_01339,Commercial,Real Estate and Rental and Leasing,0.11,Y,Y,2018-06-01,Y,S&P,AAA,1 - Largely Risk Free,0.00024,0.01435
2019-01-31,CPTY_01332,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01082
2019-01-31,CPTY_00921,Commercial,Real Estate and Rental and Leasing,0.31,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.09054
2019-01-31,CPTY_00600,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1847
2019-01-31,CPTY_00760,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.09537
2019-01-31,CPTY_01509,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.01005
2019-01-31,CPTY_01498,Commercial,Real Estate and Rental and Leasing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0348
2019-01-31,CPTY_00836,Commercial,Real Estate and Rental and Leasing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.26901
2019-01-31,CPTY_01143,Commercial,Real Estate and Rental and Leasing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00751
2019-01-31,CPTY_00603,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.05973
2019-01-31,CPTY_00891,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03544
2019-01-31,CPTY_01407,Commercial,Real Estate and Rental and Leasing,1,N,N,.,N,S&P,D,9 - Loss,0.00024,1
2019-01-31,CPTY_01039,Commercial,Real Estate and Rental and Leasing,0.63,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.35594
2019-01-31,CPTY_01666,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03436
2019-01-31,CPTY_01295,Commercial,Real Estate and Rental and Leasing,0.08,Y,Y,2018-06-01,Y,S&P,AAA,1 - Largely Risk Free,0.00024,0.00846
2019-01-31,CPTY_00595,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12356
2019-01-31,CPTY_01006,Commercial,Real Estate and Rental and Leasing,0.26,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.06235
2019-01-31,CPTY_00664,Commercial,Real Estate and Rental and Leasing,0.97,Y,Y,2018-06-01,Y,S&P,D,9 - Loss,0.6,1
2019-01-31,CPTY_01506,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14942
2019-01-31,CPTY_01296,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16613
2019-01-31,CPTY_01500,Commercial,Real Estate and Rental and Leasing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01732
2019-01-31,CPTY_01298,Commercial,Real Estate and Rental and Leasing,0.6,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.38713
2019-01-31,CPTY_01548,Commercial,Real Estate and Rental and Leasing,0.31,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.07079
2019-01-31,CPTY_01479,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.00024,0.1836
2019-01-31,CPTY_00992,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1549
2019-01-31,CPTY_01371,Commercial,Real Estate and Rental and Leasing,0.08,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.0185
2019-01-31,CPTY_01669,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.03881
2019-01-31,CPTY_01271,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10614
2019-01-31,CPTY_01204,Commercial,Real Estate and Rental and Leasing,0.5,Y,Y,2018-06-01,N,S&P,BB,5 - Additional Review,0.04305,0.23039
2019-01-31,CPTY_01789,Commercial,Real Estate and Rental and Leasing,1.01,N,N,.,N,S&P,D,9 - Loss,0.01076,1
2019-01-31,CPTY_01790,Commercial,Real Estate and Rental and Leasing,0.37,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14428
2019-01-31,CPTY_00645,Commercial,Real Estate and Rental and Leasing,0.7,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.00024,0.55211
2019-01-31,CPTY_01384,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04221
2019-01-31,CPTY_01217,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.0803
2019-01-31,CPTY_01266,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00769
2019-01-31,CPTY_01791,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18415
2019-01-31,CPTY_01849,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.04994
2019-01-31,CPTY_01076,Commercial,Real Estate and Rental and Leasing,0.48,Y,Y,2018-06-01,N,S&P,BB,5 - Additional Review,0.04305,0.19014
2019-01-31,CPTY_00817,Commercial,Real Estate and Rental and Leasing,0.07,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01166
2019-01-31,CPTY_01781,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.11361
2019-01-31,CPTY_01475,Commercial,Real Estate and Rental and Leasing,0.53,Y,Y,2018-06-01,N,S&P,BB,5 - Additional Review,0.04305,0.23016
2019-01-31,CPTY_01476,Commercial,Real Estate and Rental and Leasing,0.96,N,N,.,N,S&P,D,9 - Loss,0.01076,1
2019-01-31,CPTY_00810,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.10036
2019-01-31,CPTY_01847,Commercial,Real Estate and Rental and Leasing,0.74,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.00068,0.57235
2019-01-31,CPTY_01782,Commercial,Real Estate and Rental and Leasing,0.3,Y,Y,2018-06-01,N,S&P,A,3 - Modest Risk,0.04305,0.06033
2019-01-31,CPTY_01239,Commercial,Real Estate and Rental and Leasing,0.5,Y,Y,2018-06-01,N,S&P,BB,5 - Additional Review,0.04305,0.2068
2019-01-31,CPTY_00700,Commercial,Real Estate and Rental and Leasing,0.46,Y,Y,2018-06-01,N,S&P,BB,5 - Additional Review,0.04305,0.26634
2019-01-31,CPTY_01088,Commercial,Real Estate and Rental and Leasing,0.31,Y,Y,2018-06-01,N,S&P,A,3 - Modest Risk,0.04305,0.05796
2019-01-31,CPTY_01013,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14442
2019-01-31,CPTY_00750,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04138
2019-01-31,CPTY_00623,Commercial,Real Estate and Rental and Leasing,0.57,N,Y,2014-03-19,N,S&P,B,6 - Special Mention,0.17221,0.37083
2019-01-31,CPTY_00734,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13642
2019-01-31,CPTY_01300,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01631
2019-01-31,CPTY_00602,Commercial,Real Estate and Rental and Leasing,0.51,Y,Y,2018-06-01,Y,S&P,BB,5 - Additional Review,0.04305,0.20805
2019-01-31,CPTY_00888,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05095
2019-01-31,CPTY_01673,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16009
2019-01-31,CPTY_01674,Commercial,Real Estate and Rental and Leasing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04012
2019-01-31,CPTY_01168,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04048
2019-01-31,CPTY_01304,Commercial,Real Estate and Rental and Leasing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.26158
2019-01-31,CPTY_01153,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0367
2019-01-31,CPTY_01503,Commercial,Real Estate and Rental and Leasing,0.5,N,Y,2017-10-24,N,S&P,BB,5 - Additional Review,0.04305,0.19691
2019-01-31,CPTY_01009,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01756
2019-01-31,CPTY_01001,Commercial,Real Estate and Rental and Leasing,0.51,Y,Y,2018-06-01,N,S&P,BB,5 - Additional Review,0.04305,0.24883
2019-01-31,CPTY_01370,Commercial,Real Estate and Rental and Leasing,0.52,Y,Y,2018-06-01,N,S&P,BB,5 - Additional Review,0.04305,0.19417
2019-01-31,CPTY_00853,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04076
2019-01-31,CPTY_01573,Commercial,Real Estate and Rental and Leasing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.00024,0.28996
2019-01-31,CPTY_01128,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05177
2019-01-31,CPTY_01719,Commercial,Real Estate and Rental and Leasing,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00777
2019-01-31,CPTY_01574,Commercial,Real Estate and Rental and Leasing,0.32,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.06634
2019-01-31,CPTY_01044,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12112
2019-01-31,CPTY_01041,Commercial,Real Estate and Rental and Leasing,0.36,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16713
2019-01-31,CPTY_01183,Commercial,Real Estate and Rental and Leasing,0.31,Y,Y,2018-06-01,Y,S&P,A,3 - Modest Risk,0.00269,0.07754
2019-01-31,CPTY_01783,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.14299
2019-01-31,CPTY_01053,Commercial,Real Estate and Rental and Leasing,0.79,N,N,.,N,S&P,CC,8 - Doubtful,0.00068,0.51376
2019-01-31,CPTY_00862,Commercial,Real Estate and Rental and Leasing,0.48,Y,Y,2018-06-01,N,S&P,BB,5 - Additional Review,0.04305,0.21056
2019-01-31,CPTY_01477,Commercial,Real Estate and Rental and Leasing,1.02,Y,Y,2018-06-01,N,S&P,D,9 - Loss,0.17221,1
2019-01-31,CPTY_01784,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.1085
2019-01-31,CPTY_01142,Commercial,Real Estate and Rental and Leasing,0.37,Y,Y,2018-06-01,Y,S&P,BBB,4 - Bankable,0.01076,0.13266
2019-01-31,CPTY_01007,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13766
2019-01-31,CPTY_01478,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05156
2019-01-31,CPTY_01345,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05508
2019-01-31,CPTY_00807,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.08233
2019-01-31,CPTY_01401,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04272
2019-01-31,CPTY_01785,Commercial,Real Estate and Rental and Leasing,0.29,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.06555
2019-01-31,CPTY_01575,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04121
2019-01-31,CPTY_01787,Commercial,Real Estate and Rental and Leasing,0.07,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01542
2019-01-31,CPTY_01788,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04213
2019-01-31,CPTY_01440,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12656
2019-01-31,CPTY_01677,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01556
2019-01-31,CPTY_01679,Commercial,Real Estate and Rental and Leasing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02375
2019-01-31,CPTY_01322,Commercial,Real Estate and Rental and Leasing,0.32,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.06254
2019-01-31,CPTY_01063,Commercial,Real Estate and Rental and Leasing,0.49,N,N,.,N,S&P,BB,5 - Additional Review,0.00024,0.24537
2019-01-31,CPTY_01417,Commercial,Real Estate and Rental and Leasing,0.43,Y,Y,2018-06-01,Y,S&P,BBB,4 - Bankable,0.01076,0.17853
2019-01-31,CPTY_00806,Commercial,Real Estate and Rental and Leasing,0.13,Y,Y,2018-06-01,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02771
2019-01-31,CPTY_00665,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15229
2019-01-31,CPTY_00678,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05156
2019-01-31,CPTY_01685,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02525
2019-01-31,CPTY_01687,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03561
2019-01-31,CPTY_01312,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.12087
2019-01-31,CPTY_00949,Commercial,Real Estate and Rental and Leasing,0.63,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.37307
2019-01-31,CPTY_01315,Commercial,Real Estate and Rental and Leasing,0.8,Y,Y,2018-06-01,N,S&P,CC,8 - Doubtful,0.17221,0.66431
2019-01-31,CPTY_01419,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01012
2019-01-31,CPTY_01309,Commercial,Real Estate and Rental and Leasing,0.29,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.08135
2019-01-31,CPTY_01310,Commercial,Real Estate and Rental and Leasing,0.78,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.59333
2019-01-31,CPTY_00659,Commercial,Real Estate and Rental and Leasing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.0201
2019-01-31,CPTY_01314,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.04268
2019-01-31,CPTY_01819,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00751
2019-01-31,CPTY_00754,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.01076,0.02244
2019-01-31,CPTY_01821,Commercial,Real Estate and Rental and Leasing,0.81,N,N,.,N,S&P,CC,8 - Doubtful,0.00068,0.58275
2019-01-31,CPTY_01222,Commercial,Real Estate and Rental and Leasing,0.68,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.48239
2019-01-31,CPTY_00880,Commercial,Real Estate and Rental and Leasing,0.98,N,N,.,N,S&P,D,9 - Loss,0.01076,1
2019-01-31,CPTY_01695,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05442
2019-01-31,CPTY_01149,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01891
2019-01-31,CPTY_01443,Commercial,Real Estate and Rental and Leasing,0.61,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.36059
2019-01-31,CPTY_00672,Commercial,Real Estate and Rental and Leasing,0.61,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.39495
2019-01-31,CPTY_01511,Commercial,Real Estate and Rental and Leasing,0.83,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.53848
2019-01-31,CPTY_01634,Commercial,Real Estate and Rental and Leasing,1.01,N,N,.,N,S&P,D,9 - Loss,0.01076,1
2019-01-31,CPTY_01710,Commercial,Real Estate and Rental and Leasing,0.24,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04633
2019-01-31,CPTY_01556,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03976
2019-01-31,CPTY_01691,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03964
2019-01-31,CPTY_01423,Commercial,Real Estate and Rental and Leasing,0.33,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.09642
2019-01-31,CPTY_00899,Commercial,Real Estate and Rental and Leasing,0.6,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.37419
2019-01-31,CPTY_00738,Commercial,Real Estate and Rental and Leasing,0.6,N,Y,2017-02-11,N,S&P,B,6 - Special Mention,0.17221,0.35665
2019-01-31,CPTY_01424,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18712
2019-01-31,CPTY_00647,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.04305,0.10828
2019-01-31,CPTY_01320,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01106
2019-01-31,CPTY_01510,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.03278
2019-01-31,CPTY_01439,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04167
2019-01-31,CPTY_00931,Commercial,Real Estate and Rental and Leasing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.25846
2019-01-31,CPTY_01162,Commercial,Real Estate and Rental and Leasing,1.04,N,N,.,N,S&P,D,9 - Loss,0.04305,1
2019-01-31,CPTY_01172,Commercial,Real Estate and Rental and Leasing,1.02,N,Y,2015-09-15,N,S&P,D,9 - Loss,0.17221,1
2019-01-31,CPTY_01699,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.14058
2019-01-31,CPTY_01430,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04213
2019-01-31,CPTY_00746,Commercial,Real Estate and Rental and Leasing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11836
2019-01-31,CPTY_00717,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04281
2019-01-31,CPTY_00724,Commercial,Real Estate and Rental and Leasing,0.32,N,N,.,N,S&P,A,3 - Modest Risk,0.04305,0.06148
2019-01-31,CPTY_01717,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17204
2019-01-31,CPTY_00715,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05552
2019-01-31,CPTY_01192,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01522
2019-01-31,CPTY_00620,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16613
2019-01-31,CPTY_01333,Commercial,Real Estate and Rental and Leasing,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.24561
2019-01-31,CPTY_01173,Commercial,Real Estate and Rental and Leasing,0.46,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.21161
2019-01-31,CPTY_01141,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.01076,0.03623
2019-01-31,CPTY_01828,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.03281
2019-01-31,CPTY_00824,Commercial,Real Estate and Rental and Leasing,0.81,N,Y,2015-04-17,N,S&P,CC,8 - Doubtful,0.04305,0.59037
2019-01-31,CPTY_01558,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04084
2019-01-31,CPTY_01706,Commercial,Real Estate and Rental and Leasing,0.59,Y,Y,2018-06-01,N,S&P,B,6 - Special Mention,0.17221,0.39972
2019-01-31,CPTY_01707,Commercial,Real Estate and Rental and Leasing,0.7,Y,Y,2018-06-01,Y,S&P,CCC,7 - Sub-Standard,0.17221,0.52361
2019-01-31,CPTY_01326,Commercial,Real Estate and Rental and Leasing,0.31,Y,Y,2018-06-01,Y,S&P,A,3 - Modest Risk,0.00269,0.07974
2019-01-31,CPTY_00847,Commercial,Real Estate and Rental and Leasing,0.6,Y,Y,2018-06-01,Y,S&P,B,6 - Special Mention,0.17221,0.37606
2019-01-31,CPTY_01226,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01362
2019-01-31,CPTY_01826,Commercial,Real Estate and Rental and Leasing,1,N,N,.,N,S&P,D,9 - Loss,0.00024,1
2019-01-31,CPTY_00903,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10477
2019-01-31,CPTY_01335,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01449
2019-01-31,CPTY_00821,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00726
2019-01-31,CPTY_00913,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02492
2019-01-31,CPTY_01399,Commercial,Real Estate and Rental and Leasing,0.31,Y,Y,2018-06-01,N,S&P,A,3 - Modest Risk,0.00269,0.076
2019-01-31,CPTY_01715,Commercial,Real Estate and Rental and Leasing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04568
2019-01-31,CPTY_00897,Commercial,Real Estate and Rental and Leasing,0.82,N,N,.,N,S&P,CC,8 - Doubtful,0.00068,0.68455
2019-01-31,CPTY_01125,Commercial,Real Estate and Rental and Leasing,0.69,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.00068,0.44933
2019-01-31,CPTY_01341,Commercial,Real Estate and Rental and Leasing,0.25,Y,Y,2018-06-01,N,S&P,A,3 - Modest Risk,0.00269,0.06198
2019-01-31,CPTY_01737,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.03271
2019-01-31,CPTY_01159,Commercial,Real Estate and Rental and Leasing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04425
2019-01-31,CPTY_01453,Commercial,Real Estate and Rental and Leasing,0.29,Y,Y,2018-06-01,N,S&P,A,3 - Modest Risk,0.01076,0.09936
2019-01-31,CPTY_01201,Commercial,Real Estate and Rental and Leasing,0.09,Y,Y,2018-06-01,Y,S&P,AAA,1 - Largely Risk Free,0.00024,0.00733
2019-01-31,CPTY_00927,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04793
2019-01-31,CPTY_01455,Commercial,Real Estate and Rental and Leasing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.03565
2019-01-31,CPTY_00872,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05271
2019-01-31,CPTY_00924,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03916
2019-01-31,CPTY_00894,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03839
2019-01-31,CPTY_01457,Commercial,Real Estate and Rental and Leasing,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00883
2019-01-31,CPTY_01463,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04817
2019-01-31,CPTY_00848,Commercial,Real Estate and Rental and Leasing,0.16,N,N,.,N,S&P,AA,2 - Minimal Risk,0.01076,0.03601
2019-01-31,CPTY_01340,Commercial,Real Estate and Rental and Leasing,0.45,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11452
2019-01-31,CPTY_01342,Commercial,Real Estate and Rental and Leasing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04196
2019-01-31,CPTY_01731,Commercial,Real Estate and Rental and Leasing,0.18,Y,Y,2018-06-01,N,S&P,AA,2 - Minimal Risk,0.00269,0.04196
2019-01-31,CPTY_01343,Commercial,Real Estate and Rental and Leasing,0.24,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05074
2019-01-31,CPTY_00719,Commercial,Real Estate and Rental and Leasing,0.49,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.2658
2019-01-31,CPTY_01547,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04032
2019-01-31,CPTY_01756,Commercial,Real Estate and Rental and Leasing,0.77,N,N,.,N,S&P,CC,8 - Doubtful,0.17221,0.6023
2019-01-31,CPTY_01752,Commercial,Real Estate and Rental and Leasing,0.49,Y,Y,2018-06-01,N,S&P,BB,5 - Additional Review,0.04305,0.21697
2019-01-31,CPTY_01351,Commercial,Real Estate and Rental and Leasing,0.32,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.07405
2019-01-31,CPTY_00826,Commercial,Real Estate and Rental and Leasing,1.01,N,N,.,N,S&P,D,9 - Loss,0.04305,1
2019-01-31,CPTY_01150,Commercial,Real Estate and Rental and Leasing,0.07,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02047
2019-01-31,CPTY_01231,Commercial,Real Estate and Rental and Leasing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.03143
2019-01-31,CPTY_00759,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.07051
2019-01-31,CPTY_01566,Commercial,Real Estate and Rental and Leasing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03439
2019-01-31,CPTY_00828,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16713
2019-01-31,CPTY_00658,Commercial,Real Estate and Rental and Leasing,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12148
2019-01-31,CPTY_01519,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16447
2019-01-31,CPTY_01175,Commercial,Real Estate and Rental and Leasing,0.48,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.22718
2019-01-31,CPTY_01733,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18378
2019-01-31,CPTY_00920,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03752
2019-01-31,CPTY_00859,Commercial,Real Estate and Rental and Leasing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15818
2019-01-31,CPTY_00812,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16646
2019-01-31,CPTY_01060,Commercial,Real Estate and Rental and Leasing,0.49,N,Y,2017-04-13,N,S&P,BB,5 - Additional Review,0.04305,0.18919
2019-01-31,CPTY_00729,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04722
2019-01-31,CPTY_01754,Commercial,Real Estate and Rental and Leasing,0.31,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.09489
2019-01-31,CPTY_01062,Commercial,Real Estate and Rental and Leasing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.00068,0.28536
2019-01-31,CPTY_01522,Commercial,Real Estate and Rental and Leasing,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04109
2019-01-31,CPTY_00850,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.01112
2019-01-31,CPTY_00855,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15866
2019-01-31,CPTY_01523,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05426
2019-01-31,CPTY_01002,Commercial,Real Estate and Rental and Leasing,0.48,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.28996
2019-01-31,CPTY_01755,Commercial,Real Estate and Rental and Leasing,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.00863
2019-01-31,CPTY_01146,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01058
2019-01-31,CPTY_00612,Commercial,Real Estate and Rental and Leasing,0.33,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.09527
2019-01-31,CPTY_00922,Commercial,Real Estate and Rental and Leasing,0.34,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.08681
2019-01-31,CPTY_01462,Commercial,Real Estate and Rental and Leasing,0.07,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00722
2019-01-31,CPTY_00594,Commercial,Real Estate and Rental and Leasing,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01416
2019-01-31,CPTY_00753,Commercial,Real Estate and Rental and Leasing,0.58,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.34784
2019-01-31,CPTY_00799,Commercial,Real Estate and Rental and Leasing,0.31,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.07044
2019-01-31,CPTY_01757,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.06654
2019-01-31,CPTY_01352,Commercial,Real Estate and Rental and Leasing,0.15,Y,Y,2018-06-01,Y,S&P,AAA,1 - Largely Risk Free,0.00024,0.00863
2019-01-31,CPTY_01293,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.0078
2019-01-31,CPTY_01003,Commercial,Real Estate and Rental and Leasing,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01547
2019-01-31,CPTY_00622,Commercial,Real Estate and Rental and Leasing,0.99,N,N,.,N,S&P,D,9 - Loss,0.01076,1
2019-01-31,CPTY_01520,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05161
2019-01-31,CPTY_00641,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05166
2019-01-31,CPTY_00662,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.03112
2019-01-31,CPTY_00626,Commercial,Real Estate and Rental and Leasing,1,Y,Y,2018-06-01,Y,S&P,D,9 - Loss,0.6,1
2019-01-31,CPTY_01521,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.10904
2019-01-31,CPTY_01464,Commercial,Real Estate and Rental and Leasing,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00871
2019-01-31,CPTY_00787,Commercial,Real Estate and Rental and Leasing,0.78,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.58333
2019-01-31,CPTY_01353,Commercial,Real Estate and Rental and Leasing,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00838
2019-01-31,CPTY_01354,Commercial,Real Estate and Rental and Leasing,0.37,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15137
2019-01-31,CPTY_01232,Commercial,Real Estate and Rental and Leasing,0.42,N,Y,2016-10-10,N,S&P,BBB,4 - Bankable,0.04305,0.11955
2019-01-31,CPTY_01758,Commercial,Real Estate and Rental and Leasing,0.79,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.53259
2019-01-31,CPTY_01759,Commercial,Real Estate and Rental and Leasing,0.36,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13876
2019-01-31,CPTY_00663,Commercial,Real Estate and Rental and Leasing,0.29,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.10117
2019-01-31,CPTY_01465,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03976
2019-01-31,CPTY_01288,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00989
2019-01-31,CPTY_01761,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18544
2019-01-31,CPTY_01838,Commercial,Real Estate and Rental and Leasing,0.8,N,N,.,N,S&P,CC,8 - Doubtful,0.00024,0.5781
2019-01-31,CPTY_00955,Commercial,Real Estate and Rental and Leasing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.22901
2019-01-31,CPTY_01072,Commercial,Real Estate and Rental and Leasing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.0287
2019-01-31,CPTY_01744,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.00068,0.14142
2019-01-31,CPTY_01458,Commercial,Real Estate and Rental and Leasing,0.42,N,Y,2016-08-12,N,S&P,BBB,4 - Bankable,0.04305,0.12319
2019-01-31,CPTY_01459,Commercial,Real Estate and Rental and Leasing,0.45,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17204
2019-01-31,CPTY_00762,Commercial,Real Estate and Rental and Leasing,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13239
2019-01-31,CPTY_01835,Commercial,Real Estate and Rental and Leasing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.00068,0.21246
2019-01-31,CPTY_01746,Commercial,Real Estate and Rental and Leasing,1.02,N,N,.,N,S&P,D,9 - Loss,0.04305,1
2019-01-31,CPTY_01230,Commercial,Real Estate and Rental and Leasing,0.97,Y,Y,2018-06-01,N,S&P,D,9 - Loss,0.04305,1
2019-01-31,CPTY_00808,Commercial,Real Estate and Rental and Leasing,0.49,N,Y,2014-04-03,N,S&P,BB,5 - Additional Review,0.04305,0.23108
2019-01-31,CPTY_00706,Commercial,Real Estate and Rental and Leasing,0.61,N,N,.,N,S&P,B,6 - Special Mention,0.04305,0.35275
2019-01-31,CPTY_00803,Commercial,Real Estate and Rental and Leasing,0.61,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.35029
2019-01-31,CPTY_01346,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00778
2019-01-31,CPTY_00613,Commercial,Real Estate and Rental and Leasing,0.5,Y,Y,2018-06-01,N,S&P,BB,5 - Additional Review,0.04305,0.232
2019-01-31,CPTY_00835,Commercial,Real Estate and Rental and Leasing,0.15,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03897
2019-01-31,CPTY_01347,Commercial,Real Estate and Rental and Leasing,0.52,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.2238
2019-01-31,CPTY_00928,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.04305,0.049
2019-01-31,CPTY_01350,Commercial,Real Estate and Rental and Leasing,0.49,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.25564
2019-01-31,CPTY_00698,Commercial,Real Estate and Rental and Leasing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.00921
2019-01-31,CPTY_01567,Commercial,Real Estate and Rental and Leasing,0.13,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00683
2019-01-31,CPTY_01047,Commercial,Real Estate and Rental and Leasing,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04024
2019-01-31,CPTY_01568,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05469
2019-01-31,CPTY_00968,Commercial,Real Estate and Rental and Leasing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1108
2019-01-31,CPTY_01027,Commercial,Real Estate and Rental and Leasing,0.37,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17412
2019-01-31,CPTY_01157,Commercial,Real Estate and Rental and Leasing,0.3,Y,Y,2018-06-01,Y,S&P,A,3 - Modest Risk,0.00269,0.07442
2019-01-31,CPTY_01747,Commercial,Real Estate and Rental and Leasing,0.38,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11955
2019-01-31,CPTY_00874,Commercial,Real Estate and Rental and Leasing,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05448
2019-01-31,CPTY_01460,Commercial,Real Estate and Rental and Leasing,0.56,N,N,.,N,S&P,B,6 - Special Mention,0.17221,0.3852
2019-01-31,CPTY_01748,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0475
2019-01-31,CPTY_01155,Commercial,Real Estate and Rental and Leasing,0.72,Y,Y,2018-06-01,N,S&P,CCC,7 - Sub-Standard,0.01076,0.36495
2019-01-31,CPTY_00988,Commercial,Real Estate and Rental and Leasing,0.77,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.80413
2019-01-31,CPTY_01461,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03729
2019-01-31,CPTY_01302,Commercial,Real Estate and Rental and Leasing,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.00885
2019-01-31,CPTY_01411,Commercial,Real Estate and Rental and Leasing,0.59,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.37757
2019-01-31,CPTY_01749,Commercial,Real Estate and Rental and Leasing,0.37,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12695
2019-01-31,CPTY_01551,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04302
2019-01-31,CPTY_01751,Commercial,Real Estate and Rental and Leasing,0.5,N,N,.,N,S&P,BB,5 - Additional Review,0.00024,0.25821
2019-01-31,CPTY_01676,Commercial,Real Estate and Rental and Leasing,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03674
2019-01-31,CPTY_01833,Commercial,Real Estate and Rental and Leasing,0.2,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04028
2019-01-31,CPTY_01739,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04726
2019-01-31,CPTY_01738,Commercial,Real Estate and Rental and Leasing,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03812
2019-01-31,CPTY_00771,Commercial,Real Estate and Rental and Leasing,0.61,N,Y,2016-04-20,N,S&P,B,6 - Special Mention,0.17221,0.35275
2019-01-31,CPTY_01445,Commercial,Real Estate and Rental and Leasing,0.48,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.20846
2019-01-31,CPTY_00636,Commercial,Real Estate and Rental and Leasing,0.62,N,Y,2016-07-21,N,S&P,B,6 - Special Mention,0.04305,0.37494
2019-01-31,CPTY_01164,Commercial,Real Estate and Rental and Leasing,0.47,N,N,.,N,S&P,BB,5 - Additional Review,0.04305,0.27693
2019-01-31,CPTY_01743,Commercial,Real Estate and Rental and Leasing,0.69,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.36204
2019-01-31,CPTY_00881,Commercial,Real Estate and Rental and Leasing,0.29,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.07427
2019-01-31,CPTY_01413,Commercial,Real Estate and Rental and Leasing,0.66,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.01076,0.2985
2019-01-31,CPTY_01740,Commercial,Real Estate and Rental and Leasing,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.16999
2019-01-31,CPTY_01557,Commercial,Real Estate and Rental and Leasing,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03456
2019-01-31,CPTY_01741,Commercial,Real Estate and Rental and Leasing,0.59,Y,Y,2018-06-01,N,S&P,B,6 - Special Mention,0.17221,0.35452
2019-01-31,CPTY_01742,Commercial,Real Estate and Rental and Leasing,0.81,Y,Y,2018-06-01,Y,S&P,CC,8 - Doubtful,0.17221,0.8336
2019-01-31,CPTY_01348,Commercial,Real Estate and Rental and Leasing,0.32,Y,Y,2018-06-01,Y,S&P,A,3 - Modest Risk,0.00269,0.06105
2019-01-31,CPTY_01228,Commercial,Real Estate and Rental and Leasing,0.31,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.10188
2019-01-31,CPTY_01834,Commercial,Real Estate and Rental and Leasing,0.3,N,N,.,N,S&P,A,3 - Modest Risk,0.00024,0.07339
2019-01-31,CPTY_01080,Commercial,Real Estate and Rental and Leasing,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.01672
2019-01-31,CPTY_00739,Commercial,Real Estate and Rental and Leasing,0.48,N,N,.,N,S&P,BB,5 - Additional Review,0.00068,0.27637
2019-01-31,CPTY_00539,Retail,Retail Customer,0.52,Y,Y,2018-06-01,Y,FICO,576,5 - Additional Review,0.04305,0.29113
2019-01-31,CPTY_00208,Retail,Retail Customer,0.2,N,N,.,N,FICO,743,2 - Minimal Risk,0.00068,0.03725
2019-01-31,CPTY_00018,Retail,Retail Customer,0.62,Y,Y,2018-06-01,Y,FICO,509,6 - Special Mention,0.17221,0.37494
2019-01-31,CPTY_00405,Retail,Retail Customer,0.11,Y,Y,2018-06-01,Y,FICO,821,1 - Largely Risk Free,0.00024,0.02555
2019-01-31,CPTY_00037,Retail,Retail Customer,0.24,N,N,.,N,FICO,720,2 - Minimal Risk,0.00024,0.0526
2019-01-31,CPTY_00677,Retail,Retail Customer,0.13,N,N,.,N,FICO,770,1 - Largely Risk Free,0.00024,0.00869
2019-01-31,CPTY_01133,Retail,Retail Customer,0.41,N,N,.,N,FICO,620,4 - Bankable,0.01076,0.17942
2019-01-31,CPTY_01004,Retail,Retail Customer,0.38,N,N,.,N,FICO,616,4 - Bankable,0.01076,0.1186
2019-01-31,CPTY_01068,Retail,Retail Customer,0.1,N,N,.,N,FICO,794,1 - Largely Risk Free,0.00024,0.01607
2019-01-31,CPTY_01632,Retail,Retail Customer,0.1,N,N,.,N,FICO,848,1 - Largely Risk Free,0.00024,0.00803
2019-01-31,CPTY_01769,Retail,Retail Customer,0.51,N,N,.,N,FICO,566,5 - Additional Review,0.01076,0.20413
2019-01-31,CPTY_01541,Retail,Retail Customer,0.2,N,N,.,N,FICO,712,2 - Minimal Risk,0.00068,0.04385
2019-01-31,CPTY_01624,Retail,Retail Customer,0.81,N,Y,2015-11-25,N,FICO,416,8 - Doubtful,0.17221,0.63002
2019-01-31,CPTY_01005,Retail,Retail Customer,0.3,Y,Y,2018-06-01,Y,FICO,655,3 - Modest Risk,0.00269,0.06802
2019-01-31,CPTY_00624,Retail,Retail Customer,0.42,Y,Y,2018-06-01,N,FICO,632,4 - Bankable,0.01076,0.12015
2019-01-31,CPTY_00869,Retail,Retail Customer,0.6,Y,Y,2018-06-01,Y,FICO,520,6 - Special Mention,0.17221,0.37419
2019-01-31,CPTY_01134,Retail,Retail Customer,0.08,Y,Y,2018-06-01,Y,FICO,769,1 - Largely Risk Free,0.00024,0.01715
2019-01-31,CPTY_01269,Retail,Retail Customer,0.49,Y,Y,2018-06-01,N,FICO,550,5 - Additional Review,0.04305,0.23434
2019-01-31,CPTY_01020,Retail,Retail Customer,0.39,N,N,.,N,FICO,648,4 - Bankable,0.00068,0.17102
2019-01-31,CPTY_00833,Retail,Retail Customer,0.39,N,N,.,N,FICO,642,4 - Bankable,0.01076,0.14171
2019-01-31,CPTY_01490,Retail,Retail Customer,0.23,N,N,.,N,FICO,747,2 - Minimal Risk,0.00068,0.03474
2019-01-31,CPTY_00686,Retail,Retail Customer,0.1,N,N,.,N,FICO,758,1 - Largely Risk Free,0.00068,0.0139
2019-01-31,CPTY_00860,Retail,Retail Customer,0.4,N,N,.,N,FICO,626,4 - Bankable,0.00024,0.18637
2019-01-31,CPTY_01615,Retail,Retail Customer,0.37,N,N,.,N,FICO,634,4 - Bankable,0.01076,0.15412
2019-01-31,CPTY_01136,Retail,Retail Customer,0.09,N,N,.,N,FICO,841,1 - Largely Risk Free,0.00024,0.03239
2019-01-31,CPTY_01392,Retail,Retail Customer,0.39,N,N,.,N,FICO,606,4 - Bankable,0.01076,0.11908
2019-01-31,CPTY_01466,Retail,Retail Customer,0.17,N,N,.,N,FICO,725,2 - Minimal Risk,0.00068,0.04093
2019-01-31,CPTY_00632,Retail,Retail Customer,0.6,N,N,.,N,FICO,533,6 - Special Mention,0.17221,0.39574
2019-01-31,CPTY_01456,Retail,Retail Customer,0.42,N,N,.,N,FICO,601,4 - Bankable,0.01076,0.15882
2019-01-31,CPTY_01282,Retail,Retail Customer,0.2,N,N,.,N,FICO,749,2 - Minimal Risk,0.00068,0.04939
2019-01-31,CPTY_01145,Retail,Retail Customer,0.13,N,N,.,N,FICO,759,1 - Largely Risk Free,0.00024,0.00811
2019-01-31,CPTY_00896,Retail,Retail Customer,0.39,N,N,.,N,FICO,622,4 - Bankable,0.01076,0.11533
2019-01-31,CPTY_01671,Retail,Retail Customer,0.08,N,N,.,N,FICO,834,1 - Largely Risk Free,0.00024,0.01927
2019-01-31,CPTY_00957,Retail,Retail Customer,0.09,N,N,.,N,FICO,781,1 - Largely Risk Free,0.00024,0.01542
2019-01-31,CPTY_01681,Retail,Retail Customer,0.3,N,N,.,N,FICO,693,3 - Modest Risk,0.00024,0.05715
2019-01-31,CPTY_00967,Retail,Retail Customer,0.39,N,N,.,N,FICO,615,4 - Bankable,0.01076,0.10561
2019-01-31,CPTY_01185,Retail,Retail Customer,0.52,N,N,.,N,FICO,576,5 - Additional Review,0.04305,0.23504
2019-01-31,CPTY_01328,Retail,Retail Customer,0.5,Y,Y,2018-06-01,Y,FICO,599,5 - Additional Review,0.04305,0.275
2019-01-31,CPTY_00944,Retail,Retail Customer,0.19,N,N,.,N,FICO,742,2 - Minimal Risk,0.00068,0.04221
2019-01-31,CPTY_00695,Retail,Retail Customer,0.37,Y,Y,2018-06-01,N,FICO,610,4 - Bankable,0.04305,0.12481
2019-01-31,CPTY_01186,Retail,Retail Customer,0.34,N,N,.,N,FICO,666,3 - Modest Risk,0.04305,0.07339
2019-01-31,CPTY_00682,Retail,Retail Customer,0.07,N,N,.,N,FICO,771,1 - Largely Risk Free,0.00024,0.01576
2019-01-31,CPTY_00667,Retail,Retail Customer,0.23,N,N,.,N,FICO,726,2 - Minimal Risk,0.00068,0.04703
2019-01-31,CPTY_01841,Retail,Retail Customer,0.68,Y,Y,2018-06-01,Y,FICO,481,7 - Sub-Standard,0.49351,0.39259
2019-01-31,CPTY_00905,Retail,Retail Customer,0.38,Y,Y,2018-06-01,N,FICO,639,4 - Bankable,0.01076,0.15929
2019-01-31,CPTY_01138,Retail,Retail Customer,0.41,Y,Y,2018-06-01,Y,FICO,649,4 - Bankable,0.01076,0.11047
2019-01-31,CPTY_00932,Retail,Retail Customer,0.44,N,N,.,N,FICO,604,4 - Bankable,0.01076,0.15032
2019-01-31,CPTY_01786,Retail,Retail Customer,0.81,N,Y,2017-02-21,N,FICO,442,8 - Doubtful,0.17221,0.55377
2019-01-31,CPTY_01527,Retail,Retail Customer,0.4,N,N,.,N,FICO,628,4 - Bankable,0.01076,0.14156
2019-01-31,CPTY_01765,Retail,Retail Customer,0.48,Y,Y,2018-06-01,N,FICO,586,5 - Additional Review,0.04305,0.2093
2019-01-31,CPTY_00791,Retail,Retail Customer,0.38,N,N,.,N,FICO,600,4 - Bankable,0.01076,0.12221
2019-01-31,CPTY_01794,Retail,Retail Customer,0.41,N,N,.,N,FICO,623,4 - Bankable,0.01076,0.13239
2019-01-31,CPTY_00688,Retail,Retail Customer,0.36,Y,Y,2018-06-01,Y,FICO,616,4 - Bankable,0.04305,0.18069
2019-01-31,CPTY_01187,Retail,Retail Customer,0.11,N,N,.,N,FICO,850,1 - Largely Risk Free,0.00024,0.01637
2019-01-31,CPTY_01181,Retail,Retail Customer,0.13,N,N,.,N,FICO,827,1 - Largely Risk Free,0.00024,0.00706
2019-01-31,CPTY_00974,Retail,Retail Customer,0.43,N,N,.,N,FICO,604,4 - Bankable,0.01076,0.14342
2019-01-31,CPTY_01122,Retail,Retail Customer,0.46,N,N,.,N,FICO,585,5 - Additional Review,0.01076,0.26501
2019-01-31,CPTY_00792,Retail,Retail Customer,0.39,N,N,.,N,FICO,637,4 - Bankable,0.01076,0.17256
2019-01-31,CPTY_00849,Retail,Retail Customer,0.28,N,N,.,N,FICO,693,3 - Modest Risk,0.01076,0.06768
2019-01-31,CPTY_00843,Retail,Retail Customer,0.49,N,N,.,N,FICO,597,5 - Additional Review,0.00024,0.26421
2019-01-31,CPTY_00867,Retail,Retail Customer,0.7,N,N,.,N,FICO,454,7 - Sub-Standard,0.01076,0.46024
2019-01-31,CPTY_00631,Retail,Retail Customer,0.62,N,N,.,N,FICO,507,6 - Special Mention,0.04305,0.34819
2019-01-31,CPTY_00926,Retail,Retail Customer,0.29,N,N,.,N,FICO,678,3 - Modest Risk,0.01076,0.08299
2019-01-31,CPTY_01214,Retail,Retail Customer,0.38,N,N,.,N,FICO,641,4 - Bankable,0.01076,0.18507
2019-01-31,CPTY_01297,Retail,Retail Customer,0.42,N,N,.,N,FICO,642,4 - Bankable,0.01076,0.11801
2019-01-31,CPTY_01501,Retail,Retail Customer,0.11,N,N,.,N,FICO,750,1 - Largely Risk Free,0.00024,0.01822
2019-01-31,CPTY_01670,Retail,Retail Customer,0.51,N,N,.,N,FICO,555,5 - Additional Review,0.00068,0.22832
2019-01-31,CPTY_01550,Retail,Retail Customer,0.07,N,N,.,N,FICO,784,1 - Largely Risk Free,0.00024,0.00835
2019-01-31,CPTY_00802,Retail,Retail Customer,0.62,N,N,.,N,FICO,533,6 - Special Mention,0.17221,0.38289
2019-01-31,CPTY_01704,Retail,Retail Customer,0.41,N,N,.,N,FICO,644,4 - Bankable,0.01076,0.14987
2019-01-31,CPTY_00783,Retail,Retail Customer,0.49,N,N,.,N,FICO,567,5 - Additional Review,0.00068,0.24488
2019-01-31,CPTY_00671,Retail,Retail Customer,0.2,N,N,.,N,FICO,706,2 - Minimal Risk,0.00068,0.05079
2019-01-31,CPTY_01513,Retail,Retail Customer,0.11,N,N,.,N,FICO,830,1 - Largely Risk Free,0.00024,0.02082
2019-01-31,CPTY_01514,Retail,Retail Customer,0.5,N,Y,2015-04-17,N,FICO,562,5 - Additional Review,0.04305,0.20618
2019-01-31,CPTY_00946,Retail,Retail Customer,0.21,N,N,.,N,FICO,734,2 - Minimal Risk,0.00068,0.05064
2019-01-31,CPTY_00732,Retail,Retail Customer,0.81,N,N,.,N,FICO,449,8 - Doubtful,0.01076,0.7827
2019-01-31,CPTY_01373,Retail,Retail Customer,0.21,N,N,.,N,FICO,718,2 - Minimal Risk,0.00068,0.03688
2019-01-31,CPTY_00596,Retail,Retail Customer,0.6,Y,Y,2018-06-01,Y,FICO,533,6 - Special Mention,0.04305,0.38251
2019-01-31,CPTY_00757,Retail,Retail Customer,0.4,N,N,.,N,FICO,600,4 - Bankable,0.01076,0.18177
2019-01-31,CPTY_00912,Retail,Retail Customer,0.48,N,N,.,N,FICO,572,5 - Additional Review,0.04305,0.25976
2019-01-31,CPTY_01241,Retail,Retail Customer,0.11,N,N,.,N,FICO,843,1 - Largely Risk Free,0.00024,0.0197
2019-01-31,CPTY_01242,Retail,Retail Customer,0.5,N,N,.,N,FICO,575,5 - Additional Review,0.04305,0.23224
2019-01-31,CPTY_01585,Retail,Retail Customer,0.12,N,N,.,N,FICO,760,1 - Largely Risk Free,0.00024,0.0249
2019-01-31,CPTY_00883,Retail,Retail Customer,0.42,Y,Y,2018-06-01,N,FICO,636,4 - Bankable,0.01076,0.1563
2019-01-31,CPTY_01587,Retail,Retail Customer,0.31,Y,Y,2018-06-01,N,FICO,650,3 - Modest Risk,0.00269,0.05955
2019-01-31,CPTY_01588,Retail,Retail Customer,0.51,N,N,.,N,FICO,600,5 - Additional Review,0.04305,0.28593
2019-01-31,CPTY_01376,Retail,Retail Customer,0.13,N,N,.,N,FICO,808,1 - Largely Risk Free,0.00068,0.00767
2019-01-31,CPTY_01589,Retail,Retail Customer,0.29,N,N,.,N,FICO,690,3 - Modest Risk,0.01076,0.07998
2019-01-31,CPTY_00701,Retail,Retail Customer,0.06,N,N,.,N,FICO,761,1 - Largely Risk Free,0.00024,0.0266
2019-01-31,CPTY_01361,Retail,Retail Customer,0.41,N,N,.,N,FICO,603,4 - Bankable,0.01076,0.15898
2019-01-31,CPTY_01591,Retail,Retail Customer,0.79,N,N,.,N,FICO,448,8 - Doubtful,0.04305,0.5981
2019-01-31,CPTY_00774,Retail,Retail Customer,0.8,N,N,.,N,FICO,443,8 - Doubtful,0.04305,0.8462
2019-01-31,CPTY_00910,Retail,Retail Customer,0.41,N,N,.,N,FICO,648,4 - Bankable,0.01076,0.13766
2019-01-31,CPTY_01190,Retail,Retail Customer,0.83,N,N,.,N,FICO,413,8 - Doubtful,0.04305,0.67503
2019-01-31,CPTY_01581,Retail,Retail Customer,0.29,N,N,.,N,FICO,652,3 - Modest Risk,0.01076,0.08383
2019-01-31,CPTY_01586,Retail,Retail Customer,0.42,N,N,.,N,FICO,618,4 - Bankable,0.01076,0.17016
2019-01-31,CPTY_01375,Retail,Retail Customer,0.29,N,N,.,N,FICO,695,3 - Modest Risk,0.00068,0.06747
2019-01-31,CPTY_01014,Retail,Retail Customer,0.52,N,N,.,N,FICO,556,5 - Additional Review,0.00024,0.24561
2019-01-31,CPTY_01604,Retail,Retail Customer,0.21,N,N,.,N,FICO,742,2 - Minimal Risk,0.00024,0.03401
2019-01-31,CPTY_01381,Retail,Retail Customer,0.39,N,N,.,N,FICO,645,4 - Bankable,0.01076,0.13974
2019-01-31,CPTY_01382,Retail,Retail Customer,0.38,N,N,.,N,FICO,632,4 - Bankable,0.01076,0.16316
2019-01-31,CPTY_01605,Retail,Retail Customer,0.51,Y,Y,2018-06-01,N,FICO,570,5 - Additional Review,0.04305,0.232
2019-01-31,CPTY_01052,Retail,Retail Customer,0.4,N,N,.,N,FICO,630,4 - Bankable,0.01076,0.15755
2019-01-31,CPTY_00889,Retail,Retail Customer,0.2,N,N,.,N,FICO,744,2 - Minimal Risk,0.00068,0.03547
2019-01-31,CPTY_01620,Retail,Retail Customer,0.52,N,N,.,N,FICO,561,5 - Additional Review,0.01076,0.25208
2019-01-31,CPTY_00628,Retail,Retail Customer,0.52,N,N,.,N,FICO,561,5 - Additional Review,0.04305,0.24684
2019-01-31,CPTY_01602,Retail,Retail Customer,0.5,N,N,.,N,FICO,592,5 - Additional Review,0.04305,0.22855
2019-01-31,CPTY_01608,Retail,Retail Customer,0.39,N,N,.,N,FICO,628,4 - Bankable,0.01076,0.14142
2019-01-31,CPTY_00690,Retail,Retail Customer,0.46,N,N,.,N,FICO,595,5 - Additional Review,0.00068,0.23387
2019-01-31,CPTY_01611,Retail,Retail Customer,0.08,N,N,.,N,FICO,795,1 - Largely Risk Free,0.00068,0.00975
2019-01-31,CPTY_01732,Retail,Retail Customer,0.2,N,N,.,N,FICO,736,2 - Minimal Risk,0.00068,0.05054
2019-01-31,CPTY_00634,Retail,Retail Customer,0.19,N,N,.,N,FICO,710,2 - Minimal Risk,0.00068,0.03498
2019-01-31,CPTY_00801,Retail,Retail Customer,0.22,N,N,.,N,FICO,711,2 - Minimal Risk,0.00068,0.05302
2019-01-31,CPTY_01248,Retail,Retail Customer,0.51,N,N,.,N,FICO,590,5 - Additional Review,0.01076,0.26002
2019-01-31,CPTY_01064,Retail,Retail Customer,0.41,N,N,.,N,FICO,603,4 - Bankable,0.01076,0.11979
2019-01-31,CPTY_01264,Retail,Retail Customer,0.37,N,N,.,N,FICO,635,4 - Bankable,0.04305,0.11579
2019-01-31,CPTY_01380,Retail,Retail Customer,0.78,N,Y,2017-04-11,N,FICO,426,8 - Doubtful,0.04305,0.54498
2019-01-31,CPTY_01393,Retail,Retail Customer,0.62,N,N,.,N,FICO,538,6 - Special Mention,0.17221,0.37606
2019-01-31,CPTY_01603,Retail,Retail Customer,0.2,N,N,.,N,FICO,727,2 - Minimal Risk,0.00068,0.05442
2019-01-31,CPTY_01252,Retail,Retail Customer,0.58,N,N,.,N,FICO,512,6 - Special Mention,0.01076,0.36385
2019-01-31,CPTY_01253,Retail,Retail Customer,1.01,N,N,.,N,FICO,346,9 - Loss,0.00068,1
2019-01-31,CPTY_01487,Retail,Retail Customer,0.29,N,N,.,N,FICO,676,3 - Modest Risk,0.00068,0.08467
2019-01-31,CPTY_00943,Retail,Retail Customer,0.17,N,N,.,N,FICO,711,2 - Minimal Risk,0.00024,0.03924
2019-01-31,CPTY_01215,Retail,Retail Customer,0.46,N,N,.,N,FICO,594,5 - Additional Review,0.01076,0.20393
2019-01-31,CPTY_01617,Retail,Retail Customer,0.1,N,N,.,N,FICO,812,1 - Largely Risk Free,0.00024,0.01746
2019-01-31,CPTY_01798,Retail,Retail Customer,0.4,N,N,.,N,FICO,622,4 - Bankable,0.01076,0.16284
2019-01-31,CPTY_00633,Retail,Retail Customer,0.52,Y,Y,2018-06-01,N,FICO,584,5 - Additional Review,0.04305,0.26554
2019-01-31,CPTY_01261,Retail,Retail Customer,0.35,N,N,.,N,FICO,628,4 - Bankable,0.00024,0.15724
2019-01-31,CPTY_00776,Retail,Retail Customer,0.28,Y,Y,2018-06-01,Y,FICO,669,3 - Modest Risk,0.00269,0.0621
2019-01-31,CPTY_01085,Retail,Retail Customer,0.61,Y,Y,2018-06-01,Y,FICO,505,6 - Special Mention,0.17221,0.36132
2019-01-31,CPTY_01386,Retail,Retail Customer,0.48,N,N,.,N,FICO,558,5 - Additional Review,0.01076,0.21632
2019-01-31,CPTY_01693,Retail,Retail Customer,0.41,N,N,.,N,FICO,629,4 - Bankable,0.01076,0.14256
2019-01-31,CPTY_00864,Retail,Retail Customer,0.13,N,N,.,N,FICO,819,1 - Largely Risk Free,0.00024,0.00968
2019-01-31,CPTY_01621,Retail,Retail Customer,0.35,N,N,.,N,FICO,608,4 - Bankable,0.01076,0.14749
2019-01-31,CPTY_01538,Retail,Retail Customer,0.61,N,N,.,N,FICO,509,6 - Special Mention,0.17221,0.3879
2019-01-31,CPTY_01362,Retail,Retail Customer,0.11,N,N,.,N,FICO,833,1 - Largely Risk Free,0.00068,0.00929
2019-01-31,CPTY_01468,Retail,Retail Customer,0.13,N,N,.,N,FICO,797,1 - Largely Risk Free,0.00024,0.02858
2019-01-31,CPTY_00614,Retail,Retail Customer,0.31,N,N,.,N,FICO,700,3 - Modest Risk,0.00068,0.05813
2019-01-31,CPTY_01075,Retail,Retail Customer,0.19,N,N,.,N,FICO,723,2 - Minimal Risk,0.00068,0.05642
2019-01-31,CPTY_01437,Retail,Retail Customer,0.41,N,N,.,N,FICO,600,4 - Bankable,0.00024,0.13932
2019-01-31,CPTY_00925,Commercial,Retail Trade,0.32,N,N,.,N,S&P,A,3 - Modest Risk,0.00269,0.08484
2019-01-31,CPTY_00708,Commercial,Retail Trade,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.00024,0.12246
2019-01-31,CPTY_01078,Commercial,Retail Trade,0.59,Y,Y,2018-06-01,N,S&P,B,6 - Special Mention,0.01076,0.39219
2019-01-31,CPTY_00710,Commercial,Manufacturing,0.57,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.34819
2019-01-31,CPTY_00935,Commercial,Retail Trade,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04564
2019-01-31,CPTY_00985,Commercial,Retail Trade,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.1648
2019-01-31,CPTY_00936,Commercial,Retail Trade,0.49,N,Y,2016-02-02,N,S&P,BB,5 - Additional Review,0.01076,0.28565
2019-01-31,CPTY_01140,Commercial,Manufacturing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17067
2019-01-31,CPTY_00952,Commercial,Manufacturing,0.06,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00821
2019-01-31,CPTY_01032,Commercial,Manufacturing,0.16,N,Y,2014-04-30,N,S&P,AA,2 - Minimal Risk,0.01076,0.04601
2019-01-31,CPTY_01528,Commercial,Retail Trade,0.2,N,Y,2014-05-02,N,S&P,AA,2 - Minimal Risk,0.00068,0.03685
2019-01-31,CPTY_00861,Commercial,Retail Trade,0.18,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.0558
2019-01-31,CPTY_01107,Commercial,Manufacturing,0.58,N,N,.,N,S&P,B,6 - Special Mention,0.00269,0.36898
2019-01-31,CPTY_00827,Commercial,Manufacturing,0.09,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02053
2019-01-31,CPTY_01050,Commercial,Retail Trade,0.42,Y,Y,2018-06-01,N,S&P,BBB,4 - Bankable,0.01076,0.11315
2019-01-31,CPTY_01043,Commercial,Manufacturing,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.015
2019-01-31,CPTY_01356,Commercial,Manufacturing,0.98,Y,Y,2018-06-01,Y,S&P,D,9 - Loss,0.6,1
2019-01-31,CPTY_00939,Commercial,Retail Trade,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.02502
2019-01-31,CPTY_01763,Commercial,Retail Trade,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.15771
2019-01-31,CPTY_00930,Commercial,Retail Trade,0.4,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11648
2019-01-31,CPTY_00892,Commercial,Retail Trade,0.83,N,N,.,N,S&P,CC,8 - Doubtful,0.00024,0.80011
2019-01-31,CPTY_00960,Commercial,Manufacturing,0.38,Y,Y,2018-06-01,N,S&P,BBB,4 - Bankable,0.01076,0.16864
2019-01-31,CPTY_00778,Commercial,Retail Trade,0.19,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05281
2019-01-31,CPTY_01850,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.12003
2019-01-31,CPTY_00702,Commercial,Retail Trade,0.46,N,Y,2018-01-19,N,S&P,BB,5 - Additional Review,0.01076,0.20846
2019-01-31,CPTY_01576,Commercial,Retail Trade,0.22,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.03755
2019-01-31,CPTY_00685,Commercial,Retail Trade,0.1,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.00866
2019-01-31,CPTY_01045,Commercial,Retail Trade,0.51,N,N,.,N,S&P,BB,5 - Additional Review,0.00024,0.22335
2019-01-31,CPTY_01077,Commercial,Manufacturing,0.65,Y,Y,2018-06-01,N,S&P,B,6 - Special Mention,0.01076,0.39063
2019-01-31,CPTY_01532,Commercial,Retail Trade,0.71,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.00068,0.36385
2019-01-31,CPTY_00865,Commercial,Retail Trade,0.59,Y,Y,2018-06-01,Y,S&P,B,6 - Special Mention,0.17221,0.36862
2019-01-31,CPTY_01840,Commercial,Retail Trade,1.04,Y,Y,2018-06-01,Y,S&P,D,9 - Loss,0.6,1
2019-01-31,CPTY_00756,Commercial,Retail Trade,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11533
2019-01-31,CPTY_01098,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17136
2019-01-31,CPTY_00895,Commercial,Retail Trade,0.82,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.54281
2019-01-31,CPTY_01030,Commercial,Retail Trade,0.34,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17256
2019-01-31,CPTY_00823,Commercial,Retail Trade,0.39,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13055
2019-01-31,CPTY_01529,Commercial,Manufacturing,0.42,Y,Y,2018-06-01,N,S&P,BBB,4 - Bankable,0.01076,0.12369
2019-01-31,CPTY_00877,Commercial,Retail Trade,0.48,Y,Y,2018-06-01,Y,S&P,BB,5 - Additional Review,0.17221,0.2238
2019-01-31,CPTY_00991,Commercial,Manufacturing,0.58,Y,Y,2018-06-01,Y,S&P,B,6 - Special Mention,0.17221,0.37456
2019-01-31,CPTY_00933,Commercial,Retail Trade,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11919
2019-01-31,CPTY_00670,Commercial,Retail Trade,0.8,N,Y,2016-02-12,N,S&P,CC,8 - Doubtful,0.01076,0.57407
2019-01-31,CPTY_00742,Commercial,Manufacturing,0.39,N,Y,2017-09-20,N,S&P,BBB,4 - Bankable,0.01076,0.10487
2019-01-31,CPTY_00707,Commercial,Retail Trade,0.28,Y,Y,2018-06-01,N,S&P,A,3 - Modest Risk,0.00269,0.06918
2019-01-31,CPTY_01092,Commercial,Retail Trade,0.42,N,Y,2018-05-02,N,S&P,BBB,4 - Bankable,0.01076,0.14646
2019-01-31,CPTY_01084,Commercial,Retail Trade,0.72,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.00068,0.47095
2019-01-31,CPTY_01482,Commercial,Manufacturing,0.59,Y,Y,2018-06-01,Y,S&P,B,6 - Special Mention,0.17221,0.3624
2019-01-31,CPTY_00964,Commercial,Retail Trade,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.05079
2019-01-31,CPTY_01083,Commercial,Retail Trade,0.78,Y,Y,2018-06-01,N,S&P,CC,8 - Doubtful,0.01076,0.78584
2019-01-31,CPTY_00684,Commercial,Retail Trade,0.39,Y,Y,2018-06-01,N,S&P,BBB,4 - Bankable,0.01076,0.1348
2019-01-31,CPTY_00716,Commercial,Retail Trade,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17084
2019-01-31,CPTY_00866,Commercial,Retail Trade,1,Y,Y,2018-06-01,N,S&P,D,9 - Loss,0.01076,1
2019-01-31,CPTY_01102,Commercial,Retail Trade,0.57,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.39455
2019-01-31,CPTY_00669,Commercial,Retail Trade,0.37,Y,Y,2018-06-01,N,S&P,BBB,4 - Bankable,0.01076,0.14213
2019-01-31,CPTY_01530,Commercial,Retail Trade,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.11765
2019-01-31,CPTY_01209,Commercial,Retail Trade,0.24,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.04546
2019-01-31,CPTY_00780,Commercial,Manufacturing,0.83,Y,Y,2018-06-01,N,S&P,CC,8 - Doubtful,0.01076,0.66498
2019-01-31,CPTY_01358,Commercial,Retail Trade,0.28,N,N,.,N,S&P,A,3 - Modest Risk,0.00068,0.06198
2019-01-31,CPTY_00914,Commercial,Retail Trade,0.43,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.163
2019-01-31,CPTY_00818,Commercial,Manufacturing,0.59,Y,Y,2018-06-01,Y,S&P,B,6 - Special Mention,0.17221,0.36023
2019-01-31,CPTY_01577,Commercial,Retail Trade,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13821
2019-01-31,CPTY_01109,Commercial,Retail Trade,0.12,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00024,0.03118
2019-01-31,CPTY_00963,Commercial,Retail Trade,0.27,Y,Y,2018-06-01,N,S&P,A,3 - Modest Risk,0.00269,0.0696
2019-01-31,CPTY_00938,Commercial,Manufacturing,0.8,N,N,.,N,S&P,CC,8 - Doubtful,0.01076,0.54607
2019-01-31,CPTY_00982,Commercial,Retail Trade,1.02,Y,Y,2018-06-01,Y,S&P,D,9 - Loss,0.6,1
2019-01-31,CPTY_00940,Commercial,Retail Trade,0.71,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.00024,0.35275
2019-01-31,CPTY_01108,Commercial,Retail Trade,0.23,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00068,0.04076
2019-01-31,CPTY_01100,Commercial,Retail Trade,0.32,Y,Y,2018-06-01,N,S&P,A,3 - Modest Risk,0.00269,0.08629
2019-01-31,CPTY_00917,Commercial,Retail Trade,0.98,N,N,.,N,S&P,D,9 - Loss,0.01076,1
2019-01-31,CPTY_01117,Commercial,Manufacturing,0.2,N,Y,2014-04-02,N,S&P,AA,2 - Minimal Risk,0.00269,0.05636
2019-01-31,CPTY_00918,Commercial,Retail Trade,0.56,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.37606
2019-01-31,CPTY_00775,Commercial,Retail Trade,0.57,N,N,.,N,S&P,B,6 - Special Mention,0.00024,0.38328
2019-01-31,CPTY_01359,Commercial,Retail Trade,0.21,N,N,.,N,S&P,AA,2 - Minimal Risk,0.00024,0.0354
2019-01-31,CPTY_01118,Commercial,Manufacturing,0.42,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.18675
2019-01-31,CPTY_01580,Commercial,Retail Trade,0.36,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.17153
2019-01-31,CPTY_00868,Commercial,Retail Trade,0.17,N,N,.,N,S&P,AA,2 - Minimal Risk,0.01076,0.05034
2019-01-31,CPTY_01531,Commercial,Manufacturing,0.41,N,N,.,N,S&P,BBB,4 - Bankable,0.01076,0.13399
2019-01-31,CPTY_01040,Commercial,Retail Trade,0.19,N,Y,2016-05-27,N,S&P,AA,2 - Minimal Risk,0.01076,0.04179
2019-01-31,CPTY_00937,Commercial,Retail Trade,0.83,Y,Y,2018-06-01,Y,S&P,CC,8 - Doubtful,0.17221,0.80413
2019-01-31,CPTY_01042,Commercial,Retail Trade,0.41,Y,Y,2018-06-01,N,S&P,BBB,4 - Bankable,0.01076,0.18526
2019-01-31,CPTY_00697,Commercial,Retail Trade,0.38,N,Y,2015-12-17,N,S&P,BBB,4 - Bankable,0.01076,0.14544
2019-01-31,CPTY_01764,Commercial,Manufacturing,0.51,Y,Y,2018-06-01,N,S&P,BB,5 - Additional Review,0.01076,0.19437
2019-01-31,CPTY_00795,Commercial,Retail Trade,0.38,N,Y,2014-08-27,N,S&P,BBB,4 - Bankable,0.01076,0.13094
2019-01-31,CPTY_01106,Commercial,Manufacturing,0.11,N,N,.,N,S&P,AAA,1 - Largely Risk Free,0.00068,0.015
2019-01-31,CPTY_00784,Commercial,Retail Trade,0.59,N,N,.,N,S&P,B,6 - Special Mention,0.01076,0.37121
2019-01-31,CPTY_00694,Commercial,Manufacturing,0.31,N,N,.,N,S&P,A,3 - Modest Risk,0.01076,0.08127
2019-01-31,CPTY_01579,Commercial,Retail Trade,0.66,N,N,.,N,S&P,CCC,7 - Sub-Standard,0.00024,0.31982
2019-01-31,CPTY_01031,Commercial,Retail Trade,0.49,N,N,.,N,S&P,BB,5 - Additional Review,0.01076,0.19224
2019-01-31,CPTY_01360,Commercial,Retail Trade,0.59,N,N,.,N,S&P,B,6 - Special Mention,0.00068,0.36385
2019-01-31,CPTY_01481,Commercial,Retail Trade,0.4,Y,Y,2018-06-01,N,S&P,BBB,4 - Bankable,0.01076,0.14486
2019-01-31,CPTY_01805,Retail,Retail Customer,0.5,N,N,.,N,FICO,583,5 - Additional Review,0.04305,0.26982
2019-01-31,CPTY_00789,Retail,Retail Customer,0.08,N,N,.,N,FICO,806,1 - Largely Risk Free,0.00024,0.00704
2019-01-31,CPTY_01736,Retail,Retail Customer,0.41,N,N,.,N,FICO,622,4 - Bankable,0.01076,0.15818
2019-01-31,CPTY_01213,Retail,Retail Customer,0.78,N,N,.,N,FICO,443,8 - Doubtful,0.01076,0.55377
2019-01-31,CPTY_01245,Retail,Retail Customer,0.58,N,N,.,N,FICO,505,6 - Special Mention,0.01076,0.35169
2019-01-31,CPTY_01131,Retail,Retail Customer,0.42,N,N,.,N,FICO,637,4 - Bankable,0.01076,0.12246
2019-01-31,CPTY_01233,Retail,Retail Customer,0.23,N,N,.,N,FICO,744,2 - Minimal Risk,0.00068,0.04008
2019-01-31,CPTY_01572,Retail,Retail Customer,0.41,N,N,.,N,FICO,632,4 - Bankable,0.01076,0.11372
2019-01-31,CPTY_01779,Retail,Retail Customer,0.48,Y,Y,2018-06-01,Y,FICO,568,5 - Additional Review,0.04305,0.21784
2019-01-31,CPTY_01130,Retail,Retail Customer,0.08,N,N,.,N,FICO,831,1 - Largely Risk Free,0.00024,0.01576
2019-01-31,CPTY_01601,Retail,Retail Customer,0.38,N,N,.,N,FICO,648,4 - Bankable,0.01076,0.18105
2019-01-31,CPTY_01618,Retail,Retail Customer,0.09,N,N,.,N,FICO,799,1 - Largely Risk Free,0.00024,0.00903
2019-01-31,CPTY_01048,Retail,Retail Customer,0.47,Y,Y,2018-06-01,N,FICO,598,5 - Additional Review,0.04305,0.29376
2019-01-31,CPTY_00966,Retail,Retail Customer,0.6,N,N,.,N,FICO,541,6 - Special Mention,0.01076,0.38481
2019-01-31,CPTY_01059,Retail,Retail Customer,0.4,N,N,.,N,FICO,646,4 - Bankable,0.01076,0.15092
2019-01-31,CPTY_01562,Retail,Retail Customer,0.32,N,N,.,N,FICO,676,3 - Modest Risk,0.01076,0.06412
2019-01-31,CPTY_01259,Retail,Retail Customer,0.47,Y,Y,2018-06-01,N,FICO,571,5 - Additional Review,0.04305,0.24414
2019-01-31,CPTY_01195,Retail,Retail Customer,0.8,Y,Y,2018-06-01,N,FICO,448,8 - Doubtful,0.04305,0.55766
2019-01-31,CPTY_01110,Retail,Retail Customer,0.21,N,N,.,N,FICO,732,2 - Minimal Risk,0.00068,0.04024
2019-01-31,CPTY_01079,Retail,Retail Customer,0.38,N,N,.,N,FICO,603,4 - Bankable,0.01076,0.18825
2019-01-31,CPTY_01832,Retail,Retail Customer,0.42,N,N,.,N,FICO,631,4 - Bankable,0.01076,0.1071
2019-01-31,CPTY_01281,Retail,Retail Customer,0.4,N,N,.,N,FICO,638,4 - Bankable,0.01076,0.13173
2019-01-31,CPTY_00718,Retail,Retail Customer,0.14,N,N,.,N,FICO,805,1 - Largely Risk Free,0.00024,0.0118
2019-01-31,CPTY_00885,Retail,Retail Customer,0.11,N,N,.,N,FICO,763,1 - Largely Risk Free,0.00024,0.0098
2019-01-31,CPTY_00691,Retail,Retail Customer,0.68,N,N,.,N,FICO,466,7 - Sub-Standard,0.01076,0.47142
2019-01-31,CPTY_01303,Retail,Retail Customer,0.19,N,N,.,N,FICO,733,2 - Minimal Risk,0.00068,0.03371
2019-01-31,CPTY_01388,Retail,Retail Customer,0.5,N,N,.,N,FICO,599,5 - Additional Review,0.01076,0.24586
2019-01-31,CPTY_00608,Retail,Retail Customer,0.5,Y,Y,2018-06-01,Y,FICO,590,5 - Additional Review,0.04305,0.22113
2019-01-31,CPTY_01622,Retail,Retail Customer,0.46,Y,Y,2018-06-01,N,FICO,593,5 - Additional Review,0.04305,0.20291
2019-01-31,CPTY_00900,Retail,Retail Customer,0.52,Y,Y,2018-06-01,N,FICO,552,5 - Additional Review,0.04305,0.24808
2019-01-31,CPTY_00666,Retail,Retail Customer,0.49,N,N,.,N,FICO,586,5 - Additional Review,0.04305,0.1934
2019-01-31,CPTY_01623,Retail,Retail Customer,0.09,N,N,.,N,FICO,759,1 - Largely Risk Free,0.00024,0.01068
2019-01-31,CPTY_00619,Retail,Retail Customer,0.49,N,N,.,N,FICO,575,5 - Additional Review,0.04305,0.25769
2019-01-31,CPTY_00829,Retail,Retail Customer,0.5,N,N,.,N,FICO,570,5 - Additional Review,0.04305,0.21762
2019-01-31,CPTY_01564,Retail,Retail Customer,0.35,N,N,.,N,FICO,617,4 - Bankable,0.01076,0.15929
2019-01-31,CPTY_01196,Retail,Retail Customer,0.51,Y,Y,2018-06-01,N,FICO,597,5 - Additional Review,0.04305,0.23457
2019-01-31,CPTY_01745,Retail,Retail Customer,0.82,Y,Y,2018-06-01,N,FICO,421,8 - Doubtful,0.04305,0.62751
2019-01-31,CPTY_01753,Retail,Retail Customer,0.26,N,N,.,N,FICO,669,3 - Modest Risk,0.01076,0.06039
2019-01-31,CPTY_01397,Retail,Retail Customer,0.1,N,N,.,N,FICO,807,1 - Largely Risk Free,0.00024,0.00694
2019-01-31,CPTY_01797,Retail,Retail Customer,0.4,N,N,.,N,FICO,606,4 - Bankable,0.01076,0.1352
2019-01-31,CPTY_01799,Retail,Retail Customer,0.4,N,N,.,N,FICO,601,4 - Bankable,0.01076,0.12707
2019-01-31,CPTY_01823,Retail,Retail Customer,0.09,N,N,.,N,FICO,810,1 - Largely Risk Free,0.00024,0.00759
2019-01-31,CPTY_01800,Retail,Retail Customer,0.52,N,N,.,N,FICO,597,5 - Additional Review,0.00068,0.21893
2019-01-31,CPTY_01801,Retail,Retail Customer,0.26,N,N,.,N,FICO,692,3 - Modest Risk,0.00068,0.08184
2019-01-31,CPTY_01802,Retail,Retail Customer,0.6,N,N,.,N,FICO,531,6 - Special Mention,0.00068,0.38752
2019-01-31,CPTY_01803,Retail,Retail Customer,0.11,N,N,.,N,FICO,781,1 - Largely Risk Free,0.00068,0.02075
2019-01-31,CPTY_01804,Retail,Retail Customer,0.39,N,N,.,N,FICO,615,4 - Bankable,0.01076,0.13807
2019-01-31,CPTY_00839,Retail,Retail Customer,0.4,N,N,.,N,FICO,650,4 - Bankable,0.01076,0.13642
2019-01-31,CPTY_01825,Retail,Retail Customer,0.4,N,N,.,N,FICO,613,4 - Bankable,0.01076,0.14882
2019-01-31,CPTY_01836,Retail,Retail Customer,0.19,N,N,.,N,FICO,741,2 - Minimal Risk,0.00068,0.04416
2019-01-31,CPTY_01807,Retail,Retail Customer,0.31,N,N,.,N,FICO,658,3 - Modest Risk,0.00068,0.0666
2019-01-31,CPTY_01780,Retail,Retail Customer,0.23,N,N,.,N,FICO,736,2 - Minimal Risk,0.01076,0.05166
2019-01-31,CPTY_01848,Retail,Retail Customer,0.41,N,N,.,N,FICO,603,4 - Bankable,0.01076,0.18582
2019-01-31,CPTY_01184,Retail,Retail Customer,0.36,N,N,.,N,FICO,633,4 - Bankable,0.01076,0.11259
2019-01-31,CPTY_01582,Retail,Retail Customer,0.42,N,N,.,N,FICO,615,4 - Bankable,0.01076,0.11648
2019-01-31,CPTY_01592,Retail,Retail Customer,0.41,Y,Y,2018-06-01,Y,FICO,635,4 - Bankable,0.01076,0.16025
2019-01-31,CPTY_01193,Retail,Retail Customer,0.28,N,N,.,N,FICO,674,3 - Modest Risk,0.01076,0.0773
2019-01-31,CPTY_01182,Retail,Retail Customer,0.57,N,N,.,N,FICO,543,6 - Special Mention,0.17221,0.38136
2019-01-31,CPTY_00984,Retail,Retail Customer,0.38,N,N,.,N,FICO,650,4 - Bankable,0.01076,0.12518
2019-01-31,CPTY_01491,Retail,Retail Customer,0.13,N,N,.,N,FICO,750,1 - Largely Risk Free,0.01076,0.0136
2019-01-31,CPTY_01396,Retail,Retail Customer,0.22,N,N,.,N,FICO,700,2 - Minimal Risk,0.00068,0.04264
2019-01-31,CPTY_00986,Retail,Retail Customer,0.4,N,N,.,N,FICO,625,4 - Bankable,0.01076,0.14114
2019-01-31,CPTY_01656,Retail,Retail Customer,0.08,N,N,.,N,FICO,827,1 - Largely Risk Free,0.00024,0.02
2019-01-31,CPTY_00962,Retail,Retail Customer,1.01,N,N,.,N,FICO,254,9 - Loss,0.01076,1
2019-01-31,CPTY_01410,Retail,Retail Customer,0.13,N,N,.,N,FICO,769,1 - Largely Risk Free,0.00024,0.01144
2019-01-31,CPTY_00788,Retail,Retail Customer,0.48,N,N,.,N,FICO,592,5 - Additional Review,0.04305,0.25513
2019-01-31,CPTY_01684,Retail,Retail Customer,0.81,N,N,.,N,FICO,432,8 - Doubtful,0.00068,0.75201
2019-01-31,CPTY_01507,Retail,Retail Customer,0.52,Y,Y,2018-06-01,N,FICO,565,5 - Additional Review,0.04305,0.19889
2019-01-31,CPTY_01158,Retail,Retail Customer,0.09,N,N,.,N,FICO,812,1 - Largely Risk Free,0.00024,0.03248
2019-01-31,CPTY_01058,Retail,Retail Customer,0.52,N,N,.,N,FICO,552,5 - Additional Review,0.04305,0.21849
2019-01-31,CPTY_01211,Retail,Retail Customer,0.39,N,N,.,N,FICO,637,4 - Bankable,0.00068,0.11125
2019-01-31,CPTY_00846,Retail,Retail Customer,0.08,N,N,.,N,FICO,838,1 - Largely Risk Free,0.00024,0.00689
2019-01-31,CPTY_01391,Retail,Retail Customer,0.43,N,N,.,N,FICO,637,4 - Bankable,0.01076,0.16847
2019-01-31,CPTY_00593,Retail,Retail Customer,0.1,N,N,.,N,FICO,824,1 - Largely Risk Free,0.00024,0.02248
2019-01-31,CPTY_01627,Retail,Retail Customer,0.07,N,N,.,N,FICO,794,1 - Largely Risk Free,0.00024,0.02006
2019-01-31,CPTY_01200,Retail,Retail Customer,0.52,N,N,.,N,FICO,572,5 - Additional Review,0.04305,0.19573
2019-01-31,CPTY_01008,Retail,Retail Customer,0.3,N,N,.,N,FICO,693,3 - Modest Risk,0.00068,0.08283
2019-01-31,CPTY_00841,Retail,Retail Customer,0.23,N,N,.,N,FICO,742,2 - Minimal Risk,0.00068,0.03688
2019-01-31,CPTY_01355,Retail,Retail Customer,0.49,N,N,.,N,FICO,597,5 - Additional Review,0.04305,0.25692
2019-01-31,CPTY_00643,Retail,Retail Customer,0.39,N,N,.,N,FICO,640,4 - Bankable,0.01076,0.15505
2019-01-31,CPTY_01628,Retail,Retail Customer,0.46,N,N,.,N,FICO,578,5 - Additional Review,0.01076,0.23363
2019-01-31,CPTY_00621,Retail,Retail Customer,0.12,N,N,.,N,FICO,847,1 - Largely Risk Free,0.00024,0.01018
2019-01-31,CPTY_01197,Retail,Retail Customer,0.08,N,N,.,N,FICO,823,1 - Largely Risk Free,0.00024,0.02875
2019-01-31,CPTY_01540,Retail,Retail Customer,0.51,N,N,.,N,FICO,550,5 - Additional Review,0.04305,0.23434
2019-01-31,CPTY_01198,Retail,Retail Customer,0.1,N,N,.,N,FICO,794,1 - Largely Risk Free,0.00068,0.00941
2019-01-31,CPTY_00977,Retail,Retail Customer,0.44,N,Y,2017-09-15,N,FICO,650,4 - Bankable,0.17221,0.17499
2019-01-31,CPTY_01727,Retail,Retail Customer,0.45,N,N,.,N,FICO,555,5 - Additional Review,0.01076,0.21784
2019-01-31,CPTY_01830,Retail,Retail Customer,0.73,N,N,.,N,FICO,451,7 - Sub-Standard,0.01076,0.38985
2019-01-31,CPTY_01454,Retail,Retail Customer,0.63,N,N,.,N,FICO,506,6 - Special Mention,0.04305,0.36349
2019-01-31,CPTY_01735,Retail,Retail Customer,0.38,N,N,.,N,FICO,600,4 - Bankable,0.01076,0.163
2019-01-31,CPTY_01177,Retail,Retail Customer,0.41,N,N,.,N,FICO,635,4 - Bankable,0.01076,0.17119
2019-01-31,CPTY_01570,Retail,Retail Customer,0.1,N,N,.,N,FICO,784,1 - Largely Risk Free,0.00024,0.01051
2019-01-31,CPTY_01760,Retail,Retail Customer,0.39,Y,Y,2018-06-01,Y,FICO,630,4 - Bankable,0.01076,0.11931
2019-01-31,CPTY_01843,Retail,Retail Customer,0.1,Y,Y,2018-06-01,N,FICO,838,1 - Largely Risk Free,0.00024,0.02612
2019-01-31,CPTY_00764,Retail,Retail Customer,0.4,N,N,.,N,FICO,618,4 - Bankable,0.01076,0.17534
2019-01-31,CPTY_01777,Retail,Retail Customer,0.17,N,N,.,N,FICO,748,2 - Minimal Risk,0.00068,0.03782
2019-01-31,CPTY_00675,Retail,Retail Customer,0.09,N,N,.,N,FICO,756,1 - Largely Risk Free,0.00024,0.01128
2019-01-31,CPTY_01369,Retail,Retail Customer,0.57,N,N,.,N,FICO,508,6 - Special Mention,0.00024,0.38558
2019-01-31,CPTY_00635,Retail,Retail Customer,0.1,N,N,.,N,FICO,753,1 - Largely Risk Free,0.00024,0.01337
2019-01-31,CPTY_00965,Retail,Retail Customer,0.42,N,N,.,N,FICO,629,4 - Bankable,0.01076,0.10678
2019-01-31,CPTY_00609,Retail,Retail Customer,0.46,N,N,.,N,FICO,558,5 - Additional Review,0.01076,0.19949
2019-01-31,CPTY_01469,Retail,Retail Customer,0.69,N,N,.,N,FICO,495,7 - Sub-Standard,0.01076,0.47521
2019-01-31,CPTY_00972,Retail,Retail Customer,0.12,N,N,.,N,FICO,843,1 - Largely Risk Free,0.00024,0.02527
2019-01-31,CPTY_01480,Retail,Retail Customer,0.19,N,N,.,N,FICO,746,2 - Minimal Risk,0.00068,0.04555
2019-01-31,CPTY_00945,Retail,Retail Customer,0.11,N,N,.,N,FICO,765,1 - Largely Risk Free,0.00024,0.01799
2019-01-31,CPTY_01533,Retail,Retail Customer,0.22,N,N,.,N,FICO,739,2 - Minimal Risk,0.01076,0.03718
2019-01-31,CPTY_01595,Retail,Retail Customer,0.37,N,N,.,N,FICO,603,4 - Bankable,0.01076,0.10981
2019-01-31,CPTY_01188,Retail,Retail Customer,0.41,N,N,.,N,FICO,611,4 - Bankable,0.01076,0.16431
2019-01-31,CPTY_01536,Retail,Retail Customer,0.48,N,Y,2017-06-26,N,FICO,556,5 - Additional Review,0.04305,0.20825
2019-01-31,CPTY_01542,Retail,Retail Customer,0.1,N,N,.,N,FICO,821,1 - Largely Risk Free,0.04305,0.02326
2019-01-31,CPTY_01518,Retail,Retail Customer,0.5,N,N,.,N,FICO,565,5 - Additional Review,0.04305,0.28224
2019-01-31,CPTY_01111,Retail,Retail Customer,0.82,N,N,.,N,FICO,403,8 - Doubtful,0.01076,0.51325
2019-01-31,CPTY_01389,Retail,Retail Customer,0.4,N,N,.,N,FICO,644,4 - Bankable,0.01076,0.16041
2019-01-31,CPTY_00699,Retail,Retail Customer,0.4,N,N,.,N,FICO,626,4 - Bankable,0.01076,0.14838
2019-01-31,CPTY_01012,Retail,Retail Customer,0.19,N,N,.,N,FICO,710,2 - Minimal Risk,0.00068,0.05513
2019-01-31,CPTY_01137,Retail,Retail Customer,1.02,N,N,.,N,FICO,361,9 - Loss,0.00068,1
2019-01-31,CPTY_00763,Retail,Retail Customer,0.51,N,N,.,N,FICO,557,5 - Additional Review,0.04305,0.2772
2019-01-31,CPTY_01625,Retail,Retail Customer,0.4,N,N,.,N,FICO,607,4 - Bankable,0.01076,0.12581
2019-01-31,CPTY_00630,Retail,Retail Customer,0.18,N,N,.,N,FICO,725,2 - Minimal Risk,0.00024,0.04726
2019-01-31,CPTY_00950,Retail,Retail Customer,0.15,N,N,.,N,FICO,850,1 - Largely Risk Free,0.00068,0.0191
2019-01-31,CPTY_00683,Retail,Retail Customer,0.44,N,N,.,N,FICO,646,4 - Bankable,0.01076,0.18123
2019-01-31,CPTY_00794,Retail,Retail Customer,0.5,N,N,.,N,FICO,550,5 - Additional Review,0.04305,0.25233
2019-01-31,CPTY_00604,Retail,Retail Customer,0.29,N,N,.,N,FICO,658,3 - Modest Risk,0.01076,0.06198
2019-01-31,CPTY_01263,Retail,Retail Customer,0.71,N,N,.,N,FICO,487,7 - Sub-Standard,0.00068,0.55488
2019-01-31,CPTY_01806,Retail,Retail Customer,0.39,N,N,.,N,FICO,610,4 - Bankable,0.01076,0.11754
2019-01-31,CPTY_01265,Retail,Retail Customer,0.5,Y,Y,2018-06-01,N,FICO,589,5 - Additional Review,0.04305,0.23387
2019-01-31,CPTY_01029,Retail,Retail Customer,0.38,N,N,.,N,FICO,623,4 - Bankable,0.01076,0.15335
2019-01-31,CPTY_01349,Retail,Retail Customer,0.21,N,N,.,N,FICO,711,2 - Minimal Risk,0.00068,0.05469
2019-01-31,CPTY_01199,Retail,Retail Customer,0.4,N,N,.,N,FICO,605,4 - Bankable,0.01076,0.18397
2019-01-31,CPTY_01626,Retail,Retail Customer,0.57,N,N,.,N,FICO,549,6 - Special Mention,0.04305,0.34889
2019-01-31,CPTY_00661,Retail,Retail Customer,0.11,N,N,.,N,FICO,781,1 - Largely Risk Free,0.00024,0.0083
2019-01-31,CPTY_01390,Retail,Retail Customer,0.4,N,N,.,N,FICO,604,4 - Bankable,0.01076,0.13752
2019-01-31,CPTY_01629,Retail,Retail Customer,0.34,N,N,.,N,FICO,669,3 - Modest Risk,0.00068,0.05819
2019-01-31,CPTY_01038,Retail,Retail Customer,0.41,N,N,.,N,FICO,630,4 - Bankable,0.01076,0.12912
2019-01-31,CPTY_01630,Retail,Retail Customer,0.52,Y,Y,2018-06-01,Y,FICO,581,5 - Additional Review,0.04305,0.24684
2019-01-31,CPTY_01202,Retail,Retail Customer,0.79,N,N,.,N,FICO,449,8 - Doubtful,0.01076,0.58391
2019-01-31,CPTY_01023,Retail,Retail Customer,0.5,Y,Y,2018-06-01,N,FICO,578,5 - Additional Review,0.04305,0.23131
2019-01-31,CPTY_01203,Retail,Retail Customer,0.51,N,N,.,N,FICO,593,5 - Additional Review,0.04305,0.27637
2019-01-31,CPTY_01081,Retail,Retail Customer,0.42,Y,Y,2018-06-01,N,FICO,645,4 - Bankable,0.04305,0.11848
2019-01-31,CPTY_01011,Retail,Retail Customer,0.52,N,N,.,N,FICO,568,5 - Additional Review,0.04305,0.19495
2019-01-31,CPTY_01768,Retail,Retail Customer,0.38,N,N,.,N,FICO,613,4 - Bankable,0.01076,0.12003
2019-01-31,CPTY_01135,Retail,Retail Customer,0.48,N,N,.,N,FICO,557,5 - Additional Review,0.01076,0.21893
2019-01-31,CPTY_00611,Retail,Retail Customer,0.1,N,N,.,N,FICO,775,1 - Largely Risk Free,0.00024,0.02765
2019-01-31,CPTY_00876,Retail,Retail Customer,0.19,N,N,.,N,FICO,749,2 - Minimal Risk,0.00068,0.04856
2019-01-31,CPTY_00975,Retail,Retail Customer,0.36,N,N,.,N,FICO,602,4 - Bankable,0.01076,0.13094
2019-01-31,CPTY_00599,Retail,Retail Customer,0.39,N,N,.,N,FICO,613,4 - Bankable,0.01076,0.16847
2019-01-31,CPTY_01268,Retail,Retail Customer,0.21,N,N,.,N,FICO,750,2 - Minimal Risk,0.00068,0.05054
2019-01-31,CPTY_01839,Retail,Retail Customer,0.38,N,N,.,N,FICO,649,4 - Bankable,0.01076,0.13988
2019-01-31,CPTY_00971,Retail,Retail Customer,0.53,N,N,.,N,FICO,558,5 - Additional Review,0.01076,0.22291
2019-01-31,CPTY_01583,Retail,Retail Customer,0.18,N,N,.,N,FICO,703,2 - Minimal Risk,0.00024,0.04032
2019-01-31,CPTY_00656,Retail,Retail Customer,0.12,N,N,.,N,FICO,840,1 - Largely Risk Free,0.00024,0.0091
2019-01-31,CPTY_01033,Retail,Retail Customer,0.29,N,N,.,N,FICO,676,3 - Modest Risk,0.01076,0.0579
2019-01-31,CPTY_01208,Retail,Retail Customer,0.5,N,N,.,N,FICO,565,5 - Additional Review,0.04305,0.27144
2019-01-31,CPTY_00857,Retail,Retail Customer,0.49,N,N,.,N,FICO,562,5 - Additional Review,0.04305,0.29494
2019-01-31,CPTY_00797,Retail,Retail Customer,0.49,N,N,.,N,FICO,597,5 - Additional Review,0.04305,0.21014
2019-01-31,CPTY_01385,Retail,Retail Customer,0.76,N,N,.,N,FICO,424,8 - Doubtful,0.00068,0.853
2019-01-31,CPTY_01278,Retail,Retail Customer,0.41,N,N,.,N,FICO,628,4 - Bankable,0.01076,0.12221
2019-01-31,CPTY_01652,Retail,Retail Customer,0.38,N,N,.,N,FICO,643,4 - Bankable,0.01076,0.15002
2019-01-31,CPTY_00770,Retail,Retail Customer,0.56,N,N,.,N,FICO,521,6 - Special Mention,0.01076,0.39932
2019-01-31,CPTY_01496,Retail,Retail Customer,0.07,N,N,.,N,FICO,767,1 - Largely Risk Free,0.00024,0.01438
2019-01-31,CPTY_01290,Retail,Retail Customer,0.14,N,N,.,N,FICO,776,1 - Largely Risk Free,0.00068,0.03271
2019-01-31,CPTY_01664,Retail,Retail Customer,0.46,N,N,.,N,FICO,580,5 - Additional Review,0.01076,0.20372
2019-01-31,CPTY_01723,Retail,Retail Customer,0.98,N,Y,2014-03-09,N,FICO,250,9 - Loss,0.17221,1
2019-01-31,CPTY_01301,Retail,Retail Customer,1.03,N,Y,2015-11-09,N,FICO,331,9 - Loss,0.17221,1
2019-01-31,CPTY_01549,Retail,Retail Customer,0.42,N,N,.,N,FICO,626,4 - Bankable,0.01076,0.1272
2019-01-31,CPTY_00995,Retail,Retail Customer,0.42,N,N,.,N,FICO,650,4 - Bankable,0.01076,0.1796
2019-01-31,CPTY_00915,Retail,Retail Customer,1.01,N,N,.,N,FICO,250,9 - Loss,0.01076,1
2019-01-31,CPTY_00842,Retail,Retail Customer,0.4,N,N,.,N,FICO,647,4 - Bankable,0.00068,0.11556
2019-01-31,CPTY_01770,Retail,Retail Customer,0.28,N,N,.,N,FICO,668,3 - Modest Risk,0.01076,0.10218
2019-01-31,CPTY_01124,Retail,Retail Customer,0.09,N,N,.,N,FICO,810,1 - Largely Risk Free,0.00024,0.0223
2019-01-31,CPTY_00793,Retail,Retail Customer,0.27,N,N,.,N,FICO,661,3 - Modest Risk,0.00068,0.05687
2019-01-31,CPTY_01771,Retail,Retail Customer,0.48,N,N,.,N,FICO,573,5 - Additional Review,0.00068,0.20331
2019-01-31,CPTY_01471,Retail,Retail Customer,0.06,N,N,.,N,FICO,830,1 - Largely Risk Free,0.00024,0.03334
2019-01-31,CPTY_01180,Retail,Retail Customer,1,N,N,.,N,FICO,225,9 - Loss,0.00068,1
2019-01-31,CPTY_00893,Retail,Retail Customer,0.42,N,N,.,N,FICO,609,4 - Bankable,0.01076,0.17084
2019-01-31,CPTY_00703,Retail,Retail Customer,0.3,N,N,.,N,FICO,683,3 - Modest Risk,0.01076,0.07302
2019-01-31,CPTY_01103,Retail,Retail Customer,0.31,N,N,.,N,FICO,677,3 - Modest Risk,0.00068,0.08225
2019-01-31,CPTY_01472,Retail,Retail Customer,0.2,N,N,.,N,FICO,726,2 - Minimal Risk,0.00024,0.05676
2019-01-31,CPTY_01366,Retail,Retail Customer,0.39,N,N,.,N,FICO,643,4 - Bankable,0.01076,0.11955
2019-01-31,CPTY_01099,Retail,Retail Customer,0.51,Y,Y,2018-06-01,N,FICO,564,5 - Additional Review,0.04305,0.20909
2019-01-31,CPTY_01772,Retail,Retail Customer,0.52,N,N,.,N,FICO,563,5 - Additional Review,0.04305,0.29317
2019-01-31,CPTY_01773,Retail,Retail Customer,0.48,Y,Y,2018-06-01,N,FICO,573,5 - Additional Review,0.04305,0.19282
2019-01-31,CPTY_01015,Retail,Retail Customer,0.8,Y,Y,2018-06-01,N,FICO,404,8 - Doubtful,0.17221,0.59156
2019-01-31,CPTY_01473,Retail,Retail Customer,0.3,N,N,.,N,FICO,699,3 - Modest Risk,0.00068,0.09081
2019-01-31,CPTY_01774,Retail,Retail Customer,0.07,N,N,.,N,FICO,760,1 - Largely Risk Free,0.00024,0.00797
2019-01-31,CPTY_01306,Retail,Retail Customer,0.99,N,N,.,N,FICO,324,9 - Loss,0.04305,1
2019-01-31,CPTY_01237,Retail,Retail Customer,0.57,N,N,.,N,FICO,533,6 - Special Mention,0.01076,0.40052
2019-01-31,CPTY_01775,Retail,Retail Customer,0.2,N,N,.,N,FICO,704,2 - Minimal Risk,0.00068,0.04076
2019-01-31,CPTY_01776,Retail,Retail Customer,0.58,Y,Y,2018-06-01,N,FICO,520,6 - Special Mention,0.04305,0.36385
2019-01-31,CPTY_00844,Retail,Retail Customer,0.4,N,N,.,N,FICO,623,4 - Bankable,0.01076,0.1427
2019-01-31,CPTY_00834,Retail,Retail Customer,0.21,N,N,.,N,FICO,747,2 - Minimal Risk,0.00068,0.03463
2019-01-31,CPTY_01238,Retail,Retail Customer,0.46,Y,Y,2018-06-01,N,FICO,600,5 - Additional Review,0.04305,0.19321
2019-01-31,CPTY_01846,Retail,Retail Customer,0.22,N,N,.,N,FICO,701,2 - Minimal Risk,0.00068,0.03388
2019-01-31,CPTY_01178,Retail,Retail Customer,0.5,Y,Y,2018-06-01,N,FICO,593,5 - Additional Review,0.04305,0.189
2019-01-31,CPTY_01571,Retail,Retail Customer,0.3,N,N,.,N,FICO,672,3 - Modest Risk,0.01076,0.09642
2019-01-31,CPTY_01524,Retail,Retail Customer,0.19,N,N,.,N,FICO,749,2 - Minimal Risk,0.00068,0.05458
2019-01-31,CPTY_00705,Retail,Retail Customer,0.1,N,N,.,N,FICO,805,1 - Largely Risk Free,0.00024,0.01556
2019-01-31,CPTY_01025,Retail,Retail Customer,0.38,N,N,.,N,FICO,646,4 - Bankable,0.01076,0.11754
2019-01-31,CPTY_01766,Retail,Retail Customer,0.44,N,N,.,N,FICO,624,4 - Bankable,0.01076,0.15787
2019-01-31,CPTY_01065,Retail,Retail Customer,0.69,Y,Y,2018-06-01,N,FICO,495,7 - Sub-Standard,0.04305,0.37269
2019-01-31,CPTY_00657,Retail,Retail Customer,0.53,Y,Y,2018-06-01,N,FICO,586,5 - Additional Review,0.04305,0.23979
2019-01-31,CPTY_01767,Retail,Retail Customer,0.41,N,N,.,N,FICO,623,4 - Bankable,0.01076,0.17746
2019-01-31,CPTY_01363,Retail,Retail Customer,0.13,N,N,.,N,FICO,836,1 - Largely Risk Free,0.00024,0.01042
2019-01-31,CPTY_01716,Retail,Retail Customer,0.42,N,N,.,N,FICO,619,4 - Bankable,0.01076,0.12796
2019-01-31,CPTY_01308,Retail,Retail Customer,0.39,N,N,.,N,FICO,619,4 - Bankable,0.01076,0.14867
2019-01-31,CPTY_01311,Retail,Retail Customer,0.07,N,N,.,N,FICO,785,1 - Largely Risk Free,0.00024,0.01533
2019-01-31,CPTY_00617,Retail,Retail Customer,0.32,N,N,.,N,FICO,659,3 - Modest Risk,0.00068,0.05854
2019-01-31,CPTY_00785,Retail,Retail Customer,0.81,Y,Y,2018-06-01,N,FICO,401,8 - Doubtful,0.04305,0.75277
2019-01-31,CPTY_00831,Retail,Retail Customer,0.96,N,N,.,N,FICO,243,9 - Loss,0.17221,1
2019-01-31,CPTY_01318,Retail,Retail Customer,0.53,N,N,.,N,FICO,554,5 - Additional Review,0.04305,0.20556
2019-01-31,CPTY_00978,Retail,Retail Customer,0.4,N,N,.,N,FICO,631,4 - Bankable,0.01076,0.12039
2019-01-31,CPTY_01696,Retail,Retail Customer,0.42,N,N,.,N,FICO,604,4 - Bankable,0.01076,0.12631
2019-01-31,CPTY_01545,Retail,Retail Customer,0.49,Y,Y,2018-06-01,N,FICO,573,5 - Additional Review,0.04305,0.19456
2019-01-31,CPTY_00629,Retail,Retail Customer,0.39,Y,Y,2018-06-01,N,FICO,612,4 - Bankable,0.01076,0.11614
2019-01-31,CPTY_01714,Retail,Retail Customer,0.41,N,N,.,N,FICO,611,4 - Bankable,0.01076,0.14882
2019-01-31,CPTY_00800,Retail,Retail Customer,1.01,N,N,.,N,FICO,176,9 - Loss,0.00024,1
2019-01-31,CPTY_00969,Retail,Retail Customer,0.41,N,N,.,N,FICO,612,4 - Bankable,0.01076,0.10904
2019-01-31,CPTY_00929,Retail,Retail Customer,0.22,N,N,.,N,FICO,728,2 - Minimal Risk,0.00068,0.03968
2019-01-31,CPTY_01240,Retail,Retail Customer,0.15,N,N,.,N,FICO,764,1 - Largely Risk Free,0.00068,0.03075
2019-01-31,CPTY_01112,Retail,Retail Customer,0.54,N,N,.,N,FICO,583,5 - Additional Review,0.01076,0.21417
2019-01-31,CPTY_00886,Retail,Retail Customer,0.49,Y,Y,2018-06-01,Y,FICO,552,5 - Additional Review,0.17221,0.29464
2019-01-31,CPTY_01129,Retail,Retail Customer,0.17,N,N,.,N,FICO,704,2 - Minimal Risk,0.00068,0.04097
2019-01-31,CPTY_01467,Retail,Retail Customer,0.98,N,N,.,N,FICO,259,9 - Loss,0.17221,1
2019-01-31,CPTY_00987,Retail,Retail Customer,0.4,Y,Y,2018-06-01,N,FICO,622,4 - Bankable,0.04305,0.10342
2019-01-31,CPTY_00674,Retail,Retail Customer,0.12,N,N,.,N,FICO,758,1 - Largely Risk Free,0.00024,0.01373
2019-01-31,CPTY_00679,Retail,Retail Customer,0.49,N,N,.,N,FICO,568,5 - Additional Review,0.01076,0.28622
2019-01-31,CPTY_00956,Retail,Retail Customer,0.12,N,N,.,N,FICO,763,1 - Largely Risk Free,0.00068,0.02361
2019-01-31,CPTY_01726,Retail,Retail Customer,0.42,N,N,.,N,FICO,614,4 - Bankable,0.01076,0.14002
2019-01-31,CPTY_01061,Retail,Retail Customer,0.39,N,N,.,N,FICO,635,4 - Bankable,0.01076,0.12027
2019-01-31,CPTY_01179,Retail,Retail Customer,0.82,Y,Y,2018-06-01,N,FICO,440,8 - Doubtful,0.04305,0.66698
2019-01-31,CPTY_00954,Retail,Retail Customer,0.41,N,N,.,N,FICO,647,4 - Bankable,0.01076,0.1227
2019-01-31,CPTY_00997,Retail,Retail Customer,0.22,N,N,.,N,FICO,704,2 - Minimal Risk,0.00068,0.05203
2019-01-31,CPTY_01115,Retail,Retail Customer,0.11,N,N,.,N,FICO,817,1 - Largely Risk Free,0.00024,0.02824
2019-01-31,CPTY_00879,Retail,Retail Customer,0.71,Y,Y,2018-06-01,N,FICO,454,7 - Sub-Standard,0.04305,0.45339
2019-01-31,CPTY_00941,Retail,Retail Customer,0.42,N,N,.,N,FICO,613,4 - Bankable,0.01076,0.16138
2019-01-31,CPTY_00884,Retail,Retail Customer,0.19,N,N,.,N,FICO,748,2 - Minimal Risk,0.01076,0.0526
2019-01-31,CPTY_01121,Retail,Retail Customer,0.08,N,N,.,N,FICO,761,1 - Largely Risk Free,0.00068,0.01709
2019-01-31,CPTY_00601,Retail,Retail Customer,0.52,Y,Y,2018-06-01,N,FICO,565,5 - Additional Review,0.04305,0.26158
2019-01-31,CPTY_00777,Retail,Retail Customer,0.82,Y,Y,2018-06-01,N,FICO,422,8 - Doubtful,0.04305,0.82613
2019-01-31,CPTY_01842,Retail,Retail Customer,0.6,N,N,.,N,FICO,520,6 - Special Mention,0.00068,0.35772
2019-01-31,CPTY_01120,Retail,Retail Customer,0.52,Y,Y,2018-06-01,N,FICO,559,5 - Additional Review,0.04305,0.24833
2019-01-31,CPTY_00704,Retail,Retail Customer,0.3,N,N,.,N,FICO,663,3 - Modest Risk,0.01076,0.07707
2019-01-31,CPTY_01470,Retail,Retail Customer,0.42,N,N,.,N,FICO,621,4 - Bankable,0.01076,0.11872
2019-01-31,CPTY_00649,Retail,Retail Customer,0.39,N,N,.,N,FICO,604,4 - Bankable,0.01076,0.12964
2019-01-31,CPTY_01234,Retail,Retail Customer,0.17,N,N,.,N,FICO,724,2 - Minimal Risk,0.00068,0.04285
2019-01-31,CPTY_00845,Retail,Retail Customer,0.2,N,N,.,N,FICO,711,2 - Minimal Risk,0.00068,0.04591
2019-01-31,CPTY_00904,Retail,Retail Customer,0.4,N,N,.,N,FICO,624,4 - Bankable,0.01076,0.14213
2019-01-31,CPTY_01094,Retail,Retail Customer,0.21,N,N,.,N,FICO,746,2 - Minimal Risk,0.00068,0.03378
2019-01-31,CPTY_01844,Retail,Retail Customer,0.79,Y,Y,2018-06-01,N,FICO,436,8 - Doubtful,0.04305,0.75126
2019-01-31,CPTY_01105,Retail,Retail Customer,0.1,N,N,.,N,FICO,830,1 - Largely Risk Free,0.00024,0.01599
2019-01-31,CPTY_01845,Retail,Retail Customer,0.6,N,N,.,N,FICO,536,6 - Special Mention,0.01076,0.36385
2019-01-31,CPTY_01101,Retail,Retail Customer,0.42,N,N,.,N,FICO,647,4 - Bankable,0.01076,0.10872
2019-01-31,CPTY_01235,Retail,Retail Customer,0.4,N,N,.,N,FICO,613,4 - Bankable,0.01076,0.16251
2019-01-31,CPTY_01526,Retail,Retail Customer,0.48,N,N,.,N,FICO,583,5 - Additional Review,0.01076,0.23039
2019-01-31,CPTY_01097,Retail,Retail Customer,0.43,N,N,.,N,FICO,604,4 - Bankable,0.00068,0.17996
2019-01-31,CPTY_01034,Retail,Retail Customer,0.5,Y,Y,2018-06-01,N,FICO,593,5 - Additional Review,0.04305,0.21632
2019-01-31,CPTY_01104,Retail,Retail Customer,0.09,N,N,.,N,FICO,804,1 - Largely Risk Free,0.00024,0.01788
2019-01-31,CPTY_00976,Retail,Retail Customer,0.22,N,N,.,N,FICO,732,2 - Minimal Risk,0.00068,0.04072
2019-01-31,CPTY_01364,Retail,Retail Customer,0.5,Y,Y,2018-06-01,N,FICO,591,5 - Additional Review,0.04305,0.25436
2019-01-31,CPTY_01037,Retail,Retail Customer,0.4,N,N,.,N,FICO,602,4 - Bankable,0.01076,0.12925
2019-01-31,CPTY_01236,Retail,Retail Customer,0.09,N,N,.,N,FICO,815,1 - Largely Risk Free,0.00024,0.02657
2019-01-31,CPTY_01365,Retail,Retail Customer,0.41,N,N,.,N,FICO,605,4 - Bankable,0.00024,0.11237
2019-01-31,CPTY_01483,Retail,Retail Customer,0.49,N,N,.,N,FICO,581,5 - Additional Review,0.04305,0.26185
2019-01-31,CPTY_01584,Retail,Retail Customer,0.38,N,N,.,N,FICO,608,4 - Bankable,0.01076,0.1173
2019-01-31,CPTY_01374,Retail,Retail Customer,0.11,N,N,.,N,FICO,819,1 - Largely Risk Free,0.00024,0.02838
2019-01-31,CPTY_01243,Retail,Retail Customer,0.83,Y,Y,2018-06-01,N,FICO,436,8 - Doubtful,0.04305,0.60411
2019-01-31,CPTY_00615,Retail,Retail Customer,0.4,N,N,.,N,FICO,631,4 - Bankable,0.01076,0.17325
2019-01-31,CPTY_00696,Retail,Retail Customer,0.31,N,Y,2016-01-09,N,FICO,700,3 - Modest Risk,0.04305,0.06674
2019-01-31,CPTY_01368,Retail,Retail Customer,0.29,N,N,.,N,FICO,687,3 - Modest Risk,0.04305,0.07472
2019-01-31,CPTY_01590,Retail,Retail Customer,0.37,N,N,.,N,FICO,618,4 - Bankable,0.00068,0.1617
2019-01-31,CPTY_01095,Retail,Retail Customer,0.56,Y,Y,2018-06-01,Y,FICO,534,6 - Special Mention,0.01076,0.36862
2019-01-31,CPTY_01525,Retail,Retail Customer,0.52,Y,Y,2018-06-01,Y,FICO,580,5 - Additional Review,0.04305,0.25183
2019-01-31,CPTY_01377,Retail,Retail Customer,0.39,Y,Y,2018-06-01,N,FICO,624,4 - Bankable,0.01076,0.13493
2019-01-31,CPTY_01795,Retail,Retail Customer,0.43,N,N,.,N,FICO,649,4 - Bankable,0.00068,0.11848
2019-01-31,CPTY_01792,Retail,Retail Customer,0.23,N,N,.,N,FICO,713,2 - Minimal Risk,0.00068,0.0446
2019-01-31,CPTY_01244,Retail,Retail Customer,0.22,N,N,.,N,FICO,703,2 - Minimal Risk,0.00068,0.05281
2019-01-31,CPTY_01796,Retail,Retail Customer,0.54,Y,Y,2018-06-01,N,FICO,564,5 - Additional Review,0.04305,0.19186
2019-01-31,CPTY_01484,Retail,Retail Customer,0.5,N,N,.,N,FICO,600,5 - Additional Review,0.00068,0.19186
2019-01-31,CPTY_01251,Retail,Retail Customer,0.32,N,N,.,N,FICO,697,3 - Modest Risk,0.00068,0.08094
2019-01-31,CPTY_00909,Retail,Retail Customer,0.41,N,N,.,N,FICO,640,4 - Bankable,0.01076,0.18195
2019-01-31,CPTY_01246,Retail,Retail Customer,0.13,N,N,.,N,FICO,830,1 - Largely Risk Free,0.00068,0.01296
2019-01-31,CPTY_01599,Retail,Retail Customer,0.36,N,N,.,N,FICO,601,4 - Bankable,0.01076,0.15945
2019-01-31,CPTY_01018,Retail,Retail Customer,0.15,N,N,.,N,FICO,840,1 - Largely Risk Free,0.00024,0.02385
2019-01-31,CPTY_01166,Retail,Retail Customer,0.62,Y,Y,2018-06-01,N,FICO,514,6 - Special Mention,0.01076,0.38674
2019-01-31,CPTY_00590,Retail,Retail Customer,0.97,N,N,.,N,FICO,391,9 - Loss,0.04305,1
2019-01-31,CPTY_00712,Retail,Retail Customer,0.42,N,N,.,N,FICO,639,4 - Bankable,0.01076,0.16864
2019-01-31,CPTY_01379,Retail,Retail Customer,0.82,N,N,.,N,FICO,438,8 - Doubtful,0.00024,0.76414
2019-01-31,CPTY_01593,Retail,Retail Customer,0.48,N,N,.,N,FICO,582,5 - Additional Review,0.04305,0.25133
2019-01-31,CPTY_00709,Retail,Retail Customer,0.71,N,N,.,N,FICO,465,7 - Sub-Standard,0.17221,0.50258
2019-01-31,CPTY_01596,Retail,Retail Customer,0.08,N,N,.,N,FICO,780,1 - Largely Risk Free,0.00024,0.03044
2019-01-31,CPTY_01191,Retail,Retail Customer,0.49,N,N,.,N,FICO,554,5 - Additional Review,0.01076,0.22135
2019-01-31,CPTY_01597,Retail,Retail Customer,0.18,N,N,.,N,FICO,700,2 - Minimal Risk,0.00068,0.05415
2019-01-31,CPTY_01598,Retail,Retail Customer,0.38,N,N,.,N,FICO,618,4 - Bankable,0.01076,0.1396
2019-01-31,CPTY_00863,Retail,Retail Customer,0.09,N,N,.,N,FICO,798,1 - Largely Risk Free,0.00068,0.01233
2019-01-31,CPTY_00721,Retail,Retail Customer,0.5,N,N,.,N,FICO,556,5 - Additional Review,0.00068,0.18881
2019-01-31,CPTY_01534,Retail,Retail Customer,0.49,N,N,.,N,FICO,589,5 - Additional Review,0.01076,0.23812
2019-01-31,CPTY_01485,Retail,Retail Customer,0.18,N,N,.,N,FICO,718,2 - Minimal Risk,0.00068,0.03976
2019-01-31,CPTY_00852,Retail,Retail Customer,0.11,N,N,.,N,FICO,848,1 - Largely Risk Free,0.00024,0.03002
2019-01-31,CPTY_01067,Retail,Retail Customer,0.41,N,N,.,N,FICO,645,4 - Bankable,0.01076,0.16041
2019-01-31,CPTY_01606,Retail,Retail Customer,0.19,N,N,.,N,FICO,718,2 - Minimal Risk,0.00068,0.0406
2019-01-31,CPTY_00901,Retail,Retail Customer,0.4,N,N,.,N,FICO,615,4 - Bankable,0.01076,0.1054
2019-01-31,CPTY_01613,Retail,Retail Customer,0.38,N,N,.,N,FICO,634,4 - Bankable,0.01076,0.16813
2019-01-31,CPTY_01247,Retail,Retail Customer,0.09,N,N,.,N,FICO,770,1 - Largely Risk Free,0.00024,0.02612
2019-01-31,CPTY_01600,Retail,Retail Customer,0.41,N,N,.,N,FICO,612,4 - Bankable,0.01076,0.1736
2019-01-31,CPTY_00744,Retail,Retail Customer,0.15,N,N,.,N,FICO,770,1 - Largely Risk Free,0.00024,0.00895
2019-01-31,CPTY_01778,Retail,Retail Customer,0.62,N,N,.,N,FICO,514,6 - Special Mention,0.01076,0.37121
2019-01-31,CPTY_01762,Retail,Retail Customer,0.2,N,N,.,N,FICO,747,2 - Minimal Risk,0.00024,0.0534
2019-01-31,CPTY_00911,Retail,Retail Customer,0.2,N,N,.,N,FICO,738,2 - Minimal Risk,0.00068,0.04661
2019-01-31,CPTY_01607,Retail,Retail Customer,0.48,N,N,.,N,FICO,567,5 - Additional Review,0.04305,0.23575
2019-01-31,CPTY_01609,Retail,Retail Customer,0.17,N,N,.,N,FICO,749,2 - Minimal Risk,0.04305,0.03558
2019-01-31,CPTY_00902,Retail,Retail Customer,0.22,N,N,.,N,FICO,738,2 - Minimal Risk,0.00024,0.0432
2019-01-31,CPTY_01383,Retail,Retail Customer,0.42,N,N,.,N,FICO,648,4 - Bankable,0.00068,0.11943
2019-01-31,CPTY_00652,Retail,Retail Customer,0.52,N,N,.,N,FICO,597,5 - Additional Review,0.01076,0.28422
2019-01-31,CPTY_01488,Retail,Retail Customer,0.1,N,N,.,N,FICO,846,1 - Largely Risk Free,0.00024,0.00681
2019-01-31,CPTY_01535,Retail,Retail Customer,0.4,N,N,.,N,FICO,640,4 - Bankable,0.01076,0.14646
2019-01-31,CPTY_01610,Retail,Retail Customer,0.52,N,N,.,N,FICO,597,5 - Additional Review,0.01076,0.27859
2019-01-31,CPTY_01254,Retail,Retail Customer,0.39,N,N,.,N,FICO,637,4 - Bankable,0.01076,0.15183
2019-01-31,CPTY_00840,Retail,Retail Customer,0.4,N,N,.,N,FICO,620,4 - Bankable,0.01076,0.11058
2019-01-31,CPTY_01594,Retail,Retail Customer,0.5,N,N,.,N,FICO,565,5 - Additional Review,0.04305,0.2025
2019-01-31,CPTY_01378,Retail,Retail Customer,0.28,N,N,.,N,FICO,700,3 - Modest Risk,0.00068,0.05943
2019-01-31,CPTY_01249,Retail,Retail Customer,0.53,N,N,.,N,FICO,559,5 - Additional Review,0.01076,0.19929
2019-01-31,CPTY_01250,Retail,Retail Customer,0.44,N,N,.,N,FICO,627,4 - Bankable,0.01076,0.14327
2019-01-31,CPTY_01486,Retail,Retail Customer,0.09,N,N,.,N,FICO,770,1 - Largely Risk Free,0.00024,0.02578
2019-01-31,CPTY_01026,Retail,Retail Customer,0.4,N,N,.,N,FICO,631,4 - Bankable,0.01076,0.18563
2019-01-31,CPTY_01344,Retail,Retail Customer,0.11,N,N,.,N,FICO,752,1 - Largely Risk Free,0.00024,0.01369
2019-01-31,CPTY_00870,Retail,Retail Customer,0.71,N,N,.,N,FICO,451,7 - Sub-Standard,0.01076,0.5644
2019-01-31,CPTY_01255,Retail,Retail Customer,0.09,N,N,.,N,FICO,813,1 - Largely Risk Free,0.00024,0.00746
2019-01-31,CPTY_01561,Retail,Retail Customer,0.09,N,N,.,N,FICO,758,1 - Largely Risk Free,0.00024,0.01108
2019-01-31,CPTY_01291,Retail,Retail Customer,0.44,Y,Y,2018-06-01,Y,FICO,639,4 - Bankable,0.01076,0.14016
2019-01-31,CPTY_01256,Retail,Retail Customer,0.52,N,N,.,N,FICO,571,5 - Additional Review,0.04305,0.18957
2019-01-31,CPTY_00751,Retail,Retail Customer,0.4,N,N,.,N,FICO,612,4 - Bankable,0.01076,0.11509
2019-01-31,CPTY_01257,Retail,Retail Customer,0.21,N,N,.,N,FICO,739,2 - Minimal Risk,0.00068,0.03752
2019-01-31,CPTY_00681,Retail,Retail Customer,0.17,N,N,.,N,FICO,727,2 - Minimal Risk,0.00068,0.04841
2019-01-31,CPTY_01680,Retail,Retail Customer,0.61,N,N,.,N,FICO,507,6 - Special Mention,0.01076,0.3524
2019-01-31,CPTY_01021,Retail,Retail Customer,0.63,N,N,.,N,FICO,528,6 - Special Mention,0.00024,0.36059
2019-01-31,CPTY_01416,Retail,Retail Customer,0.52,N,N,.,N,FICO,553,5 - Additional Review,0.04305,0.20867
2019-01-31,CPTY_00983,Retail,Retail Customer,0.2,N,N,.,N,FICO,734,2 - Minimal Risk,0.00068,0.0488
2019-01-31,CPTY_00873,Retail,Retail Customer,0.07,N,N,.,N,FICO,792,1 - Largely Risk Free,0.00024,0.0099
2019-01-31,CPTY_00871,Retail,Retail Customer,0.5,N,N,.,N,FICO,562,5 - Additional Review,0.04305,0.24586
2019-01-31,CPTY_01260,Retail,Retail Customer,0.3,N,N,.,N,FICO,658,3 - Modest Risk,0.01076,0.06451
2019-01-31,CPTY_00618,Retail,Retail Customer,0.09,N,N,.,N,FICO,832,1 - Largely Risk Free,0.00024,0.01205
2019-01-31,CPTY_01055,Retail,Retail Customer,0.31,N,N,.,N,FICO,650,3 - Modest Risk,0.00068,0.08217
2019-01-31,CPTY_01258,Retail,Retail Customer,0.39,N,N,.,N,FICO,648,4 - Bankable,0.04305,0.10582
2019-01-31,CPTY_00804,Retail,Retail Customer,0.38,N,N,.,N,FICO,647,4 - Bankable,0.01076,0.11544
2019-01-31,CPTY_00646,Retail,Retail Customer,0.38,N,N,.,N,FICO,628,4 - Bankable,0.01076,0.11327
2019-01-31,CPTY_01614,Retail,Retail Customer,0.37,N,N,.,N,FICO,640,4 - Bankable,0.01076,0.14987
2019-01-31,CPTY_01035,Retail,Retail Customer,0.68,Y,Y,2018-06-01,Y,FICO,464,7 - Sub-Standard,0.04305,0.33221
2019-01-31,CPTY_01537,Retail,Retail Customer,0.51,Y,Y,2018-06-01,Y,FICO,584,5 - Additional Review,0.04305,0.20169
2019-01-31,CPTY_01221,Retail,Retail Customer,0.38,N,N,.,N,FICO,613,4 - Bankable,0.01076,0.16663
2019-01-31,CPTY_01194,Retail,Retail Customer,0.12,Y,Y,2018-06-01,Y,FICO,775,1 - Largely Risk Free,0.00024,0.01576
2019-01-31,CPTY_01539,Retail,Retail Customer,0.49,Y,Y,2018-06-01,Y,FICO,591,5 - Additional Review,0.17221,0.21438
2019-01-31,CPTY_01220,Retail,Retail Customer,0.72,Y,Y,2018-06-01,Y,FICO,489,7 - Sub-Standard,0.00269,0.32595
2019-01-31,CPTY_00790,Retail,Retail Customer,0.38,N,N,.,N,FICO,600,4 - Bankable,0.01076,0.17552
2019-01-31,CPTY_00711,Retail,Retail Customer,0.5,N,N,.,N,FICO,596,5 - Additional Review,0.01076,0.27472
2019-01-31,CPTY_01089,Retail,Retail Customer,0.32,N,N,.,N,FICO,689,3 - Modest Risk,0.00068,0.09642
2019-01-31,CPTY_01071,Retail,Retail Customer,0.34,N,N,.,N,FICO,670,3 - Modest Risk,0.00068,0.09227
2019-01-31,CPTY_01387,Retail,Retail Customer,0.68,N,N,.,N,FICO,467,7 - Sub-Standard,0.01076,0.45475
2019-01-31,CPTY_01612,Retail,Retail Customer,0.52,N,N,.,N,FICO,553,5 - Additional Review,0.00068,0.26369
2019-01-31,CPTY_01616,Retail,Retail Customer,0.59,N,Y,2016-05-01,N,FICO,513,6 - Special Mention,0.17221,0.38328
2019-01-31,CPTY_00597,Retail,Retail Customer,0.58,N,Y,2013-08-07,N,FICO,532,6 - Special Mention,0.17221,0.39892
2019-01-31,CPTY_00980,Retail,Retail Customer,0.27,Y,Y,2018-06-01,N,FICO,666,3 - Modest Risk,0.00269,0.0586
2019-01-31,CPTY_00811,Retail,Retail Customer,0.5,Y,Y,2018-06-01,N,FICO,556,5 - Additional Review,0.17221,0.22268
2019-01-31,CPTY_01262,Retail,Retail Customer,0.58,N,N,.,N,FICO,533,6 - Special Mention,0.17221,0.34854
2019-01-31,CPTY_00637,Retail,Retail Customer,0.2,N,N,.,N,FICO,736,2 - Minimal Risk,0.00068,0.04919
2019-01-31,CPTY_00061,Retail,Retail Customer,0.67,N,N,.,N,FICO,482,7 - Sub-Standard,0.00024,0.54389
2019-01-31,CPTY_00189,Retail,Retail Customer,0.38,N,N,.,N,FICO,603,4 - Bankable,0.01076,0.13134
2019-01-31,CPTY_00059,Retail,Retail Customer,0.3,Y,Y,2018-06-01,N,FICO,687,3 - Modest Risk,0.00269,0.06974
2019-01-31,CPTY_00117,Retail,Retail Customer,0.28,N,N,.,N,FICO,676,3 - Modest Risk,0.01076,0.09585
2019-01-31,CPTY_00269,Retail,Retail Customer,0.32,Y,Y,2018-06-01,N,FICO,699,3 - Modest Risk,0.00269,0.06386
2019-01-31,CPTY_00384,Retail,Retail Customer,0.42,N,N,.,N,FICO,621,4 - Bankable,0.01076,0.1585
2019-01-31,CPTY_00244,Retail,Retail Customer,0.78,N,N,.,N,FICO,417,8 - Doubtful,0.01076,0.63318
2019-01-31,CPTY_00247,Retail,Retail Customer,0.42,N,N,.,N,FICO,640,4 - Bankable,0.01076,0.13016
2019-01-31,CPTY_00395,Retail,Retail Customer,0.37,Y,Y,2018-06-01,N,FICO,616,4 - Bankable,0.01076,0.11931
2019-01-31,CPTY_00510,Retail,Retail Customer,0.07,N,N,.,N,FICO,765,1 - Largely Risk Free,0.00024,0.01781
2019-01-31,CPTY_00379,Retail,Retail Customer,0.42,N,Y,2015-09-22,N,FICO,638,4 - Bankable,0.01076,0.13918
2019-01-31,CPTY_00566,Retail,Retail Customer,0.1,N,N,.,N,FICO,812,1 - Largely Risk Free,0.00024,0.00726
2019-01-31,CPTY_00399,Retail,Retail Customer,0.39,Y,Y,2018-06-01,N,FICO,629,4 - Bankable,0.01076,0.15382
2019-01-31,CPTY_00385,Retail,Retail Customer,0.69,N,N,.,N,FICO,464,7 - Sub-Standard,0.01076,0.41895
2019-01-31,CPTY_00318,Retail,Retail Customer,0.81,Y,Y,2018-06-01,N,FICO,421,8 - Doubtful,0.01076,0.53848
2019-01-31,CPTY_00082,Retail,Retail Customer,0.41,N,N,.,N,FICO,604,4 - Bankable,0.01076,0.14942
2019-01-31,CPTY_00239,Retail,Retail Customer,0.41,N,Y,2017-12-21,N,FICO,644,4 - Bankable,0.01076,0.1648
2019-01-31,CPTY_00159,Retail,Retail Customer,0.41,Y,Y,2018-06-01,N,FICO,634,4 - Bankable,0.01076,0.13697
2019-01-31,CPTY_00110,Retail,Retail Customer,0.31,N,N,.,N,FICO,695,3 - Modest Risk,0.01076,0.09145
2019-01-31,CPTY_00536,Retail,Retail Customer,0.64,Y,Y,2018-06-01,N,FICO,545,6 - Special Mention,0.17221,0.35345
2019-01-31,CPTY_00330,Retail,Retail Customer,0.11,N,N,.,N,FICO,821,1 - Largely Risk Free,0.00024,0.01119
2019-01-31,CPTY_00027,Retail,Retail Customer,0.4,N,Y,2015-07-01,N,FICO,635,4 - Bankable,0.00068,0.11824
2019-01-31,CPTY_00155,Retail,Retail Customer,0.12,N,N,.,N,FICO,837,1 - Largely Risk Free,0.00068,0.0139
2019-01-31,CPTY_00133,Retail,Retail Customer,0.33,N,N,.,N,FICO,696,3 - Modest Risk,0.00269,0.10016
2019-01-31,CPTY_00287,Retail,Retail Customer,0.52,Y,Y,2018-06-01,N,FICO,597,5 - Additional Review,0.17221,0.23457
2019-01-31,CPTY_00230,Retail,Retail Customer,0.27,N,N,.,N,FICO,654,3 - Modest Risk,0.01076,0.07723
2019-01-31,CPTY_00199,Retail,Retail Customer,0.31,N,N,.,N,FICO,662,3 - Modest Risk,0.00269,0.08324
2019-01-31,CPTY_00576,Retail,Retail Customer,0.2,N,N,.,N,FICO,730,2 - Minimal Risk,0.00068,0.05034
2019-01-31,CPTY_00206,Retail,Retail Customer,0.1,N,N,.,N,FICO,837,1 - Largely Risk Free,0.01076,0.00931
2019-01-31,CPTY_00262,Retail,Retail Customer,0.53,Y,Y,2018-06-01,N,FICO,586,5 - Additional Review,0.17221,0.20993
2019-01-31,CPTY_00079,Retail,Retail Customer,0.63,Y,Y,2018-06-01,N,FICO,535,6 - Special Mention,0.17221,0.3624
2019-01-31,CPTY_00245,Retail,Retail Customer,0.22,Y,Y,2018-06-01,N,FICO,740,2 - Minimal Risk,0.01076,0.03398
2019-01-31,CPTY_00410,Retail,Retail Customer,0.31,N,Y,2013-12-23,N,FICO,661,3 - Modest Risk,0.00269,0.06788
2019-01-31,CPTY_00093,Retail,Retail Customer,0.29,N,N,.,N,FICO,689,3 - Modest Risk,0.00269,0.07502
2019-01-31,CPTY_00437,Retail,Retail Customer,0.41,N,Y,2018-01-28,N,FICO,603,4 - Bankable,0.01076,0.1097
2019-01-31,CPTY_00070,Retail,Retail Customer,0.38,N,N,.,N,FICO,632,4 - Bankable,0.01076,0.12136
2019-01-31,CPTY_00480,Retail,Retail Customer,0.39,N,N,.,N,FICO,638,4 - Bankable,0.01076,0.10948
2019-01-31,CPTY_00375,Retail,Retail Customer,0.43,N,Y,2018-05-01,N,FICO,606,4 - Bankable,0.01076,0.11979
2019-01-31,CPTY_00194,Retail,Retail Customer,0.76,N,N,.,N,FICO,428,8 - Doubtful,0.00068,0.62438
2019-01-31,CPTY_00074,Retail,Retail Customer,1.02,Y,Y,2018-06-01,N,FICO,185,9 - Loss,0.6,1
2019-01-31,CPTY_00387,Retail,Retail Customer,0.18,Y,Y,2018-06-01,N,FICO,732,2 - Minimal Risk,0.00269,0.05239
2019-01-31,CPTY_00338,Retail,Retail Customer,0.28,N,Y,2013-10-19,N,FICO,667,3 - Modest Risk,0.00269,0.0687
2019-01-31,CPTY_00555,Retail,Retail Customer,0.21,N,N,.,N,FICO,746,2 - Minimal Risk,0.01076,0.03782
2019-01-31,CPTY_00237,Retail,Retail Customer,0.23,N,Y,2014-10-04,N,FICO,720,2 - Minimal Risk,0.01076,0.04175
2019-01-31,CPTY_00321,Retail,Retail Customer,0.4,N,N,.,N,FICO,619,4 - Bankable,0.01076,0.12861
2019-01-31,CPTY_00145,Retail,Retail Customer,0.26,Y,Y,2018-06-01,N,FICO,696,3 - Modest Risk,0.01076,0.08518
2019-01-31,CPTY_00585,Retail,Retail Customer,0.42,N,N,.,N,FICO,650,4 - Bankable,0.01076,0.15305
2019-01-31,CPTY_00530,Retail,Retail Customer,0.39,N,N,.,N,FICO,610,4 - Bankable,0.01076,0.10926
2019-01-31,CPTY_00073,Retail,Retail Customer,0.44,Y,Y,2018-06-01,N,FICO,616,4 - Bankable,0.01076,0.10487
2019-01-31,CPTY_00453,Retail,Retail Customer,0.8,N,N,.,N,FICO,402,8 - Doubtful,0.00068,0.62625
2019-01-31,CPTY_00253,Retail,Retail Customer,0.61,Y,Y,2018-06-01,N,FICO,526,6 - Special Mention,0.17221,0.36313
2019-01-31,CPTY_00077,Retail,Retail Customer,0.4,N,N,.,N,FICO,632,4 - Bankable,0.01076,0.145
2019-01-31,CPTY_00215,Retail,Retail Customer,0.43,Y,Y,2018-06-01,N,FICO,635,4 - Bankable,0.01076,0.18507
2019-01-31,CPTY_00492,Retail,Retail Customer,0.39,Y,Y,2018-06-01,N,FICO,611,4 - Bankable,0.01076,0.14128
2019-01-31,CPTY_00012,Retail,Retail Customer,0.61,N,N,.,N,FICO,531,6 - Special Mention,0.01076,0.36458
2019-01-31,CPTY_00259,Retail,Retail Customer,0.33,N,N,.,N,FICO,686,3 - Modest Risk,0.00269,0.078
2019-01-31,CPTY_00316,Retail,Retail Customer,0.12,N,N,.,N,FICO,804,1 - Largely Risk Free,0.00024,0.01159
2019-01-31,CPTY_00192,Retail,Retail Customer,0.36,N,N,.,N,FICO,628,4 - Bankable,0.01076,0.1563
2019-01-31,CPTY_00514,Retail,Retail Customer,0.28,Y,Y,2018-06-01,N,FICO,668,3 - Modest Risk,0.00269,0.07895
2019-01-31,CPTY_00072,Retail,Retail Customer,0.08,N,N,.,N,FICO,782,1 - Largely Risk Free,0.00024,0.0201
2019-01-31,CPTY_00493,Retail,Retail Customer,0.37,Y,Y,2018-06-01,N,FICO,648,4 - Bankable,0.01076,0.14558
2019-01-31,CPTY_00301,Retail,Retail Customer,0.41,Y,Y,2018-06-01,N,FICO,601,4 - Bankable,0.00269,0.10646
2019-01-31,CPTY_00138,Retail,Retail Customer,0.42,Y,Y,2018-06-01,N,FICO,600,4 - Bankable,0.17221,0.17871
2019-01-31,CPTY_00193,Retail,Retail Customer,0.19,N,N,.,N,FICO,715,2 - Minimal Risk,0.00068,0.04234
2019-01-31,CPTY_00489,Retail,Retail Customer,0.6,Y,Y,2018-06-01,N,FICO,517,6 - Special Mention,0.01076,0.35629
2019-01-31,CPTY_00458,Retail,Retail Customer,0.13,N,N,.,N,FICO,821,1 - Largely Risk Free,0.00024,0.01709
2019-01-31,CPTY_00356,Retail,Retail Customer,0.12,N,N,.,N,FICO,845,1 - Largely Risk Free,0.00024,0.02816
2019-01-31,CPTY_00310,Retail,Retail Customer,0.6,N,Y,2013-09-22,N,FICO,537,6 - Special Mention,0.01076,0.35169
2019-01-31,CPTY_00302,Retail,Retail Customer,0.4,N,N,.,N,FICO,641,4 - Bankable,0.01076,0.11931
2019-01-31,CPTY_00139,Retail,Retail Customer,0.62,Y,Y,2018-06-01,N,FICO,526,6 - Special Mention,0.17221,0.3524
2019-01-31,CPTY_00296,Retail,Retail Customer,0.35,N,N,.,N,FICO,603,4 - Bankable,0.01076,0.1529
2019-01-31,CPTY_00339,Retail,Retail Customer,0.7,N,Y,2014-12-12,N,FICO,451,7 - Sub-Standard,0.01076,0.51582
2019-01-31,CPTY_00298,Retail,Retail Customer,0.61,Y,Y,2018-06-01,N,FICO,550,6 - Special Mention,0.17221,0.37381
2019-01-31,CPTY_00438,Retail,Retail Customer,0.24,N,Y,2017-03-11,N,FICO,693,3 - Modest Risk,0.00269,0.06707
2019-01-31,CPTY_00165,Retail,Retail Customer,0.28,Y,Y,2018-06-01,N,FICO,684,3 - Modest Risk,0.00269,0.07383
2019-01-31,CPTY_00166,Retail,Retail Customer,0.07,N,N,.,N,FICO,833,1 - Largely Risk Free,0.00024,0.02984
2019-01-31,CPTY_00152,Retail,Retail Customer,0.33,Y,Y,2018-06-01,N,FICO,693,3 - Modest Risk,0.00269,0.0638
2019-01-31,CPTY_00537,Retail,Retail Customer,0.4,N,N,.,N,FICO,630,4 - Bankable,0.01076,0.15834
2019-01-31,CPTY_00556,Retail,Retail Customer,0.48,Y,Y,2018-06-01,N,FICO,556,5 - Additional Review,0.17221,0.22113
2019-01-31,CPTY_00203,Retail,Retail Customer,0.31,N,N,.,N,FICO,658,3 - Modest Risk,0.00269,0.09045
2019-01-31,CPTY_00347,Retail,Retail Customer,0.42,Y,Y,2018-06-01,N,FICO,623,4 - Bankable,0.01076,0.14171
2019-01-31,CPTY_00201,Retail,Retail Customer,0.32,N,N,.,N,FICO,660,3 - Modest Risk,0.00269,0.06528
2019-01-31,CPTY_00309,Retail,Retail Customer,0.1,N,N,.,N,FICO,788,1 - Largely Risk Free,0.00024,0.00821
2019-01-31,CPTY_00102,Retail,Retail Customer,0.41,Y,Y,2018-06-01,N,FICO,605,4 - Bankable,0.01076,0.12543
2019-01-31,CPTY_00341,Retail,Retail Customer,0.31,Y,Y,2018-06-01,N,FICO,690,3 - Modest Risk,0.00269,0.09808
2019-01-31,CPTY_00120,Retail,Retail Customer,0.43,Y,Y,2018-06-01,N,FICO,621,4 - Bankable,0.01076,0.17343
2019-01-31,CPTY_00065,Retail,Retail Customer,0.61,Y,Y,2018-06-01,N,FICO,528,6 - Special Mention,0.01076,0.35204
2019-01-31,CPTY_00386,Retail,Retail Customer,0.32,N,N,.,N,FICO,693,3 - Modest Risk,0.00269,0.09126
2019-01-31,CPTY_00255,Retail,Retail Customer,0.99,Y,Y,2018-06-01,N,FICO,341,9 - Loss,0.6,1
2019-01-31,CPTY_00447,Retail,Retail Customer,0.4,Y,Y,2018-06-01,N,FICO,643,4 - Bankable,0.01076,0.11813
2019-01-31,CPTY_00094,Retail,Retail Customer,0.32,N,N,.,N,FICO,669,3 - Modest Risk,0.01076,0.06836
2019-01-31,CPTY_00180,Retail,Retail Customer,1.03,Y,Y,2018-06-01,N,FICO,243,9 - Loss,0.6,1
2019-01-31,CPTY_00335,Retail,Retail Customer,0.44,N,N,.,N,FICO,600,4 - Bankable,0.00269,0.16965
2019-01-31,CPTY_00286,Retail,Retail Customer,0.4,N,Y,2015-02-28,N,FICO,644,4 - Bankable,0.01076,0.1127
2019-01-31,CPTY_00340,Retail,Retail Customer,0.57,N,N,.,N,FICO,529,6 - Special Mention,0.01076,0.35204
2019-01-31,CPTY_00288,Retail,Retail Customer,0.29,N,Y,2016-09-14,N,FICO,659,3 - Modest Risk,0.00269,0.09081
2019-01-31,CPTY_00164,Retail,Retail Customer,0.78,Y,Y,2018-06-01,N,FICO,430,8 - Doubtful,0.00269,0.80574
2019-01-31,CPTY_00229,Retail,Retail Customer,0.4,N,N,.,N,FICO,650,4 - Bankable,0.01076,0.13439
2019-01-31,CPTY_00325,Retail,Retail Customer,0.7,Y,Y,2018-06-01,N,FICO,494,7 - Sub-Standard,0.00269,0.37232
2019-01-31,CPTY_00108,Retail,Retail Customer,0.22,N,N,.,N,FICO,747,2 - Minimal Risk,0.00068,0.03436
2019-01-31,CPTY_00518,Retail,Retail Customer,0.09,N,N,.,N,FICO,838,1 - Largely Risk Free,0.01076,0.01277
2019-01-31,CPTY_00503,Retail,Retail Customer,0.37,N,N,.,N,FICO,621,4 - Bankable,0.01076,0.12456
2019-01-31,CPTY_00038,Retail,Retail Customer,0.39,N,N,.,N,FICO,646,4 - Bankable,0.01076,0.11237
2019-01-31,CPTY_00587,Retail,Retail Customer,0.24,N,N,.,N,FICO,739,2 - Minimal Risk,0.00068,0.05074
2019-01-31,CPTY_00160,Retail,Retail Customer,0.11,N,N,.,N,FICO,750,1 - Largely Risk Free,0.00024,0.00692
2019-01-31,CPTY_00295,Retail,Retail Customer,0.42,Y,Y,2018-06-01,N,FICO,622,4 - Bankable,0.01076,0.1272
2019-01-31,CPTY_00088,Retail,Retail Customer,0.39,N,N,.,N,FICO,617,4 - Bankable,0.00024,0.10561
2019-01-31,CPTY_00495,Retail,Retail Customer,0.4,N,N,.,N,FICO,608,4 - Bankable,0.01076,0.16931
2019-01-31,CPTY_00307,Retail,Retail Customer,0.38,Y,Y,2018-06-01,N,FICO,604,4 - Bankable,0.01076,0.13147
2019-01-31,CPTY_00396,Retail,Retail Customer,0.61,N,N,.,N,FICO,501,6 - Special Mention,0.01076,0.36096
2019-01-31,CPTY_00282,Retail,Retail Customer,0.09,N,N,.,N,FICO,781,1 - Largely Risk Free,0.00068,0.01908
2019-01-31,CPTY_00334,Retail,Retail Customer,0.6,Y,Y,2018-06-01,N,FICO,502,6 - Special Mention,0.17221,0.39102
2019-01-31,CPTY_00036,Retail,Retail Customer,0.3,N,N,.,N,FICO,691,3 - Modest Risk,0.00269,0.08821
2019-01-31,CPTY_00344,Retail,Retail Customer,0.38,N,N,.,N,FICO,604,4 - Bankable,0.01076,0.12246
2019-01-31,CPTY_00381,Retail,Retail Customer,0.42,N,N,.,N,FICO,638,4 - Bankable,0.01076,0.11014
2019-01-31,CPTY_00466,Retail,Retail Customer,0.4,N,N,.,N,FICO,621,4 - Bankable,0.01076,0.15661
2019-01-31,CPTY_00041,Retail,Retail Customer,0.07,N,N,.,N,FICO,805,1 - Largely Risk Free,0.00024,0.00777
2019-01-31,CPTY_00439,Retail,Retail Customer,1,N,N,.,N,FICO,394,9 - Loss,0.01076,1
2019-01-31,CPTY_00176,Retail,Retail Customer,0.81,Y,Y,2018-06-01,N,FICO,442,8 - Doubtful,0.01076,0.69281
2019-01-31,CPTY_00188,Retail,Retail Customer,0.81,N,N,.,N,FICO,446,8 - Doubtful,0.00024,0.61508
2019-01-31,CPTY_00011,Retail,Retail Customer,0.38,Y,Y,2018-06-01,N,FICO,643,4 - Bankable,0.01076,0.12233
2019-01-31,CPTY_00394,Retail,Retail Customer,0.6,Y,Y,2018-06-01,N,FICO,504,6 - Special Mention,0.01076,0.35808
2019-01-31,CPTY_00565,Retail,Retail Customer,0.43,N,N,.,N,FICO,638,4 - Bankable,0.01076,0.1312
2019-01-31,CPTY_00187,Retail,Retail Customer,0.7,N,N,.,N,FICO,488,7 - Sub-Standard,0.01076,0.48821
2019-01-31,CPTY_00557,Retail,Retail Customer,0.38,Y,Y,2018-06-01,N,FICO,630,4 - Bankable,0.01076,0.12669
2019-01-31,CPTY_00197,Retail,Retail Customer,1,Y,Y,2018-06-01,N,FICO,267,9 - Loss,0.6,1
2019-01-31,CPTY_00249,Retail,Retail Customer,0.62,N,N,.,N,FICO,537,6 - Special Mention,0.01076,0.34646
2019-01-31,CPTY_00507,Retail,Retail Customer,0.31,N,N,.,N,FICO,675,3 - Modest Risk,0.00068,0.10218
2019-01-31,CPTY_00440,Retail,Retail Customer,0.51,Y,Y,2018-06-01,N,FICO,580,5 - Additional Review,0.00269,0.25233
2019-01-31,CPTY_00342,Retail,Retail Customer,0.12,N,N,.,N,FICO,776,1 - Largely Risk Free,0.00024,0.02578
2019-01-31,CPTY_00167,Retail,Retail Customer,0.49,Y,Y,2018-06-01,N,FICO,556,5 - Additional Review,0.01076,0.19071
2019-01-31,CPTY_00109,Retail,Retail Customer,0.6,Y,Y,2018-06-01,N,FICO,529,6 - Special Mention,0.17221,0.36204
2019-01-31,CPTY_00512,Retail,Retail Customer,1.06,Y,Y,2018-06-01,N,FICO,342,9 - Loss,0.6,1
2019-01-31,CPTY_00130,Retail,Retail Customer,0.39,N,N,.,N,FICO,636,4 - Bankable,0.01076,0.13426
2019-01-31,CPTY_00345,Retail,Retail Customer,0.71,N,N,.,N,FICO,471,7 - Sub-Standard,0.00068,0.43999
2019-01-31,CPTY_00171,Retail,Retail Customer,0.32,N,Y,2018-02-16,N,FICO,694,3 - Modest Risk,0.01076,0.05733
2019-01-31,CPTY_00461,Retail,Retail Customer,0.4,Y,Y,2018-06-01,N,FICO,601,4 - Bankable,0.01076,0.16646
2019-01-31,CPTY_00264,Retail,Retail Customer,0.47,Y,Y,2018-06-01,N,FICO,579,5 - Additional Review,0.01076,0.2174
2019-01-31,CPTY_00578,Retail,Retail Customer,0.33,N,N,.,N,FICO,697,3 - Modest Risk,0.01076,0.09339
2019-01-31,CPTY_00234,Retail,Retail Customer,0.24,N,Y,2015-02-07,N,FICO,700,2 - Minimal Risk,0.01076,0.04523
2019-01-31,CPTY_00161,Retail,Retail Customer,0.1,N,N,.,N,FICO,767,1 - Largely Risk Free,0.00024,0.03255
2019-01-31,CPTY_00116,Retail,Retail Customer,0.07,N,N,.,N,FICO,783,1 - Largely Risk Free,0.00024,0.02331
2019-01-31,CPTY_00281,Retail,Retail Customer,0.41,Y,Y,2018-06-01,N,FICO,612,4 - Bankable,0.01076,0.17871
2019-01-31,CPTY_00515,Retail,Retail Customer,0.31,Y,Y,2018-06-01,N,FICO,654,3 - Modest Risk,0.00269,0.0626
2019-01-31,CPTY_00558,Retail,Retail Customer,0.4,N,Y,2014-08-04,N,FICO,640,4 - Bankable,0.01076,0.13766
2019-01-31,CPTY_00494,Retail,Retail Customer,0.41,N,N,.,N,FICO,619,4 - Bankable,0.01076,0.15183
2019-01-31,CPTY_00223,Retail,Retail Customer,0.38,N,Y,2016-11-06,N,FICO,646,4 - Bankable,0.01076,0.14972
2019-01-31,CPTY_00158,Retail,Retail Customer,0.42,N,N,.,N,FICO,608,4 - Bankable,0.01076,0.15834
2019-01-31,CPTY_00474,Retail,Retail Customer,0.55,N,N,.,N,FICO,539,6 - Special Mention,0.01076,0.37083
2019-01-31,CPTY_00332,Retail,Retail Customer,0.32,Y,Y,2018-06-01,N,FICO,650,3 - Modest Risk,0.01076,0.09936
2019-01-31,CPTY_00331,Retail,Retail Customer,0.28,N,N,.,N,FICO,678,3 - Modest Risk,0.00269,0.0571
2019-01-31,CPTY_00533,Retail,Retail Customer,0.39,N,Y,2015-07-23,N,FICO,646,4 - Bankable,0.01076,0.10477
2019-01-31,CPTY_00284,Retail,Retail Customer,0.56,Y,Y,2018-06-01,N,FICO,593,5 - Additional Review,0.17221,0.24759
2019-01-31,CPTY_00348,Retail,Retail Customer,0.28,N,N,.,N,FICO,676,3 - Modest Risk,0.00068,0.07585
2019-01-31,CPTY_00294,Retail,Retail Customer,0.62,Y,Y,2018-06-01,N,FICO,537,6 - Special Mention,0.01076,0.40012
2019-01-31,CPTY_00266,Retail,Retail Customer,0.34,Y,Y,2018-06-01,N,FICO,683,3 - Modest Risk,0.00269,0.07555
2019-01-31,CPTY_00260,Retail,Retail Customer,0.55,N,Y,2014-02-05,N,FICO,590,5 - Additional Review,0.01076,0.28451
2019-01-31,CPTY_00306,Retail,Retail Customer,0.09,N,N,.,N,FICO,790,1 - Largely Risk Free,0.00024,0.02522
2019-01-31,CPTY_00105,Retail,Retail Customer,0.61,Y,Y,2018-06-01,N,FICO,528,6 - Special Mention,0.17221,0.38136
2019-01-31,CPTY_00487,Retail,Retail Customer,0.54,N,N,.,N,FICO,600,5 - Additional Review,0.01076,0.24414
2019-01-31,CPTY_00225,Retail,Retail Customer,0.28,N,N,.,N,FICO,696,3 - Modest Risk,0.00024,0.06185
2019-01-31,CPTY_00195,Retail,Retail Customer,0.25,N,Y,2017-05-01,N,FICO,693,3 - Modest Risk,0.01076,0.09283
2019-01-31,CPTY_00085,Retail,Retail Customer,0.42,Y,Y,2018-06-01,N,FICO,603,4 - Bankable,0.00269,0.13848
2019-01-31,CPTY_00467,Retail,Retail Customer,0.4,Y,Y,2018-06-01,N,FICO,625,4 - Bankable,0.01076,0.15137
2019-01-31,CPTY_00097,Retail,Retail Customer,0.4,Y,Y,2018-06-01,N,FICO,603,4 - Bankable,0.01076,0.14719
2019-01-31,CPTY_00564,Retail,Retail Customer,0.31,Y,Y,2018-06-01,N,FICO,675,3 - Modest Risk,0.01076,0.09451
2019-01-31,CPTY_00389,Retail,Retail Customer,0.21,N,N,.,N,FICO,713,2 - Minimal Risk,0.00068,0.03839
2019-01-31,CPTY_00283,Retail,Retail Customer,0.09,Y,Y,2018-06-01,N,FICO,844,1 - Largely Risk Free,0.00269,0.00983
2019-01-31,CPTY_00337,Retail,Retail Customer,0.49,N,N,.,N,FICO,558,5 - Additional Review,0.00269,0.24684
2019-01-31,CPTY_00200,Retail,Retail Customer,0.39,N,N,.,N,FICO,602,4 - Bankable,0.01076,0.1805
2019-01-31,CPTY_00327,Retail,Retail Customer,0.18,N,N,.,N,FICO,743,2 - Minimal Risk,0.00024,0.04841
2019-01-31,CPTY_00263,Retail,Retail Customer,0.69,Y,Y,2018-06-01,N,FICO,451,7 - Sub-Standard,0.17221,0.36898
2019-01-31,CPTY_00257,Retail,Retail Customer,0.37,N,Y,2015-05-21,N,FICO,610,4 - Bankable,0.01076,0.12172
2019-01-31,CPTY_00274,Retail,Retail Customer,0.16,N,N,.,N,FICO,739,2 - Minimal Risk,0.00068,0.0488
2019-01-31,CPTY_00157,Retail,Retail Customer,0.4,N,N,.,N,FICO,650,4 - Bankable,0.01076,0.12707
2019-01-31,CPTY_00393,Retail,Retail Customer,0.37,Y,Y,2018-06-01,N,FICO,639,4 - Bankable,0.01076,0.13081
2019-01-31,CPTY_00574,Retail,Retail Customer,0.38,N,N,.,N,FICO,607,4 - Bankable,0.01076,0.18582
2019-01-31,CPTY_00448,Retail,Retail Customer,0.32,Y,Y,2018-06-01,N,FICO,682,3 - Modest Risk,0.01076,0.09136
2019-01-31,CPTY_00488,Retail,Retail Customer,0.49,N,N,.,N,FICO,561,5 - Additional Review,0.01076,0.2023
2019-01-31,CPTY_00365,Retail,Retail Customer,0.43,N,N,.,N,FICO,626,4 - Bankable,0.01076,0.17204
2019-01-31,CPTY_00275,Retail,Retail Customer,0.4,N,Y,2018-01-27,N,FICO,640,4 - Bankable,0.01076,0.1617
2019-01-31,CPTY_00173,Retail,Retail Customer,0.41,N,Y,2017-04-28,N,FICO,615,4 - Bankable,0.01076,0.14114
2019-01-31,CPTY_00504,Retail,Retail Customer,0.37,N,N,.,N,FICO,642,4 - Bankable,0.01076,0.13213
2019-01-31,CPTY_00106,Retail,Retail Customer,0.44,Y,Y,2018-06-01,N,FICO,620,4 - Bankable,0.01076,0.13601
2019-01-31,CPTY_00251,Retail,Retail Customer,0.39,N,N,.,N,FICO,621,4 - Bankable,0.01076,0.10373
2019-01-31,CPTY_00333,Retail,Retail Customer,0.37,Y,Y,2018-06-01,N,FICO,633,4 - Bankable,0.01076,0.11315
2019-01-31,CPTY_00277,Retail,Retail Customer,0.42,N,Y,2015-02-24,N,FICO,614,4 - Bankable,0.01076,0.13266
2019-01-31,CPTY_00024,Retail,Retail Customer,0.4,N,Y,2015-07-03,N,FICO,609,4 - Bankable,0.01076,0.10373
2019-01-31,CPTY_00417,Retail,Retail Customer,0.39,N,N,.,N,FICO,613,4 - Bankable,0.01076,0.12682
2019-01-31,CPTY_00132,Retail,Retail Customer,0.39,N,N,.,N,FICO,622,4 - Bankable,0.01076,0.17447
2019-01-31,CPTY_00531,Retail,Retail Customer,1.02,Y,Y,2018-06-01,N,FICO,208,9 - Loss,0.6,1
2019-01-31,CPTY_00233,Retail,Retail Customer,0.33,N,Y,2015-07-05,N,FICO,679,3 - Modest Risk,0.00269,0.08425
2019-01-31,CPTY_00125,Retail,Retail Customer,0.41,N,Y,2016-02-15,N,FICO,637,4 - Bankable,0.01076,0.13793
2019-01-31,CPTY_00278,Retail,Retail Customer,0.5,N,Y,2016-09-26,N,FICO,558,5 - Additional Review,0.01076,0.21567
2019-01-31,CPTY_00352,Retail,Retail Customer,0.08,N,N,.,N,FICO,814,1 - Largely Risk Free,0.00024,0.0203
2019-01-31,CPTY_00377,Retail,Retail Customer,0.29,Y,Y,2018-06-01,N,FICO,698,3 - Modest Risk,0.00269,0.08673
2019-01-31,CPTY_00131,Retail,Retail Customer,0.13,N,N,.,N,FICO,840,1 - Largely Risk Free,0.00024,0.02525
2019-01-31,CPTY_00154,Retail,Retail Customer,0.41,N,N,.,N,FICO,623,4 - Bankable,0.01076,0.11036
2019-01-31,CPTY_00586,Retail,Retail Customer,0.53,N,N,.,N,FICO,582,5 - Additional Review,0.01076,0.2348
2019-01-31,CPTY_00221,Retail,Retail Customer,0.53,N,N,.,N,FICO,574,5 - Additional Review,0.01076,0.25411
2019-01-31,CPTY_00559,Retail,Retail Customer,0.11,N,N,.,N,FICO,795,1 - Largely Risk Free,0.00068,0.03112
2019-01-31,CPTY_00103,Retail,Retail Customer,0.2,N,N,.,N,FICO,721,2 - Minimal Risk,0.00068,0.03405
2019-01-31,CPTY_00054,Retail,Retail Customer,0.4,N,Y,2014-09-05,N,FICO,626,4 - Bankable,0.01076,0.14414
2019-01-31,CPTY_00064,Retail,Retail Customer,0.31,Y,Y,2018-06-01,N,FICO,692,3 - Modest Risk,0.01076,0.09877
2019-01-31,CPTY_00442,Retail,Retail Customer,0.31,N,Y,2013-10-17,N,FICO,687,3 - Modest Risk,0.01076,0.07376
2019-01-31,CPTY_00473,Retail,Retail Customer,0.31,N,N,.,N,FICO,698,3 - Modest Risk,0.00269,0.0728
2019-01-31,CPTY_00579,Retail,Retail Customer,0.59,Y,Y,2018-06-01,N,FICO,540,6 - Special Mention,0.17221,0.39298
2019-01-31,CPTY_00123,Retail,Retail Customer,0.12,N,N,.,N,FICO,846,1 - Largely Risk Free,0.00024,0.01315
2019-01-31,CPTY_00465,Retail,Retail Customer,0.65,N,Y,2015-09-14,N,FICO,454,7 - Sub-Standard,0.01076,0.37719
2019-01-31,CPTY_00326,Retail,Retail Customer,1.05,Y,Y,2018-06-01,N,FICO,332,9 - Loss,0.17221,1
2019-01-31,CPTY_00397,Retail,Retail Customer,0.36,Y,Y,2018-06-01,N,FICO,632,4 - Bankable,0.01076,0.12531
2019-01-31,CPTY_00280,Retail,Retail Customer,0.28,Y,Y,2018-06-01,N,FICO,667,3 - Modest Risk,0.00269,0.06946
2019-01-31,CPTY_00202,Retail,Retail Customer,0.53,N,Y,2016-08-01,N,FICO,595,5 - Additional Review,0.01076,0.24908
2019-01-31,CPTY_00016,Retail,Retail Customer,0.3,N,N,.,N,FICO,689,3 - Modest Risk,0.00269,0.07244
2019-01-31,CPTY_00015,Retail,Retail Customer,0.38,N,N,.,N,FICO,645,4 - Bankable,0.01076,0.18087
2019-01-31,CPTY_00026,Retail,Retail Customer,1.01,Y,Y,2018-06-01,N,FICO,250,9 - Loss,0.01076,1
2019-01-31,CPTY_00126,Retail,Retail Customer,1.01,Y,Y,2018-06-01,N,FICO,214,9 - Loss,0.6,1
2019-01-31,CPTY_00563,Retail,Retail Customer,0.4,N,Y,2018-02-23,N,FICO,645,4 - Bankable,0.01076,0.11509
2019-01-31,CPTY_00403,Retail,Retail Customer,0.98,Y,Y,2018-06-01,N,FICO,381,9 - Loss,0.6,1
2019-01-31,CPTY_00129,Retail,Retail Customer,0.49,N,Y,2016-02-19,N,FICO,594,5 - Additional Review,0.01076,0.25309
2019-01-31,CPTY_00577,Retail,Retail Customer,0.43,N,N,.,N,FICO,616,4 - Bankable,0.01076,0.10699
2019-01-31,CPTY_00178,Retail,Retail Customer,0.11,N,N,.,N,FICO,764,1 - Largely Risk Free,0.00024,0.01674
2019-01-31,CPTY_00043,Retail,Retail Customer,0.4,N,N,.,N,FICO,621,4 - Bankable,0.01076,0.16796
2019-01-31,CPTY_00532,Retail,Retail Customer,0.41,Y,Y,2018-06-01,N,FICO,616,4 - Bankable,0.01076,0.16679
2019-01-31,CPTY_00350,Retail,Retail Customer,0.08,N,N,.,N,FICO,817,1 - Largely Risk Free,0.00068,0.01201
2019-01-31,CPTY_00560,Retail,Retail Customer,0.29,N,N,.,N,FICO,662,3 - Modest Risk,0.01076,0.07525
2019-01-31,CPTY_00519,Retail,Retail Customer,0.62,Y,Y,2018-06-01,N,FICO,547,6 - Special Mention,0.17221,0.38752
2019-01-31,CPTY_00025,Retail,Retail Customer,0.43,Y,Y,2018-06-01,N,FICO,626,4 - Bankable,0.01076,0.12619
2019-01-31,CPTY_00023,Retail,Retail Customer,0.42,Y,Y,2018-06-01,N,FICO,650,4 - Bankable,0.01076,0.12406
2019-01-31,CPTY_00475,Retail,Retail Customer,0.59,Y,Y,2018-06-01,N,FICO,528,6 - Special Mention,0.17221,0.39932
2019-01-31,CPTY_00513,Retail,Retail Customer,0.38,N,N,.,N,FICO,625,4 - Bankable,0.01076,0.11836
2019-01-31,CPTY_00534,Retail,Retail Customer,0.29,N,Y,2014-08-13,N,FICO,652,3 - Modest Risk,0.01076,0.06222
2019-01-31,CPTY_00013,Retail,Retail Customer,0.28,Y,Y,2018-06-01,N,FICO,682,3 - Modest Risk,0.17221,0.0973
2019-01-31,CPTY_00146,Retail,Retail Customer,0.08,N,N,.,N,FICO,784,1 - Largely Risk Free,0.00024,0.01405
2019-01-31,CPTY_00506,Retail,Retail Customer,0.29,N,N,.,N,FICO,691,3 - Modest Risk,0.01076,0.06272
2019-01-31,CPTY_00368,Retail,Retail Customer,0.41,Y,Y,2018-06-01,N,FICO,649,4 - Bankable,0.01076,0.11919
2019-01-31,CPTY_00242,Retail,Retail Customer,0.43,N,Y,2015-10-02,N,FICO,648,4 - Bankable,0.01076,0.12003
2019-01-31,CPTY_00196,Retail,Retail Customer,0.22,N,N,.,N,FICO,733,2 - Minimal Risk,0.00068,0.05197
2019-01-31,CPTY_00469,Retail,Retail Customer,0.46,Y,Y,2018-06-01,N,FICO,647,4 - Bankable,0.01076,0.13466
2019-01-31,CPTY_00028,Retail,Retail Customer,0.62,Y,Y,2018-06-01,N,FICO,545,6 - Special Mention,0.17221,0.39259
2019-01-31,CPTY_00149,Retail,Retail Customer,0.6,N,N,.,N,FICO,540,6 - Special Mention,0.01076,0.37908
2019-01-31,CPTY_00267,Retail,Retail Customer,0.11,N,N,.,N,FICO,847,1 - Largely Risk Free,0.00024,0.01358
2019-01-31,CPTY_00373,Retail,Retail Customer,0.39,N,Y,2018-01-26,N,FICO,641,4 - Bankable,0.01076,0.17119
2019-01-31,CPTY_00366,Retail,Retail Customer,0.38,N,Y,2017-06-02,N,FICO,607,4 - Bankable,0.01076,0.11765
2019-01-31,CPTY_00150,Retail,Retail Customer,0.4,N,Y,2017-07-07,N,FICO,646,4 - Bankable,0.01076,0.1617
2019-01-31,CPTY_00121,Retail,Retail Customer,0.38,N,N,.,N,FICO,643,4 - Bankable,0.01076,0.14128
2019-01-31,CPTY_00580,Retail,Retail Customer,0.43,Y,Y,2018-06-01,N,FICO,627,4 - Bankable,0.01076,0.14313
2019-01-31,CPTY_00273,Retail,Retail Customer,0.4,Y,Y,2018-06-01,N,FICO,602,4 - Bankable,0.01076,0.11848
2019-01-31,CPTY_00589,Retail,Retail Customer,0.56,Y,Y,2018-06-01,N,FICO,546,6 - Special Mention,0.17221,0.35808
2019-01-31,CPTY_00265,Retail,Retail Customer,0.38,N,Y,2014-01-30,N,FICO,627,4 - Bankable,0.01076,0.15259
2019-01-31,CPTY_00045,Retail,Retail Customer,0.4,N,N,.,N,FICO,650,4 - Bankable,0.01076,0.13385
2019-01-31,CPTY_00148,Retail,Retail Customer,0.29,N,N,.,N,FICO,682,3 - Modest Risk,0.01076,0.06535
2019-01-31,CPTY_00400,Retail,Retail Customer,0.4,N,N,.,N,FICO,613,4 - Bankable,0.01076,0.14631
2019-01-31,CPTY_00371,Retail,Retail Customer,0.29,Y,Y,2018-06-01,N,FICO,698,3 - Modest Risk,0.00269,0.0723
2019-01-31,CPTY_00019,Retail,Retail Customer,0.39,N,N,.,N,FICO,644,4 - Bankable,0.00024,0.11406
2019-01-31,CPTY_00383,Retail,Retail Customer,0.41,Y,Y,2018-06-01,N,FICO,612,4 - Bankable,0.01076,0.14185
2019-01-31,CPTY_00354,Retail,Retail Customer,0.49,Y,Y,2018-06-01,N,FICO,550,5 - Additional Review,0.01076,0.19456
2019-01-31,CPTY_00029,Retail,Retail Customer,0.61,Y,Y,2018-06-01,N,FICO,548,6 - Special Mention,0.17221,0.39102
2019-01-31,CPTY_00151,Retail,Retail Customer,0.41,N,N,.,N,FICO,646,4 - Bankable,0.01076,0.11169
2019-01-31,CPTY_00127,Retail,Retail Customer,0.36,N,Y,2013-07-05,N,FICO,617,4 - Bankable,0.01076,0.17711
2019-01-31,CPTY_00040,Retail,Retail Customer,1,N,N,.,N,FICO,229,9 - Loss,0.01076,1
2019-01-31,CPTY_00014,Retail,Retail Customer,0.7,N,Y,2014-10-30,N,FICO,473,7 - Sub-Standard,0.01076,0.36204
2019-01-31,CPTY_00535,Retail,Retail Customer,0.51,N,N,.,N,FICO,583,5 - Additional Review,0.01076,0.22291
2019-01-31,CPTY_00561,Retail,Retail Customer,0.38,N,N,.,N,FICO,604,4 - Bankable,0.01076,0.11136
2019-01-31,CPTY_00030,Retail,Retail Customer,0.3,Y,Y,2018-06-01,N,FICO,681,3 - Modest Risk,0.00269,0.09
2019-01-31,CPTY_00205,Retail,Retail Customer,0.31,N,N,.,N,FICO,680,3 - Modest Risk,0.00269,0.09837
2019-01-31,CPTY_00248,Retail,Retail Customer,0.21,N,N,.,N,FICO,744,2 - Minimal Risk,0.01076,0.05448
2019-01-31,CPTY_00147,Retail,Retail Customer,0.07,N,N,.,N,FICO,803,1 - Largely Risk Free,0.00024,0.00897
2019-01-31,CPTY_00111,Retail,Retail Customer,0.31,N,N,.,N,FICO,683,3 - Modest Risk,0.01076,0.06185
2019-01-31,CPTY_00100,Retail,Retail Customer,0.32,N,N,.,N,FICO,690,3 - Modest Risk,0.00024,0.07715
2019-01-31,CPTY_00124,Retail,Retail Customer,0.6,N,N,.,N,FICO,549,6 - Special Mention,0.00269,0.34854
2019-01-31,CPTY_00355,Retail,Retail Customer,0.38,Y,Y,2018-06-01,N,FICO,623,4 - Bankable,0.01076,0.14086
2019-01-31,CPTY_00104,Retail,Retail Customer,0.4,N,N,.,N,FICO,647,4 - Bankable,0.01076,0.14327
2019-01-31,CPTY_00044,Retail,Retail Customer,0.6,Y,Y,2018-06-01,N,FICO,508,6 - Special Mention,0.01076,0.36935
2019-01-31,CPTY_00246,Retail,Retail Customer,0.1,N,N,.,N,FICO,819,1 - Largely Risk Free,0.00024,0.02978
2019-01-31,CPTY_00207,Retail,Retail Customer,0.4,N,N,.,N,FICO,614,4 - Bankable,0.00269,0.11069
2019-01-31,CPTY_00254,Retail,Retail Customer,0.1,N,N,.,N,FICO,803,1 - Largely Risk Free,0.00024,0.01785
2019-01-31,CPTY_00540,Retail,Retail Customer,0.82,Y,Y,2018-06-01,N,FICO,442,8 - Doubtful,0.17221,0.79692
2019-01-31,CPTY_00376,Retail,Retail Customer,0.42,Y,Y,2018-06-01,N,FICO,630,4 - Bankable,0.01076,0.15153
2019-01-31,CPTY_00143,Retail,Retail Customer,0.27,N,Y,2013-07-02,N,FICO,678,3 - Modest Risk,0.01076,0.08408
2019-01-31,CPTY_00032,Retail,Retail Customer,0.38,Y,Y,2018-06-01,N,FICO,611,4 - Bankable,0.01076,0.17119
2019-01-31,CPTY_00101,Retail,Retail Customer,0.7,Y,Y,2018-06-01,N,FICO,467,7 - Sub-Standard,0.17221,0.38985
2019-01-31,CPTY_00390,Retail,Retail Customer,0.42,N,Y,2018-02-28,N,FICO,605,4 - Bankable,0.01076,0.10393
2019-01-31,CPTY_00315,Retail,Retail Customer,0.38,Y,Y,2018-06-01,N,FICO,630,4 - Bankable,0.01076,0.17675
2019-01-31,CPTY_00048,Retail,Retail Customer,0.41,N,N,.,N,FICO,615,4 - Bankable,0.01076,0.11602
2019-01-31,CPTY_00463,Retail,Retail Customer,0.39,N,N,.,N,FICO,604,4 - Bankable,0.01076,0.17084
2019-01-31,CPTY_00049,Retail,Retail Customer,0.29,N,N,.,N,FICO,655,3 - Modest Risk,0.01076,0.09585
2019-01-31,CPTY_00471,Retail,Retail Customer,0.09,N,N,.,N,FICO,758,1 - Largely Risk Free,0.00024,0.01482
2019-01-31,CPTY_00050,Retail,Retail Customer,0.18,N,N,.,N,FICO,715,2 - Minimal Risk,0.00068,0.04277
2019-01-31,CPTY_00096,Retail,Retail Customer,0.43,N,N,.,N,FICO,625,4 - Bankable,0.01076,0.17711
2019-01-31,CPTY_00236,Retail,Retail Customer,0.68,N,N,.,N,FICO,472,7 - Sub-Standard,0.00068,0.33858
2019-01-31,CPTY_00414,Retail,Retail Customer,0.4,N,Y,2013-08-25,N,FICO,613,4 - Bankable,0.01076,0.1529
2019-01-31,CPTY_00454,Retail,Retail Customer,1.01,Y,Y,2018-06-01,N,FICO,284,9 - Loss,0.6,1
2019-01-31,CPTY_00177,Retail,Retail Customer,0.47,N,N,.,N,FICO,590,5 - Additional Review,0.01076,0.23788
2019-01-31,CPTY_00209,Retail,Retail Customer,0.09,N,N,.,N,FICO,783,1 - Largely Risk Free,0.01076,0.00791
2019-01-31,CPTY_00046,Retail,Retail Customer,0.38,N,N,.,N,FICO,634,4 - Bankable,0.01076,0.12124
2019-01-31,CPTY_00232,Retail,Retail Customer,0.22,N,N,.,N,FICO,741,2 - Minimal Risk,0.00024,0.03889
2019-01-31,CPTY_00581,Retail,Retail Customer,0.38,N,N,.,N,FICO,647,4 - Bankable,0.01076,0.17412
2019-01-31,CPTY_00183,Retail,Retail Customer,0.38,N,N,.,N,FICO,618,4 - Bankable,0.01076,0.15153
2019-01-31,CPTY_00144,Retail,Retail Customer,0.39,N,N,.,N,FICO,638,4 - Bankable,0.01076,0.11429
2019-01-31,CPTY_00424,Retail,Retail Customer,0.41,N,Y,2015-06-16,N,FICO,612,4 - Bankable,0.01076,0.18232
2019-01-31,CPTY_00086,Retail,Retail Customer,0.39,N,N,.,N,FICO,608,4 - Bankable,0.01076,0.13385
2019-01-31,CPTY_00089,Retail,Retail Customer,0.07,N,N,.,N,FICO,780,1 - Largely Risk Free,0.00024,0.01007
2019-01-31,CPTY_00090,Retail,Retail Customer,0.43,N,N,.,N,FICO,602,4 - Bankable,0.01076,0.17889
2019-01-31,CPTY_00084,Retail,Retail Customer,0.32,N,N,.,N,FICO,698,3 - Modest Risk,0.00269,0.09956
2019-01-31,CPTY_00057,Retail,Retail Customer,0.59,Y,Y,2018-06-01,N,FICO,547,6 - Special Mention,0.17221,0.38136
2019-01-31,CPTY_00002,Retail,Retail Customer,0.11,N,N,.,N,FICO,848,1 - Largely Risk Free,0.00024,0.02193
2019-01-31,CPTY_00227,Retail,Retail Customer,0.09,N,N,.,N,FICO,777,1 - Largely Risk Free,0.00068,0.01495
2019-01-31,CPTY_00118,Retail,Retail Customer,0.32,Y,Y,2018-06-01,N,FICO,695,3 - Modest Risk,0.01076,0.05693
2019-01-31,CPTY_00062,Retail,Retail Customer,0.37,N,N,.,N,FICO,620,4 - Bankable,0.01076,0.10948
2019-01-31,CPTY_00358,Retail,Retail Customer,0.39,N,Y,2015-09-13,N,FICO,610,4 - Bankable,0.01076,0.12112
2019-01-31,CPTY_00324,Retail,Retail Customer,0.58,N,N,.,N,FICO,530,6 - Special Mention,0.01076,0.39852
2019-01-31,CPTY_00329,Retail,Retail Customer,0.09,N,N,.,N,FICO,816,1 - Largely Risk Free,0.00024,0.03029
2019-01-31,CPTY_00021,Retail,Retail Customer,0.32,N,Y,2017-10-27,N,FICO,681,3 - Modest Risk,0.00269,0.07361
2019-01-31,CPTY_00360,Retail,Retail Customer,0.4,Y,Y,2018-06-01,N,FICO,623,4 - Bankable,0.01076,0.14617
2019-01-31,CPTY_00268,Retail,Retail Customer,0.2,Y,Y,2018-06-01,N,FICO,746,2 - Minimal Risk,0.00269,0.05089
2019-01-31,CPTY_00372,Retail,Retail Customer,0.44,N,N,.,N,FICO,622,4 - Bankable,0.01076,0.14342
2019-01-31,CPTY_00478,Retail,Retail Customer,0.51,Y,Y,2018-06-01,N,FICO,594,5 - Additional Review,0.17221,0.22924
2019-01-31,CPTY_00528,Retail,Retail Customer,1.02,Y,Y,2018-06-01,N,FICO,299,9 - Loss,0.6,1
2019-01-31,CPTY_00068,Retail,Retail Customer,0.36,N,N,.,N,FICO,627,4 - Bankable,0.01076,0.15122
2019-01-31,CPTY_00067,Retail,Retail Customer,0.67,N,Y,2013-08-13,N,FICO,476,7 - Sub-Standard,0.01076,0.50662
2019-01-31,CPTY_00582,Retail,Retail Customer,0.29,N,N,.,N,FICO,698,3 - Modest Risk,0.01076,0.05779
2019-01-31,CPTY_00499,Retail,Retail Customer,0.39,N,N,.,N,FICO,628,4 - Bankable,0.01076,0.12809
2019-01-31,CPTY_00071,Retail,Retail Customer,0.39,N,Y,2015-04-20,N,FICO,641,4 - Bankable,0.01076,0.14299
2019-01-31,CPTY_00191,Retail,Retail Customer,0.3,Y,Y,2018-06-01,N,FICO,678,3 - Modest Risk,0.01076,0.08283
2019-01-31,CPTY_00367,Retail,Retail Customer,0.41,N,N,.,N,FICO,628,4 - Bankable,0.00068,0.13738
2019-01-31,CPTY_00299,Retail,Retail Customer,0.99,Y,Y,2018-06-01,N,FICO,319,9 - Loss,0.01076,1
2019-01-31,CPTY_00042,Retail,Retail Customer,0.44,N,N,.,N,FICO,642,4 - Bankable,0.01076,0.13266
2019-01-31,CPTY_00128,Retail,Retail Customer,0.48,Y,Y,2018-06-01,N,FICO,569,5 - Additional Review,0.01076,0.26421
2019-01-31,CPTY_00481,Retail,Retail Customer,0.6,Y,Y,2018-06-01,N,FICO,550,6 - Special Mention,0.17221,0.39024
2019-01-31,CPTY_00362,Retail,Retail Customer,0.18,N,N,.,N,FICO,702,2 - Minimal Risk,0.00068,0.04924
2019-01-31,CPTY_00170,Retail,Retail Customer,0.34,Y,Y,2018-06-01,N,FICO,656,3 - Modest Risk,0.01076,0.0696
2019-01-31,CPTY_00464,Retail,Retail Customer,0.41,Y,Y,2018-06-01,N,FICO,640,4 - Bankable,0.17221,0.17889
2019-01-31,CPTY_00112,Retail,Retail Customer,0.31,Y,Y,2018-06-01,N,FICO,683,3 - Modest Risk,0.00269,0.07902
2019-01-31,CPTY_00517,Retail,Retail Customer,0.68,N,Y,2015-10-17,N,FICO,485,7 - Sub-Standard,0.01076,0.30453
2019-01-31,CPTY_00119,Retail,Retail Customer,0.59,N,N,.,N,FICO,514,6 - Special Mention,0.00024,0.40052
2019-01-31,CPTY_00210,Retail,Retail Customer,0.32,N,N,.,N,FICO,691,3 - Modest Risk,0.00269,0.0791
2019-01-31,CPTY_00238,Retail,Retail Customer,0.2,N,N,.,N,FICO,737,2 - Minimal Risk,0.00068,0.04755
2019-01-31,CPTY_00323,Retail,Retail Customer,1.03,Y,Y,2018-06-01,N,FICO,273,9 - Loss,0.6,1
2019-01-31,CPTY_00153,Retail,Retail Customer,0.34,N,N,.,N,FICO,695,3 - Modest Risk,0.00024,0.06747
2019-01-31,CPTY_00217,Retail,Retail Customer,0.31,N,N,.,N,FICO,673,3 - Modest Risk,0.01076,0.10117
2019-01-31,CPTY_00114,Retail,Retail Customer,0.8,Y,Y,2018-06-01,N,FICO,422,8 - Doubtful,0.17221,0.79772
2019-01-31,CPTY_00156,Retail,Retail Customer,0.3,Y,Y,2018-06-01,N,FICO,683,3 - Modest Risk,0.01076,0.07879
2019-01-31,CPTY_00508,Retail,Retail Customer,0.1,N,N,.,N,FICO,788,1 - Largely Risk Free,0.00024,0.01207
2019-01-31,CPTY_00378,Retail,Retail Customer,0.48,N,N,.,N,FICO,567,5 - Additional Review,0.01076,0.19456
2019-01-31,CPTY_00031,Retail,Retail Customer,0.43,Y,Y,2018-06-01,N,FICO,614,4 - Bankable,0.01076,0.1216
2019-01-31,CPTY_00078,Retail,Retail Customer,0.24,N,N,.,N,FICO,740,2 - Minimal Risk,0.00068,0.03623
2019-01-31,CPTY_00198,Retail,Retail Customer,0.2,N,N,.,N,FICO,749,2 - Minimal Risk,0.00068,0.05399
2019-01-31,CPTY_00190,Retail,Retail Customer,0.4,N,N,.,N,FICO,640,4 - Bankable,0.01076,0.10937
2019-01-31,CPTY_00185,Retail,Retail Customer,0.41,N,N,.,N,FICO,602,4 - Bankable,0.01076,0.1805
2019-01-31,CPTY_00500,Retail,Retail Customer,0.41,N,N,.,N,FICO,626,4 - Bankable,0.01076,0.16713
2019-01-31,CPTY_00214,Retail,Retail Customer,0.36,N,Y,2014-06-26,N,FICO,614,4 - Bankable,0.01076,0.14086
2019-01-31,CPTY_00425,Retail,Retail Customer,0.28,N,N,.,N,FICO,686,3 - Modest Risk,0.01076,0.07101
2019-01-31,CPTY_00107,Retail,Retail Customer,0.43,N,Y,2015-04-28,N,FICO,635,4 - Bankable,0.01076,0.15183
2019-01-31,CPTY_00502,Retail,Retail Customer,0.28,N,Y,2018-03-17,N,FICO,677,3 - Modest Risk,0.00269,0.06694
2019-01-31,CPTY_00320,Retail,Retail Customer,0.51,N,N,.,N,FICO,579,5 - Additional Review,0.01076,0.20433
2019-01-31,CPTY_00017,Retail,Retail Customer,0.28,N,Y,2017-04-28,N,FICO,666,3 - Modest Risk,0.00269,0.09556
2019-01-31,CPTY_00250,Retail,Retail Customer,0.12,N,N,.,N,FICO,843,1 - Largely Risk Free,0.00024,0.02743
2019-01-31,CPTY_00483,Retail,Retail Customer,0.44,N,N,.,N,FICO,620,4 - Bankable,0.01076,0.10498
2019-01-31,CPTY_00212,Retail,Retail Customer,0.3,N,N,.,N,FICO,685,3 - Modest Risk,0.00269,0.06884
2019-01-31,CPTY_00099,Retail,Retail Customer,0.59,Y,Y,2018-06-01,N,FICO,515,6 - Special Mention,0.17221,0.36935
2019-01-31,CPTY_00328,Retail,Retail Customer,0.44,Y,Y,2018-06-01,N,FICO,626,4 - Bankable,0.01076,0.18141
2019-01-31,CPTY_00222,Retail,Retail Customer,0.42,Y,Y,2018-06-01,N,FICO,606,4 - Bankable,0.01076,0.1736
2019-01-31,CPTY_00136,Retail,Retail Customer,0.22,N,N,.,N,FICO,705,2 - Minimal Risk,0.00068,0.04769
2019-01-31,CPTY_00497,Retail,Retail Customer,0.69,Y,Y,2018-06-01,N,FICO,463,7 - Sub-Standard,0.01076,0.49808
2019-01-31,CPTY_00313,Retail,Retail Customer,0.49,N,N,.,N,FICO,561,5 - Additional Review,0.01076,0.29494
2019-01-31,CPTY_00496,Retail,Retail Customer,0.3,Y,Y,2018-06-01,N,FICO,650,3 - Modest Risk,0.00269,0.07661
2019-01-31,CPTY_00051,Retail,Retail Customer,0.41,N,Y,2016-02-11,N,FICO,646,4 - Bankable,0.01076,0.163
2019-01-31,CPTY_00141,Retail,Retail Customer,0.42,Y,Y,2018-06-01,N,FICO,603,4 - Bankable,0.01076,0.1352
2019-01-31,CPTY_00482,Retail,Retail Customer,0.28,Y,Y,2018-06-01,N,FICO,672,3 - Modest Risk,0.01076,0.08901
2019-01-31,CPTY_00441,Retail,Retail Customer,0.62,Y,Y,2018-06-01,N,FICO,537,6 - Special Mention,0.17221,0.39455
2019-01-31,CPTY_00526,Retail,Retail Customer,0.39,Y,Y,2018-06-01,N,FICO,616,4 - Bankable,0.01076,0.12556
2019-01-31,CPTY_00398,Retail,Retail Customer,0.4,N,N,.,N,FICO,634,4 - Bankable,0.01076,0.14897
2019-01-31,CPTY_00317,Retail,Retail Customer,0.2,Y,Y,2018-06-01,N,FICO,700,2 - Minimal Risk,0.01076,0.04984
2019-01-31,CPTY_00479,Retail,Retail Customer,0.4,N,N,.,N,FICO,645,4 - Bankable,0.01076,0.13904
2019-01-31,CPTY_00258,Retail,Retail Customer,0.62,Y,Y,2018-06-01,N,FICO,516,6 - Special Mention,0.17221,0.38713
2019-01-31,CPTY_00098,Retail,Retail Customer,0.52,N,Y,2016-11-25,N,FICO,564,5 - Additional Review,0.00269,0.21981
2019-01-31,CPTY_00470,Retail,Retail Customer,0.5,Y,Y,2018-06-01,N,FICO,572,5 - Additional Review,0.01076,0.2348
2019-01-31,CPTY_00319,Retail,Retail Customer,0.38,N,N,.,N,FICO,605,4 - Bankable,0.01076,0.14171
2019-01-31,CPTY_00388,Retail,Retail Customer,0.38,Y,Y,2018-06-01,N,FICO,615,4 - Bankable,0.01076,0.11361
2019-01-31,CPTY_00516,Retail,Retail Customer,0.38,Y,Y,2018-06-01,N,FICO,621,4 - Bankable,0.01076,0.11754
2019-01-31,CPTY_00135,Retail,Retail Customer,0.29,N,N,.,N,FICO,673,3 - Modest Risk,0.00024,0.06361
2019-01-31,CPTY_00472,Retail,Retail Customer,0.26,N,N,.,N,FICO,660,3 - Modest Risk,0.01076,0.0638
2019-01-31,CPTY_00137,Retail,Retail Customer,0.62,Y,Y,2018-06-01,N,FICO,521,6 - Special Mention,0.17221,0.36972
2019-01-31,CPTY_00300,Retail,Retail Customer,0.82,N,Y,2016-04-23,N,FICO,423,8 - Doubtful,0.01076,0.71106
2019-01-31,CPTY_00213,Retail,Retail Customer,0.73,N,N,.,N,FICO,482,7 - Sub-Standard,0.01076,0.47189
2019-01-31,CPTY_00290,Retail,Retail Customer,0.58,Y,Y,2018-06-01,N,FICO,502,6 - Special Mention,0.17221,0.39063
2019-01-31,CPTY_00052,Retail,Retail Customer,0.12,N,Y,2014-10-22,N,FICO,811,1 - Largely Risk Free,0.01076,0.01524
2019-01-31,CPTY_00363,Retail,Retail Customer,0.26,N,N,.,N,FICO,662,3 - Modest Risk,0.01076,0.09499
2019-01-31,CPTY_00305,Retail,Retail Customer,0.3,N,Y,2016-11-29,N,FICO,687,3 - Modest Risk,0.00269,0.07002
2019-01-31,CPTY_00134,Retail,Retail Customer,0.4,N,N,.,N,FICO,649,4 - Bankable,0.01076,0.18232
2019-01-31,CPTY_00075,Retail,Retail Customer,0.24,N,N,.,N,FICO,717,2 - Minimal Risk,0.00068,0.05074
2019-01-31,CPTY_00509,Retail,Retail Customer,0.32,N,N,.,N,FICO,653,3 - Modest Risk,0.00269,0.09
2019-01-31,CPTY_00303,Retail,Retail Customer,0.38,N,N,.,N,FICO,606,4 - Bankable,0.01076,0.11509
2019-01-31,CPTY_00369,Retail,Retail Customer,1.01,Y,Y,2018-06-01,N,FICO,356,9 - Loss,0.6,1
2019-01-31,CPTY_00476,Retail,Retail Customer,0.56,Y,Y,2018-06-01,N,FICO,544,6 - Special Mention,0.17221,0.37757
2019-01-31,CPTY_00218,Retail,Retail Customer,0.4,N,Y,2014-06-30,N,FICO,644,4 - Bankable,0.01076,0.14356
2019-01-31,CPTY_00361,Retail,Retail Customer,0.61,N,N,.,N,FICO,515,6 - Special Mention,0.01076,0.35452
2019-01-31,CPTY_00382,Retail,Retail Customer,0.42,N,N,.,N,FICO,616,4 - Bankable,0.01076,0.10894
2019-01-31,CPTY_00505,Retail,Retail Customer,0.09,N,N,.,N,FICO,839,1 - Largely Risk Free,0.00024,0.0279
2019-01-31,CPTY_00083,Retail,Retail Customer,0.52,N,N,.,N,FICO,582,5 - Additional Review,0.01076,0.19731
2019-01-31,CPTY_00066,Retail,Retail Customer,0.29,N,N,.,N,FICO,690,3 - Modest Risk,0.01076,0.07847
2019-01-31,CPTY_00364,Retail,Retail Customer,0.24,N,N,.,N,FICO,732,2 - Minimal Risk,0.00068,0.03415
2019-01-31,CPTY_00140,Retail,Retail Customer,0.06,N,N,.,N,FICO,781,1 - Largely Risk Free,0.00024,0.01061
2019-01-31,CPTY_00443,Retail,Retail Customer,0.57,Y,Y,2018-06-01,N,FICO,501,6 - Special Mention,0.17221,0.39259
2019-01-31,CPTY_00271,Retail,Retail Customer,0.28,Y,Y,2018-06-01,N,FICO,655,3 - Modest Risk,0.01076,0.09681
2019-01-31,CPTY_00035,Retail,Retail Customer,0.37,N,N,.,N,FICO,646,4 - Bankable,0.01076,0.17711
2019-01-31,CPTY_00047,Retail,Retail Customer,0.19,N,N,.,N,FICO,700,2 - Minimal Risk,0.00024,0.03748
2019-01-31,CPTY_00252,Retail,Retail Customer,0.41,N,N,.,N,FICO,635,4 - Bankable,0.00269,0.15017
2019-01-31,CPTY_00163,Retail,Retail Customer,0.42,N,Y,2014-07-23,N,FICO,613,4 - Bankable,0.01076,0.10764
2019-01-31,CPTY_00314,Retail,Retail Customer,0.34,Y,Y,2018-06-01,N,FICO,683,3 - Modest Risk,0.01076,0.09386
2019-01-31,CPTY_00058,Retail,Retail Customer,0.16,N,N,.,N,FICO,721,2 - Minimal Risk,0.00068,0.03677
2019-01-31,CPTY_00308,Retail,Retail Customer,0.42,N,N,.,N,FICO,620,4 - Bankable,0.00269,0.12003
2019-01-31,CPTY_00256,Retail,Retail Customer,0.63,Y,Y,2018-06-01,N,FICO,506,6 - Special Mention,0.17221,0.35487
2019-01-31,CPTY_00224,Retail,Retail Customer,0.32,N,N,.,N,FICO,652,3 - Modest Risk,0.01076,0.07273
2019-01-31,CPTY_00204,Retail,Retail Customer,0.52,N,N,.,N,FICO,552,5 - Additional Review,0.00068,0.28823
2019-01-31,CPTY_00477,Retail,Retail Customer,0.37,Y,Y,2018-06-01,N,FICO,623,4 - Bankable,0.01076,0.11824
2019-01-31,CPTY_00216,Retail,Retail Customer,0.29,N,Y,2014-09-16,N,FICO,691,3 - Modest Risk,0.01076,0.0668
2019-01-31,CPTY_00538,Retail,Retail Customer,0.3,Y,Y,2018-06-01,N,FICO,668,3 - Modest Risk,0.00269,0.05704
2019-01-31,CPTY_00001,Retail,Retail Customer,0.4,Y,Y,2018-06-01,N,FICO,608,4 - Bankable,0.01076,0.16398
2019-01-31,CPTY_00022,Retail,Retail Customer,0.41,Y,Y,2018-06-01,N,FICO,649,4 - Bankable,0.01076,0.14823
2019-01-31,CPTY_00219,Retail,Retail Customer,0.08,N,N,.,N,FICO,841,1 - Largely Risk Free,0.00068,0.02301
2019-01-31,CPTY_00168,Retail,Retail Customer,0.38,N,N,.,N,FICO,636,4 - Bankable,0.01076,0.17119
2019-01-31,CPTY_00359,Retail,Retail Customer,0.4,Y,Y,2018-06-01,N,FICO,616,4 - Bankable,0.01076,0.18214
2019-01-31,CPTY_00063,Retail,Retail Customer,0.39,N,Y,2014-08-11,N,FICO,646,4 - Bankable,0.01076,0.14529
2019-01-31,CPTY_00511,Retail,Retail Customer,0.15,N,N,.,N,FICO,801,1 - Largely Risk Free,0.00068,0.03008
2019-01-31,CPTY_00095,Retail,Retail Customer,0.58,N,Y,2017-01-02,N,FICO,530,6 - Special Mention,0.00269,0.36751
2019-01-31,CPTY_00490,Retail,Retail Customer,0.19,N,N,.,N,FICO,720,2 - Minimal Risk,0.00068,0.04196
2019-01-31,CPTY_00003,Retail,Retail Customer,0.51,Y,Y,2018-06-01,N,FICO,590,5 - Additional Review,0.17221,0.29494
2019-01-31,CPTY_00370,Retail,Retail Customer,0.08,N,N,.,N,FICO,804,1 - Largely Risk Free,0.00024,0.01802
2019-01-31,CPTY_00076,Retail,Retail Customer,0.42,Y,Y,2018-06-01,N,FICO,606,4 - Bankable,0.00269,0.11158
2019-01-31,CPTY_00297,Retail,Retail Customer,0.38,Y,Y,2018-06-01,N,FICO,607,4 - Bankable,0.01076,0.17395
2019-01-31,CPTY_00501,Retail,Retail Customer,0.19,N,N,.,N,FICO,748,2 - Minimal Risk,0.00068,0.05664
2019-01-31,CPTY_00402,Retail,Retail Customer,0.22,N,Y,2015-08-23,N,FICO,704,2 - Minimal Risk,0.01076,0.05399
2019-01-31,CPTY_00186,Retail,Retail Customer,0.29,N,N,.,N,FICO,658,3 - Modest Risk,0.01076,0.07608
2019-01-31,CPTY_00272,Retail,Retail Customer,0.39,Y,Y,2018-06-01,N,FICO,618,4 - Bankable,0.01076,0.13493
2019-01-31,CPTY_00292,Retail,Retail Customer,0.4,N,N,.,N,FICO,638,4 - Bankable,0.01076,0.11214
2019-01-31,CPTY_00172,Retail,Retail Customer,0.21,N,N,.,N,FICO,728,2 - Minimal Risk,0.00068,0.04093
2019-01-31,CPTY_00270,Retail,Retail Customer,0.39,N,N,.,N,FICO,632,4 - Bankable,0.01076,0.14515
2019-01-31,CPTY_00584,Retail,Retail Customer,0.62,N,Y,2015-01-07,N,FICO,519,6 - Special Mention,0.17221,0.37158
2019-01-31,CPTY_00056,Retail,Retail Customer,0.61,N,N,.,N,FICO,530,6 - Special Mention,0.01076,0.37644
2019-01-31,CPTY_00544,Retail,Retail Customer,0.59,N,N,.,N,FICO,540,6 - Special Mention,0.01076,0.3879
2019-01-31,CPTY_00415,Retail,Retail Customer,0.32,N,N,.,N,FICO,651,3 - Modest Risk,0.00068,0.0626
2019-01-31,CPTY_00435,Retail,Retail Customer,0.38,N,N,.,N,FICO,623,4 - Bankable,0.04305,0.11225
2019-01-31,CPTY_00411,Retail,Retail Customer,0.08,N,N,.,N,FICO,773,1 - Largely Risk Free,0.00024,0.01893
2019-01-31,CPTY_00421,Retail,Retail Customer,0.34,N,N,.,N,FICO,670,3 - Modest Risk,0.01076,0.09395
2019-01-31,CPTY_00522,Retail,Retail Customer,0.51,Y,Y,2018-06-01,N,FICO,559,5 - Additional Review,0.04305,0.27144
2019-01-31,CPTY_00545,Retail,Retail Customer,0.41,N,N,.,N,FICO,600,4 - Bankable,0.01076,0.10764
2019-01-31,CPTY_00406,Retail,Retail Customer,0.82,N,N,.,N,FICO,450,8 - Doubtful,0.01076,0.5401
2019-01-31,CPTY_00546,Retail,Retail Customer,0.5,Y,Y,2018-06-01,N,FICO,569,5 - Additional Review,0.04305,0.2068
2019-01-31,CPTY_00575,Retail,Retail Customer,0.09,N,N,.,N,FICO,761,1 - Largely Risk Free,0.00024,0.02221
2019-01-31,CPTY_00087,Retail,Retail Customer,0.39,N,N,.,N,FICO,620,4 - Bankable,0.00068,0.11384
2019-01-31,CPTY_00034,Retail,Retail Customer,0.1,N,N,.,N,FICO,816,1 - Largely Risk Free,0.00024,0.01538
2019-01-31,CPTY_00228,Retail,Retail Customer,0.47,Y,Y,2018-06-01,N,FICO,595,5 - Additional Review,0.04305,0.2728
2019-01-31,CPTY_00523,Retail,Retail Customer,0.4,N,N,.,N,FICO,613,4 - Bankable,0.01076,0.18675
2019-01-31,CPTY_00436,Retail,Retail Customer,0.19,N,N,.,N,FICO,749,2 - Minimal Risk,0.00068,0.03696
2019-01-31,CPTY_00418,Retail,Retail Customer,0.22,N,N,.,N,FICO,714,2 - Minimal Risk,0.00068,0.04209
2019-01-31,CPTY_00175,Retail,Retail Customer,0.48,Y,Y,2018-06-01,N,FICO,588,5 - Additional Review,0.04305,0.2021
2019-01-31,CPTY_00179,Retail,Retail Customer,0.11,N,N,.,N,FICO,806,1 - Largely Risk Free,0.00024,0.02916
2019-01-31,CPTY_00583,Retail,Retail Customer,0.36,N,N,.,N,FICO,628,4 - Bankable,0.00068,0.15305
2019-01-31,CPTY_00429,Retail,Retail Customer,0.09,N,N,.,N,FICO,773,1 - Largely Risk Free,0.00024,0.01369
2019-01-31,CPTY_00226,Retail,Retail Customer,0.31,N,N,.,N,FICO,696,3 - Modest Risk,0.01076,0.08078
2019-01-31,CPTY_00276,Retail,Retail Customer,0.44,N,N,.,N,FICO,626,4 - Bankable,0.00024,0.10603
2019-01-31,CPTY_00020,Retail,Retail Customer,0.68,N,N,.,N,FICO,477,7 - Sub-Standard,0.01076,0.5051
2019-01-31,CPTY_00430,Retail,Retail Customer,0.2,N,N,.,N,FICO,710,2 - Minimal Risk,0.00068,0.03711
2019-01-31,CPTY_00451,Retail,Retail Customer,0.31,N,N,.,N,FICO,663,3 - Modest Risk,0.01076,0.06754
2019-01-31,CPTY_00009,Retail,Retail Customer,0.39,N,N,.,N,FICO,645,4 - Bankable,0.00024,0.17464
2019-01-31,CPTY_00562,Retail,Retail Customer,0.3,N,N,.,N,FICO,663,3 - Modest Risk,0.00068,0.06741
2019-01-31,CPTY_00484,Retail,Retail Customer,0.49,N,Y,2015-08-03,N,FICO,596,5 - Additional Review,0.04305,0.21937
2019-01-31,CPTY_00408,Retail,Retail Customer,0.23,N,N,.,N,FICO,707,2 - Minimal Risk,0.00024,0.04402
2019-01-31,CPTY_00033,Retail,Retail Customer,0.2,N,N,.,N,FICO,727,2 - Minimal Risk,0.00068,0.03885
2019-01-31,CPTY_00409,Retail,Retail Customer,0.42,N,N,.,N,FICO,622,4 - Bankable,0.01076,0.18177
2019-01-31,CPTY_00413,Retail,Retail Customer,0.37,N,N,.,N,FICO,616,4 - Bankable,0.01076,0.10948
2019-01-31,CPTY_00055,Retail,Retail Customer,0.1,N,N,.,N,FICO,816,1 - Largely Risk Free,0.00024,0.01279
2019-01-31,CPTY_00452,Retail,Retail Customer,0.08,N,N,.,N,FICO,831,1 - Largely Risk Free,0.00024,0.01337
2019-01-31,CPTY_00005,Retail,Retail Customer,0.11,N,N,.,N,FICO,846,1 - Largely Risk Free,0.00024,0.02075
2019-01-31,CPTY_00552,Retail,Retail Customer,0.4,N,N,.,N,FICO,620,4 - Bankable,0.01076,0.1805
2019-01-31,CPTY_00419,Retail,Retail Customer,0.42,N,N,.,N,FICO,626,4 - Bankable,0.01076,0.18507
2019-01-31,CPTY_00293,Retail,Retail Customer,0.08,N,N,.,N,FICO,766,1 - Largely Risk Free,0.00068,0.00708
2019-01-31,CPTY_00261,Retail,Retail Customer,0.3,N,N,.,N,FICO,653,3 - Modest Risk,0.01076,0.06406
2019-01-31,CPTY_00444,Retail,Retail Customer,0.62,N,N,.,N,FICO,518,6 - Special Mention,0.01076,0.38175
2019-01-31,CPTY_00010,Retail,Retail Customer,0.5,N,N,.,N,FICO,562,5 - Additional Review,0.01076,0.2256
2019-01-31,CPTY_00553,Retail,Retail Customer,0.13,N,N,.,N,FICO,777,1 - Largely Risk Free,0.00024,0.02
2019-01-31,CPTY_00007,Retail,Retail Customer,0.2,N,N,.,N,FICO,704,2 - Minimal Risk,0.00024,0.04605
2019-01-31,CPTY_00291,Retail,Retail Customer,0.37,N,N,.,N,FICO,639,4 - Bankable,0.01076,0.10764
2019-01-31,CPTY_00524,Retail,Retail Customer,0.59,N,N,.,N,FICO,538,6 - Special Mention,0.04305,0.37419
2019-01-31,CPTY_00420,Retail,Retail Customer,0.99,N,N,.,N,FICO,341,9 - Loss,0.04305,1
2019-01-31,CPTY_00312,Retail,Retail Customer,0.63,N,N,.,N,FICO,531,6 - Special Mention,0.01076,0.37606
2019-01-31,CPTY_00311,Retail,Retail Customer,0.47,N,N,.,N,FICO,578,5 - Additional Review,0.04305,0.19167
2019-01-31,CPTY_00450,Retail,Retail Customer,0.39,N,N,.,N,FICO,612,4 - Bankable,0.01076,0.1717
2019-01-31,CPTY_00426,Retail,Retail Customer,0.39,N,N,.,N,FICO,635,4 - Bankable,0.01076,0.13173
2019-01-31,CPTY_00541,Retail,Retail Customer,1.04,Y,Y,2018-06-01,Y,FICO,293,9 - Loss,0.01076,1
2019-01-31,CPTY_00549,Retail,Retail Customer,0.1,Y,Y,2018-06-01,Y,FICO,849,1 - Largely Risk Free,0.01076,0.0113
2019-01-31,CPTY_00162,Retail,Retail Customer,0.39,N,N,.,N,FICO,618,4 - Bankable,0.01076,0.10657
2019-01-31,CPTY_00485,Retail,Retail Customer,0.5,N,N,.,N,FICO,576,5 - Additional Review,0.01076,0.20972
2019-01-31,CPTY_00427,Retail,Retail Customer,0.12,N,N,.,N,FICO,788,1 - Largely Risk Free,0.00068,0.01236
2019-01-31,CPTY_00456,Retail,Retail Customer,0.29,N,N,.,N,FICO,650,3 - Modest Risk,0.00068,0.0621
2019-01-31,CPTY_00542,Retail,Retail Customer,0.39,N,N,.,N,FICO,620,4 - Bankable,0.01076,0.15397
2019-01-31,CPTY_00543,Retail,Retail Customer,0.1,N,N,.,N,FICO,829,1 - Largely Risk Free,0.00024,0.009
2019-01-31,CPTY_00428,Retail,Retail Customer,0.97,N,N,.,N,FICO,301,9 - Loss,0.17221,1
2019-01-31,CPTY_00521,Retail,Retail Customer,0.18,N,N,.,N,FICO,730,2 - Minimal Risk,0.00068,0.05029
2019-01-31,CPTY_00169,Retail,Retail Customer,0.08,N,N,.,N,FICO,785,1 - Largely Risk Free,0.00024,0.01119
2019-01-31,CPTY_00289,Retail,Retail Customer,0.78,N,Y,2017-01-04,N,FICO,432,8 - Doubtful,0.04305,0.75503
2019-01-31,CPTY_00241,Retail,Retail Customer,0.5,N,N,.,N,FICO,589,5 - Additional Review,0.01076,0.2739
2019-01-31,CPTY_00568,Retail,Retail Customer,0.42,N,N,.,N,FICO,606,4 - Bankable,0.01076,0.17517
2019-01-31,CPTY_00091,Retail,Retail Customer,0.42,N,N,.,N,FICO,626,4 - Bankable,0.00024,0.14927
2019-01-31,CPTY_00081,Retail,Retail Customer,0.23,N,N,.,N,FICO,730,2 - Minimal Risk,0.00068,0.03752
2019-01-31,CPTY_00569,Retail,Retail Customer,0.55,N,N,.,N,FICO,579,5 - Additional Review,0.04305,0.25487
2019-01-31,CPTY_00457,Retail,Retail Customer,0.46,N,N,.,N,FICO,595,5 - Additional Review,0.01076,0.22113
2019-01-31,CPTY_00412,Retail,Retail Customer,0.41,N,N,.,N,FICO,642,4 - Bankable,0.01076,0.14793
2019-01-31,CPTY_00174,Retail,Retail Customer,0.38,N,N,.,N,FICO,629,4 - Bankable,0.01076,0.11091
2019-01-31,CPTY_00113,Retail,Retail Customer,0.1,N,N,.,N,FICO,795,1 - Largely Risk Free,0.00024,0.03105
2019-01-31,CPTY_00243,Retail,Retail Customer,0.31,N,N,.,N,FICO,677,3 - Modest Risk,0.00068,0.08416
2019-01-31,CPTY_00455,Retail,Retail Customer,0.45,N,N,.,N,FICO,626,4 - Bankable,0.00024,0.16646
2019-01-31,CPTY_00446,Retail,Retail Customer,0.33,N,N,.,N,FICO,662,3 - Modest Risk,0.01076,0.08892
2019-01-31,CPTY_00351,Retail,Retail Customer,0.61,Y,Y,2018-06-01,N,FICO,506,6 - Special Mention,0.04305,0.34542
2019-01-31,CPTY_00570,Retail,Retail Customer,0.5,Y,Y,2018-06-01,N,FICO,552,5 - Additional Review,0.04305,0.20009
2019-01-31,CPTY_00571,Retail,Retail Customer,0.48,Y,Y,2018-06-01,N,FICO,586,5 - Additional Review,0.04305,0.26369
2019-01-31,CPTY_00092,Retail,Retail Customer,0.59,Y,Y,2018-06-01,N,FICO,506,6 - Special Mention,0.17221,0.35204
2019-01-31,CPTY_00459,Retail,Retail Customer,0.21,N,N,.,N,FICO,740,2 - Minimal Risk,0.00068,0.0489
2019-01-31,CPTY_00554,Retail,Retail Customer,0.07,N,N,.,N,FICO,797,1 - Largely Risk Free,0.00024,0.02515
2019-01-31,CPTY_00434,Retail,Retail Customer,0.48,Y,Y,2018-06-01,N,FICO,582,5 - Additional Review,0.04305,0.20701
2019-01-31,CPTY_00416,Retail,Retail Customer,0.41,N,N,.,N,FICO,625,4 - Bankable,0.01076,0.18656
2019-01-31,CPTY_00572,Retail,Retail Customer,0.22,N,N,.,N,FICO,713,2 - Minimal Risk,0.00068,0.03633
2019-01-31,CPTY_00573,Retail,Retail Customer,0.79,Y,Y,2018-06-01,N,FICO,412,8 - Doubtful,0.04305,0.58217
2019-01-31,CPTY_00115,Retail,Retail Customer,0.61,N,N,.,N,FICO,549,6 - Special Mention,0.01076,0.36132
2019-01-31,CPTY_00235,Retail,Retail Customer,0.2,N,N,.,N,FICO,724,2 - Minimal Risk,0.00068,0.03378
2019-01-31,CPTY_00422,Retail,Retail Customer,0.49,Y,Y,2018-06-01,N,FICO,588,5 - Additional Review,0.04305,0.20129
2019-01-31,CPTY_00588,Retail,Retail Customer,0.19,N,N,.,N,FICO,750,2 - Minimal Risk,0.00068,0.04736
2019-01-31,CPTY_00404,Retail,Retail Customer,0.51,Y,Y,2018-06-01,N,FICO,580,5 - Additional Review,0.04305,0.24586
2019-01-31,CPTY_00525,Retail,Retail Customer,0.43,N,N,.,N,FICO,648,4 - Bankable,0.01076,0.17907
2019-01-31,CPTY_00486,Retail,Retail Customer,0.8,N,N,.,N,FICO,409,8 - Doubtful,0.00068,0.63381
2019-01-31,CPTY_00182,Retail,Retail Customer,0.13,N,N,.,N,FICO,767,1 - Largely Risk Free,0.00024,0.01094
2019-01-31,CPTY_00069,Retail,Retail Customer,0.37,N,N,.,N,FICO,618,4 - Bankable,0.01076,0.18489
2019-01-31,CPTY_00353,Retail,Retail Customer,0.39,N,N,.,N,FICO,636,4 - Bankable,0.01076,0.1071
2019-01-31,CPTY_00550,Retail,Retail Customer,0.43,N,N,.,N,FICO,610,4 - Bankable,0.01076,0.15244
2019-01-31,CPTY_00349,Retail,Retail Customer,0.82,Y,Y,2018-06-01,N,FICO,428,8 - Doubtful,0.04305,0.74826
2019-01-31,CPTY_00004,Retail,Retail Customer,0.69,Y,Y,2018-06-01,N,FICO,498,7 - Sub-Standard,0.04305,0.35558
2019-01-31,CPTY_00567,Retail,Retail Customer,0.43,N,N,.,N,FICO,645,4 - Bankable,0.01076,0.14705
2019-01-31,CPTY_00445,Retail,Retail Customer,0.08,N,N,.,N,FICO,831,1 - Largely Risk Free,0.00024,0.00806
2019-01-31,CPTY_00547,Retail,Retail Customer,0.48,N,N,.,N,FICO,598,5 - Additional Review,0.01076,0.28422
2019-01-31,CPTY_00431,Retail,Retail Customer,0.45,N,N,.,N,FICO,636,4 - Bankable,0.01076,0.145
2019-01-31,CPTY_00432,Retail,Retail Customer,0.8,N,N,.,N,FICO,443,8 - Doubtful,0.00024,0.73125
2019-01-31,CPTY_00006,Retail,Retail Customer,0.19,N,N,.,N,FICO,727,2 - Minimal Risk,0.00068,0.05276
2019-01-31,CPTY_00060,Retail,Retail Customer,0.68,N,Y,2015-06-06,N,FICO,475,7 - Sub-Standard,0.04305,0.47521
2019-01-31,CPTY_00220,Retail,Retail Customer,0.57,N,N,.,N,FICO,537,6 - Special Mention,0.17221,0.35629
2019-01-31,CPTY_00433,Retail,Retail Customer,0.37,N,N,.,N,FICO,614,4 - Bankable,0.04305,0.15459
2019-01-31,CPTY_00184,Retail,Retail Customer,0.37,N,N,.,N,FICO,643,4 - Bankable,0.01076,0.18087
2019-01-31,CPTY_00548,Retail,Retail Customer,0.38,N,N,.,N,FICO,633,4 - Bankable,0.01076,0.14573
2019-01-31,CPTY_00520,Retail,Retail Customer,0.5,N,N,.,N,FICO,591,5 - Additional Review,0.04305,0.24244
;;;;
run;


