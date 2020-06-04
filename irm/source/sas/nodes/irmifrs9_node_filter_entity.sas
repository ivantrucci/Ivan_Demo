/*
   Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA
*/

/** \file 
   \brief   Filter Entity Hierarchy
   
   \param[in] entity_id Entity Identifier
   \param[in] group_flg Group Flag (Y/N). See below for details
   \param[in] ds_in_entity Input Entity table
   \param[out] ds_out_entity Output Entity table
   
   \details
   
   This node filters the input Entity table according to the following logic:
    - If <i>GROUP_FLG</i> = N then only the specified <i>&ENTITY_ID</i> is retrieved
    - If <i>GROUP_FLG</i> = Y then the specified <i>&ENTITY_ID</i> and related children entities are retrieved
   
   In addition the following macro utilities are called:
   
   | Macro name                | Description                                                                                                  | Further information                           |
   |---------------------------|--------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
   | irm_session_prepare       | Reads RUN_OPTION table and sets logging options                                                              | \link irm_session_prepare.sas \endlink        |
   | irm_session_cleanup       | Removes all non-IRM WORK datasets/views and deletes all user-created macro variables from workspace session  | \link irm_session_cleanup.sas \endlink        |

   \ingroup nodes
   \author  SAS Institute Inc.
   \date    2018
*/

/* Initialize session */
%irm_session_prepare();

data &ds_out_entity.;
   set &ds_in_entity.;
   length
      _tmp_entity_id $32.
      _tmp_group_id $32.
   ;
   drop _tmp_:;

   %if(&group_flg. = Y) %then %do;
      if _N_ = 1 then do;
         /* Declare lookup table */
         declare hash hEntity(dataset: "&ds_in_entity.(keep = entity_id group_id rename = (entity_id = _tmp_entity_id group_id = _tmp_group_id))");
         hEntity.defineKey("_tmp_entity_id");
         hEntity.defineData("_tmp_group_id");
         hEntity.defineDone();
      end;
   %end;
   
   if(entity_id = "&entity_id.") then
      output;
   %if(&group_flg. = Y) %then %do;
      else do;
         _tmp_entity_id = entity_id;
         /* Traverse the entity hierarchy to get all parent entities */
         do while(hEntity.find() = 0);
            /* Check if the parent is the required &entity_id */
            if(_tmp_group_id = "&entity_id.") then
               output;
            /* Update the key for the next lookup */
            _tmp_entity_id = _tmp_group_id;
         end;
      end;
   %end;
   
run;

/* Cleanup session */
%irm_session_cleanup;