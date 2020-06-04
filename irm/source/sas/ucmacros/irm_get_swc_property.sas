/*
 Copyright (C) 2016 SAS Institute Inc. Cary, NC, USA
*/

/**
   \file

   \brief   Returns the value of a given property for the specified Software Component

   \param [in] swc_name Name of the Software Component
   \param [in] property Name of the property to retrieve
   \param [in] debug controls whether debug information is printed to the log. Values: True/False. (Default: false)
   \param [in] pattern_match_flg Flag (Y/N). Controls whether pattern match (Y) or exact match (N) is performed. (Default: N)
   \param [out] outvar Name of the output macro variable storing the value of the requested property. (Default: swc_property_value)
   \param [out] out_ds optional Name of the output table storing the list of matched properties. (Default: <i>&lt;blank&gt;</i>)

   \details
   This macro will query the specified Software Component metadata object and returns the value of the requested property/properties.<br>
   Pattern match (through regular expression) is performed if <i>pattern_match_flg = Y</i>. <br>
   In this case the input parameter <i>property</i> can contain the wildcard symbol:
   - special wildcard character * is automatically converted into regular expression (.*), unless it has been escaped using backslash (i.e. \\*)
   - special dot character . is automatically escaped --> \\.

   When pattern matching is enabled, the output macro variable (specified with the outvar parameter) is a semi-colon separated list of &lt;property_name&gt;=&lt;property-value&gt;

   <b>Example</b><br>
   Retrieve all registered IRM federated areas:

   \code
      %let swc_property_value =;
      %irm_get_swc_property(swc_name = IRM Mid-Tier Server
                            , property = com.sas.solutions.risk.irm.fa.(?!readonly.)*
                            , debug = true
                            , outvar = swc_property_value
                            , out_ds = irm_federated_areas
                            , pattern_match_flg = Y
                            );
      %put swc_property_value: %superq(swc_property_value);
   \endcode

   Sample output macro variable and result table:

   \code
      swc_property_value: com.sas.solutions.risk.irm.fa.0.3.4=/sas/config/Lev1/AppData/SASIRM/fa.0.3.4;com.sas.solutions.risk.irm.fa.ifrs9.2017.10=/sas/repositories/fa_ifrs9/irm
   \endcode


   | swc_name            | uri_Property                      | property_name                               | property_value                               |
   |---------------------|-----------------------------------|---------------------------------------------|----------------------------------------------|
   | IRM Mid-Tier Server | OMSOBJ:Property\A5PUZKI1.AC0002LD | com.sas.solutions.risk.irm.fa.0.3.4         | /sas/config/Lev1/AppData/SASIRM/fa.0.3.4 |
   | IRM Mid-Tier Server | OMSOBJ:Property\A5PUZKI1.AC0004SL | com.sas.solutions.risk.irm.fa.ifrs9.2017.10 | /sas/repositories/fa_ifrs9/irm           |

   Note the use of negative lookahead expression <i>(?!readonly.)</i> to exclude from the match any property that would look like <i>com.sas.solutions.risk.irm.fa.readonly.*</i>


   \ingroup macroUtils

   \author  SAS Institute Inc.
   \date    2016
*/
%macro irm_get_swc_property(swc_name =
                            , property =
                            , debug = false
                            , pattern_match_flg = N
                            , outvar = swc_property_value
                            , out_ds =
                            );

   %if(not %symexist(&outvar.)) %then
      %global &outvar.;

   %let &outvar. =;

   %if(%sysevalf(%superq(pattern_match_flg) =, boolean)) %then
      %let pattern_match_flg = N;
   %else
      %let pattern_match_flg = %upcase(&pattern_match_flg.);

   data
      %if(%sysevalf(%superq(out_ds) ne, boolean)) %then
         &out_ds.;
      %else
         _null_;
      ;
      length
         swc_name
         uri_swc
         uri_PropertySets
         uri_Property
         property_name $256.
         property_value $1024.
         outvar $4000.
      ;
      keep
         swc_name
         uri_Property
         property_name
         property_value
      ;
      swc_name = "&swc_name.";
      /* Get the Software Component URI */
      rc_swc = metadata_getnobj("omsobj:SoftwareComponent?@Name='&swc_name.'", 1, uri_swc);
      %if(%upcase(&debug.) eq TRUE) %then
         put rc_swc= uri_swc=;
      ;

      if rc_swc = 1 then do;
         /* Get the Property Sets URI */
         rc_PropertySets = metadata_getnasn(uri_swc, "PropertySets", 1, uri_PropertySets);
         %if(%upcase(&debug.) eq TRUE) %then
            put rc_PropertySets= uri_PropertySets=;
         ;

         if(rc_PropertySets > 0) then do;
            n = 0;
            rc_property = 1;
            /* Loop through all properties */
            do while(rc_property > 0);
               n = n + 1;
               call missing(uri_Property, property_name, property_value);
               /* Get the Property URI */
               rc_property = metadata_getnasn(uri_PropertySets, "SetProperties", n, uri_Property);
               /* Get the Property Name */
               rc_property_name = metadata_getattr(uri_Property, "Name", property_name);
               /* Get the Property Value */
               rc_property_value = metadata_getattr(uri_Property, "DefaultValue", property_value);

               %if(%upcase(&debug.) eq TRUE) %then %do;
                  put;
                  put "--> " uri_Property=;
                  put "----> " property_name=;
                  put "----> " property_value=;
               %end;
               %if(&pattern_match_flg. = Y) %then %do;
                  /* Quote special character -> Convert . to \. (only if the . is not already preceded by an escape backslash) */
                  %let property = %sysfunc(prxchange(s/(?<!\\)[.]/\./i, -1, %superq(property)));
                  /* Convert * to regex multi-character wildcard -> (.*) (only if the * is not preceded by an escape backslash) */
                  %let property = %sysfunc(prxchange(s/(?<!\\)[*]/(.*)/i, -1, %superq(property)));
                  if(prxmatch("/^&property.$/i", strip(property_name))) then do;
                     outvar = catx(";", outvar, catx("=", property_name, property_value));
                     output;
                  end;
               %end;
               %else %do;
                  if(upcase(strip(property_name)) = "%upcase(&property.)") then do;
                     call symput("&outvar.", property_value);
                     output;
                     stop;
                  end;
               %end;
            end;
         end;
      end;
      %if(&pattern_match_flg. = Y) %then %do;
         call symput("&outvar.", strip(outvar));
      %end;
   run;

%mend;