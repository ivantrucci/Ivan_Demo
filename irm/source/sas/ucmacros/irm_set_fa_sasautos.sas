%macro irm_set_fa_sasautos(fa_id =
                           , fa_path =
                           , mode = insert
                           , insert_before =
                           , insert_after =
                           , outvar_prefix =
                           , limit = 0
                           , force_flg = N
                           );
   
   %local
      swc_property_value
      path
      TotPaths
      TotFas
      TotFaInsert
      processed
      path_to_insert
      path_to_check
      found
      i j
   ;


   /*  Make sure the mode parameter is set */
   %if %sysevalf(%superq(mode) =, boolean) %then %do;
      %put WARNING: input parameter MODE is missing. Setting MODE = insert;
      %let mode = insert;
   %end;
   %else %do;
      %let mode = %lowcase(&mode.);
      /* Make sure the MODE parameter is one of the following: insert/append/set */
      %if(not %sysfunc(prxmatch(/^(insert|append|set)$/i, &mode.))) %then %do;
         %put ERROR: invalid parameter MODE = &mode.. Accepted values: insert/append/set;
         %return;
      %end;
   %end;


   /* Make sure the limit is set */
   %if %sysevalf(%superq(limit) =, boolean) %then
      %let limit = 0;

   /* Make sure the force_flg is set */
   %if %sysevalf(%superq(force_flg) =, boolean) %then
      %let force_flg = N;
   %else
      %let force_flg = %upcase(&force_flg.);
   
   %if %sysevalf(%superq(fa_path) =, boolean) %then %do;
      /* Get the list of IRM federated areas matching the specified value */
      %irm_get_swc_property(swc_name = IRM Mid-Tier Server
                            , property = com.sas.solutions.risk.irm.fa.(?!readonly.)&fa_id.
                            , debug = true
                            , outvar = swc_property_value
                            , out_ds = irm_federated_areas
                            , pattern_match_flg = Y
                            );
   
      /* Sort in descending order */
      proc sort data = irm_federated_areas;
         by descending property_name;
      run;
      
      /* Load the list of FAs into macro variable array */
      %let TotFas = 0;
      data _null_;
         set 
            irm_federated_areas 
               %if(&limit. > 0) %then %do;
                  (obs = &limit.)
               %end;
               end = last
         ;
         call symputx(cats("fa_path_", put(_N_, 8.)), cats(property_value, "/source/sas/ucmacros"), "L");
         if last then
            call symputx("TotFas", _N_, "L");
      run;
   %end;
   %else %do;
      %let TotFas = %sysfunc(countw(%superq(fa_path), %str(,)));
      %do i = 1 %to &TotFas.;
         %local fa_path_&i.;
         %let fa_path_&i. = %scan(%superq(fa_path), &i., %str(,));
      %end;
   %end;
   
   %if %sysevalf(%superq(outvar_prefix) ne, boolean) %then %do;
      %global &outvar_prefix._count;
      %let &outvar_prefix._count = &TotFas.;
      %do i = 1 %to &TotFas.;
         %global &outvar_prefix._&i.;
         %let &outvar_prefix._&i. = "&&fa_path_&i..";
      %end;
   %end;
   
   /* Process the SASAUTOS and split it into the individual entries */
   %let TotPaths = 0;
   data _null_;
      length
         sasautos $32000.
         path $32000.
      ;
      /* Regex to remove any brackets: ("path1" ('path2') ... SASAUTOS)  --> "path1" 'path2' ... SASAUTOS */
      rx1 = prxparse("s/[()]/ /");
      /* Regex to convert double to single quotes: "path1" 'path2' ... SASAUTOS  --> 'path1' 'path2' ... SASAUTOS  */
      rx2 = prxparse("s/[""]/'/");
      /* Regex to match a quoted path or a fileref (wingle word): 'foo/bar' or fref1 */
      rx = prxparse("/(['][^']+['])|(\w+)/");
      /* Get the current sasautos */
      sasautos = getoption("sasautos");
      /* Remove brackets */
      sasautos = prxchange(rx1, -1, sasautos);
      /* Convert double quotes to single quotes */
      sasautos = prxchange(rx2, -1, sasautos);
      
      /* Start scanning */
      start = 1;
      stop = length(sasautos);
      call prxnext(rx, start, stop, sasautos, position, len);
      i = 0;
      do while (position > 0);
         i + 1;
         /* Extract the current path */
         path = substr(sasautos, position, len);
         /* Save the path to a macro variable */
         call symputx(cats("sasautos_path_", put(i, 8.)), path, "L");
         /* Look for the next match */
         call prxnext(rx, start, stop, sasautos, position, len);
      end;
      
      call symputx("TotPaths", i, "L");
   run;
   
 
   /* Pre-processing required to make sure we don't insert paths that are already there */
   %let TotFaInsert = 0;
   %do i = 1 %to &TotFas.;
      %let path_to_insert = %sysfunc(prxchange(s/[\\]/\//i, -1, %superq(fa_path_&i.)));
      %let found = N;
      %if(&force_flg. = N and &mode. ne set) %then %do;
         /* Check if the path to be inserted is already in the sasautos */
         %do j = 1 %to &TotPaths.;
            %let path_to_check = %sysfunc(prxchange(s/[\\]/\//i, -1, %superq(sasautos_path_&j.)));
            %let path_to_check = %sysfunc(prxchange(s/['']//i, -1, %superq(path_to_check)));
            %if(%bquote(&path_to_insert.) = %bquote(&path_to_check.)) %then
               %let found = Y;
         %end;
      %end;
      %if(&found. = N) %then %do;
         %let TotFaInsert = %eval(&TotFaInsert. + 1);
         %local fa_insert_path_&TotFaInsert.;
         %let fa_insert_path_&TotFaInsert. = &&fa_path_&i..;         
      %end;
   %end;
 
   
   /* Add all the FAs to the sasautos */
   %if(&TotFaInsert. > 0) %then %do;
   
      /* Use standard insert/append option */
      %if (%sysfunc(prxmatch(/^(insert|append)$/i, &mode.))
           and %sysevalf(%superq(insert_before) =, boolean)
           and %sysevalf(%superq(insert_after) =, boolean)
           ) %then %do;
         option 
            &mode. = (sasautos = (
                        %do i = 1 %to &TotFaInsert.;
                           "&&fa_insert_path_&i.."
                        %end;
                        )
                      )
         ;
                              
      %end;
      %else %do;
      
         /* Make sure there insert_before/after parameters contain a forward slash at the end */
         %let prx_before = %sysfunc(prxchange(s/([\\\/][^\\\/])[\\\/]?$/$1\//i, -1, &insert_before.));
         %let prx_before = %sysfunc(prxchange(s/[\\\/]/\\\//i, -1, &prx_before.));
         
         %let prx_after = %sysfunc(prxchange(s/([\\\/][^\\\/])[\\\/]?$/$1\//i, -1, &insert_after.));
         %let prx_after = %sysfunc(prxchange(s/[\\\/]/\\\//i, -1, &prx_after.));
         
         /* Set the new SASAUTOS */
         option
            sasautos = (
            
               /* Flag used to determine if we have inserted the new paths */
               %let processed = N;
               
               /* Loop through all pre-existing sasautos paths */
               %do i = 1 %to &TotPaths.;
                  /* Set the current path */
                  %let path = &&sasautos_path_&i..;
                  /* Convert any backslash into a forward slash  */
                  %let fwd_path = %sysfunc(prxchange(s/\\/\//i, -1, &path.));
                  /* Remove single quotes */
                  %let fwd_path = %sysfunc(prxchange(s/['']//i, -1, &fwd_path.));
                  
                  /* Check if we need to insert the paths before the specified value */
                  %if (&processed. = N and %sysevalf(%superq(insert_before) ne, boolean)) %then %do;
                     %if(  (/* The current path is a fileref (single word) */
                            %sysfunc(prxmatch(/^\w+$/, &fwd_path.)) > 0
                            /* and we get a match (case insensitive) */
                            and %qlowcase(&insert_before.) = %qlowcase(&fwd_path.) 
                            )
                          OR
                           (/* The current path is not a fileref */
                            %sysfunc(prxmatch(/^\w+$/, &fwd_path.)) = 0
                            /* We match the path */
                            and %sysfunc(prxmatch(/^&prx_before./, &fwd_path.)) > 0
                           )
                        ) %then %do;
                        /* Insert the requested paths */
                        %do j = 1 %to &TotFaInsert.;
                           "&&fa_insert_path_&j.."
                        %end;
                        /* Mark the fact that we have inserted the requested paths */
                        %let processed = Y;
                     %end;                  
                  %end;
                  
                  /* Add the current path if we are not in SET mode */
                  %if(&mode. ne set) %then %do;
                     &path.
                  %end;
                  
                  /* Check if we need to insert the paths after the specified value */
                  %if (&processed. = N and %sysevalf(%superq(insert_after) ne, boolean)) %then %do;
                     %if(  (/* The current path is a fileref (single word) */
                            %sysfunc(prxmatch(/^\w+$/, &fwd_path.)) > 0
                            /* and we get a match (case insensitive) */
                            and %qlowcase(&insert_after.) = %qlowcase(&fwd_path.) 
                            )
                          OR
                           (/* The current path is not a fileref */
                            %sysfunc(prxmatch(/^\w+$/, &fwd_path.)) = 0
                            /* We match the path */
                            and %sysfunc(prxmatch(/^&prx_after./, &fwd_path.)) > 0
                           )
                        ) %then %do;
                        /* Insert the requested paths */
                        %do j = 1 %to &TotFaInsert.;
                           "&&fa_insert_path_&j.."
                        %end;
                        /* Mark the fact that we have inserted the requested paths */
                        %let processed = Y;
                     %end;                  
                  %end;
                  
               %end; /* %do i = 1 %to &TotPaths.; */
               
               /* Make sure we have inserted the path */
               %if(&processed. = N) %then %do;
                  /* Insert the requested paths */
                  %do j = 1 %to &TotFaInsert.;
                     "&&fa_insert_path_&j.."
                  %end;
               %end;
            )
         ;
         
      %end;
   
   %end; /* %if(&TotFaInsert. > 0) */
%mend;