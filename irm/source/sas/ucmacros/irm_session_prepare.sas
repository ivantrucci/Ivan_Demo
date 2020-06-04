/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */

/*!
\file
\brief   The macro irm_session_prepare.sas will use the values defined inside the RUN_OPTION configuration table to prepare the SAS session

\details
As the RUN_OPTION configuration table is defined inside macrovarload.txt, the content of this table is automatically loaded inside macro variables.

<b> Log verbosity </b>
Depending on the value of the <i>LOG_LEVEL</i> macro variable, the solution applies a specific verbosity level to the node log (via the SAS OPTIONS statement)
- LOG_LEVEL &leq; 1 -> notes
- LOG_LEVEL = 2 -> notes source2 mprint
- LOG_LEVEL = 3 -> notes source2 mprint symbolgen
- LOG_LEVEL = 4 -> notes source2 mprint symbolgen mlogic
- LOG_LEVEL &geq; 5 -> notes source2 mprint symbolgen mlogic mprintnest

<b> Additional System Options </b>

Aditional SAS System options can be specified via the <i>SYSTEM_OPTION</i> macro variable inside the RUN_OPTION table.
For example, to enable data compression and detailed timing information you could set the value:
- SYSTEM_OPTION = <i>fullstimer compress = yes</i>

Additionally this macro will create a macro variable <i>IRM_NODE_NAME</i> containing the name of the sas program currently being executed by the IRM task.

\ingroup macro utility
\author  SAS Institute Inc.
\date    2018
*/

%macro irm_session_prepare();
   %local
      modate
      fa_path
      old_logOptions
   ;

   /* Get current MPRINT setting */
   %let old_logOptions = %sysfunc(getoption(mprint));
   /* Enable MPRINT */
   option mprint;
   
   /* Reset credentials */
   option metauser = "" metapass = "";
   
   /* List all libraries */
   libname _ALL_ list;

   /* Declare global macro variable IRM_NODE_NAME if it does not exist */
   %if not %symexist(IRM_NODE_NAME) %then
      %global irm_node_name;

   /* Find out the name and FA path of the current running node */
   %let irm_node_name = Not Available;
   proc sql outobs = 1 nowarn noprint;
      select
         /* Go four levels up from the program name to get to the FA root */
         prxchange("s/([\\\/][^\\\/]+){4}$//i", -1, xpath) as fa_path
         /* Extract the program name */
         , scan(xpath, -1, "/\") as node_name
         , modate
            into
               :fa_path
               , :irm_node_name
               , :modate
      from
         sashelp.vextfl
      where
         /* Look for files */
         directory = "no"
         /* Programs executed via the %include statement are temporary filerefs */
         and temporary = "yes"
         /* Look for .sas extension */
         and scan(xpath, -1, ".") = "sas"
         /* Look for 'nodes' in the path */
         and index(xpath, "nodes") > 0
      order by
         modate desc
      ;
   quit;

   /* Set the RMC_FA_ID macro variable if not passed from outside through the macro varload facility (RUN_OPTION) */
   %if(not %symexist(RMC_FA_ID)) %then
      %let rmc_fa_id = rmc.*;

   /* make sure the RMC_FA_ID is not blank */
   %if %sysevalf(%superq(rmc_fa_id) =, boolean) %then
      %let rmc_fa_id = rmc.*;
      
   /* Set SASAUTOS for RMC */
   %irm_set_fa_sasautos(fa_id = &rmc_fa_id.
                        , mode = insert
                        , insert_after = &fa_path.
                        , limit = 1
                        );

   /* Set LUAPATH for RMC */
   %irm_set_fa_luapath(fa_id = &rmc_fa_id.
                        , mode = insert
                        , insert_after = &fa_path.
                        , limit = 1
                        );

   /* Restore initial MPRINT option */
   option &old_logOptions.;

   /* Set Logging options */
   %irm_set_logging_options();

   /* Set System options */
   %irm_set_system_options();
   
%mend;
