/* ******************************************** *
/* Pre-processing script for the MIP execution  *
/* ******************************************** *

Details:
   The following SAS macro variables are available to the model at run time:
      - ticket: SAS authentication service ticket (useful for performing operations that require authentication, i.e. interacting with REST services).
      - rgf_protocol: Communication protocol (http/https) of the SAS Risk and Governance Framework web application
      - rgf_host: Hostname of the SAS Risk and Governance Framework web application
      - rgf_port: Port where the SAS Risk and Governance Framework web application is listening
      - rgf_service: The service where the SAS Risk and Governance Framework web application is listening
      - rgf_solution: The solution code used by SAS Risk and Governance Framework to store internal objects
      - dr_libref: Libref to the Data Repository
      - base_dt_ymdn: Base date using format YYYYMMDD
      - model_run_key: Unique key of the model run
      - ds_in_portfolio: portfolio table
      - ds_in_scenario: scenario table
      - ds_in_counterparty: counterparty table (if used)
      - ds_in_mitigant: credit risk mitigant table (if used)

   The following libraries are pre assigned:
      - mipport: MIP portfolio library
      - mipcpty: MIP counterparty library
      - mipmit: MIP credit risk mitigant library
      - mipcf: MIP cashflow library
      - mippmx: MIP parameter matrix library
      - mipval: MIP valueData library
      - mipfunc: MIP functions library

*/

%macro factor_loop(list);

   %let n_factor=%sysfunc(countw(&list.," "));
   proc sort data=&ds_in_scenario. out=sorted;
      by DATE SCENARIO_NAME ;
   run;
   
   %do i_factor=1 %to  &n_factor.;
      %let factor=%sysfunc(scan(&list.,&i_factor.," "));
      /*Transpose the Scenarios*/
      proc transpose data=sorted out=gdp_long prefix=&factor.;
         var &factor.:;
         by DATE SCENARIO_NAME ;
      run;
      /*Define the Geography Codes*/
      data &factor.;
         set gdp_long(keep=SCENARIO_NAME DATE _NAME_ &factor.1);
         %let length_factor=%sysfunc(length(&factor.));
         GEOGRAPHY_CD=substr(_NAME_,%eval(&length_factor.+2));
         drop _NAME_;
      run;
   %end;
   
   /*Collect the Scenario Tables*/
   data result;
      length GEOGRAPHY_CD $20.;
      %do i_factor=1 %to  &n_factor.;
         %let factor=%sysfunc(scan(&list.,&i_factor.," "));
          set &factor.(rename=(&factor.1=&factor.));
      %end;
   run;
   
   /*General Sorting*/
   proc sort data=result out=&ds_in_scenario.;
      by   DATE SCENARIO_NAME GEOGRAPHY_CD ;
   run;

%mend;

%let factor_list=gdp hpi IR uerate;
%factor_loop(&factor_list.);