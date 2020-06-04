libname ehe "C:\ehe\RiskDimensions\PoC\IFRS9\EIR\prototype";

data ehe.input_CF_ori (keep=InstId2 ValDate ValType ValAmount rename=(InstId2=Instid));
  set ehe.cashflow;
   length InstID2 $ 256;
   length ValDate 8;
   length ValType $ 32;
   length ValAmount 8;
   format InstID2 $256.;
   format ValDate DATE9.;
   format ValType $32.;
   format ValAmount 8.2;
   InstID2 = INSTID;
   ValDate = CASHFLOW_DT;
   ValType = CASHFLOW_LEG;
   ValAmount = CASHFLOW_AMT;
run;

/*
Examples of instid present in portfolio:
CREC_00002
CREC_00021
*/
data ehe.input_CF_ori;
  set ehe.input_CF_ori;
   if instid = "AFS_1502_A" then do;
      instid = "CREC_00002";
	  output;
   end;
   if instid = "AFS_1503_A" then do;
      instid = "CREC_00002";
	  output;
   end;
run;
