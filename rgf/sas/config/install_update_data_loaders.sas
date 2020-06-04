/* Federated Area Id (as specified in SMC) */
%let irm_fa_id = %sysget(irm_fa_id);

/* Get the path to the FA from metadata */
%let irm_fa_path = %sysfunc(metadata_appprop(IRM Mid-Tier Server, com.sas.solutions.risk.irm.fa.&irm_fa_id.));

/* Extract the irm folder name and the source path */
%let fa_name = %scan(%bquote(&irm_fa_path.), -1, /\);
%let source_path = %sysfunc(prxchange(s/[\\\/]&fa_name.$//i, -1, %bquote(&irm_fa_path.)));

/* ************************************************* */
/*            Update Model data loader               */
/* ************************************************* */

/* Import the model data loader */
options validvarname=any;
proc import datafile = "&source_path./rgf/data_loader_files/Model.xlsx"
   dbms = xlsx out = work.model replace;
   sheet = "Model_Template";
run;

/* Macro to pull file names from columns in the model data loader */
%macro get_filenames_from_field(list, field, data);
   proc sql noprint;
      %let scripts=;
      select distinct &field. as script
      into :scripts separated by ' '
      from &data.
      where not missing(&field.)
            and "&&&list.." not like (catt('%',script,'%'));
      %let &list. = &&&list.. &scripts;
   quit;
%mend get_filenames_from_field;

/* Get a list of script file names and parameter file names*/
%let file_list=;
%get_filenames_from_field(file_list, 'customObject1.codeEditor'n, work.model);
%get_filenames_from_field(file_list, 'customObject1.preCodeEditor'n, work.model);
%get_filenames_from_field(file_list, 'customObject1.postCodeEditor'n, work.model);
%get_filenames_from_field(file_list, 'customObject1.mipPreCodeEditor'n, work.model);
%get_filenames_from_field(file_list, 'customObject1.mipPostCodeEditor'n, work.model);
%get_filenames_from_field(file_list, 'customObject1.parameters'n, work.model);

/* Get all of the boolean fields */
%let boolFields=;
proc sql noprint;
   select distinct 
      cust_Field_Nm
         into :boolFields separated by  " "
   from
      rmc.cust_field_defn_l
   where
      business_object_type_nm = 'customObject1'
      and cust_field_type_cd = "BOL"
   ;
quit;

/* Create an empty file lookup table */
data work.file_lookup;
   length file_name $100.
          file_contents $32767.;
run;

/* Pull the contents of each file from the file list */
%macro process_files(file_list, file_lookup);
   %do i = 1 %to %sysfunc(countw(&file_list., " "));
      %let file = %scan(&file_list.,&i.,%str( ));
      %let ext = %scan(&file,2,%str(.));
      %if %lowcase(&ext.) = sas %then %let folder = scripts;
      %else %let folder = scripts/script_params;
      filename contents "&source_path./rgf/sas/&folder./&file.";
      data current_contents;
         length file_name $100.
                file_contents $32767.;
         retain file_contents '';
         infile contents flowover end=last;
         input;
         file_contents=catt(file_contents,'~~',_infile_);
         file_name = "&file.";
         if last then do;
            file_contents = tranwrd(file_contents,"~~",'0A'x);
            output;
         end;
      run;
      proc append base=file_lookup data=current_contents force;
      run;
   %end;
%mend;
%process_files(&file_list., work.file_lookup);

/* Macro to update a given field in the data loader data set with associated file contents */
%macro update_dataloader_field(data, field, file_lookup);
data &data.;
   set &data. (rename=(&field.=file_name));
   length &field. $32676;
   if _N_ = 1 then do;
      /* Define file lookup */
      declare hash hFile(dataset: "&file_lookup.(rename=(file_contents=&field.))");
      hFile.defineKey("file_name");
      hFile.defineData(all: "yes");
      hFile.defineDone();
   end;
   call missing(&field.);
   __rch__ = hFile.find();
   drop __rch__
        file_name;
run;
%mend;

/* Replace all necessary fields in model data loader with the file contents */
%update_dataloader_field(work.model, 'customObject1.codeEditor'n, work.file_lookup);
%update_dataloader_field(work.model, 'customObject1.preCodeEditor'n, work.file_lookup);
%update_dataloader_field(work.model, 'customObject1.postCodeEditor'n, work.file_lookup);
%update_dataloader_field(work.model, 'customObject1.mipPreCodeEditor'n, work.file_lookup);
%update_dataloader_field(work.model, 'customObject1.mipPostCodeEditor'n, work.file_lookup);
%update_dataloader_field(work.model, 'customObject1.parameters'n, work.file_lookup);

/* Set the labels and values as needed for the data loader */
%macro create_model_tab();
   /* Set the labels and values as needed for the data loader */
   data work.model;
      set work.Model (rename=(
         %do i=1 %to %sysfunc(countw(&boolFields.,%str( )));
            "customObject1.%scan(&boolFields.,&i.,%str( ))"n = %scan(&boolFields.,&i.,%str( ))
         %end;
                     ));
      format
         %do i=1 %to %sysfunc(countw(&boolFields.,%str( )));
            "customObject1.%scan(&boolFields.,&i.,%str( ))"n
         %end;  
         $5.
      ;
      label
         'customObject1.mipModelingSystemN'n = 'customObject1.mipModelingSystemName'
         'customObject1.mipWeightedOutputV'n = 'customObject1.mipWeightedOutputVars'
         'customObject1.mipModelingSystemV'n = 'customObject1.mipModelingSystemVersion'
         'customObject1.mipModelingSystemW'n = 'customObject1.mipModelingSystemWorkgroup'
      ;
      
      %do i=1 %to %sysfunc(countw(&boolFields.,%str( )));
         "customObject1.%scan(&boolFields.,&i.,%str( ))"n = ifc(not missing(%scan(&boolFields.,&i.,%str( ))),ifc(strip(%scan(&boolFields.,&i.,%str( ))) = "1", "TRUE", "FALSE"),'');
      %end;  
      
      drop
         %do i=1 %to %sysfunc(countw(&boolFields.,%str( )));
            %scan(&boolFields.,&i.,%str( ))
         %end;
      ;
   run;
%mend create_model_tab;
%create_model_tab();

/* Export the model details to Model worksheet */
proc export data=work.model
  dbms=xlsx
  outfile="&source_path./rgf/data_loader_files/Model.xlsx"
  replace
  label;
  sheet="Model";
run;