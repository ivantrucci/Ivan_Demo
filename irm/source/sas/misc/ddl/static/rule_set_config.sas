/*  Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
\brief   The table RULE_SET_CONFIG contains business rules definitions.
 
   | PK           | Variable            | Type             | Required?  | Label                      | Description                                                                                                                                                                                 |
   |--------------|---------------------|------------------|------------|----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
   | ![ ](pk.jpg) | RULE_SET_GROUP_ID   | CHARACTER(100)   | Y          | Rule Set Group Id          | Rule Set Group Identifier                                                                                                                                                                   |
   |              | PRIMARY_KEY         | CHARACTER(10000) | N          | Primary Key                | (Optional) List of primary key variables of the source table. Only used if parameter <i>DS_OUT_DETAILS</i> is not blank                                                                     |
   |              | RULE_ID             | CHARACTER(32)    | Y          | Rule Id                    | Rule Identifier                                                                                                                                                                             |
   |              | RULE_NAME           | CHARACTER(100)   | N          | Rule Name                  | Rule Name                                                                                                                                                                                   |
   |              | RULE_DESC           | CHARACTER(100)   | N          | Rule Description           | Rule Description                                                                                                                                                                            |
   |              | RULE_COMPONENT      | CHARACTER(10)    | Y          | Rule Component             | Specifes if the current record relates to the Condition or the Action portion of the rule. <br>Valid Values (case insensitive):<br> - Condition <br> - Action                               |
   |              | OPERATOR            | CHARACTER(10)    | N          | Operator                   | Boolean Operator. It can be used to combine multiple conditions within a rule.<br>Valid Values (case insensitive): <br> - <blank> <br> - And <br> - Or <br> -Not <br> -And Not <br> -Or Not |
   |              | PARENTHESIS         | CHARACTER(1)     | N          | Parenthesis                | Opening/Closing parenthesis. It can be used to create more complex boolean conditions.<br>Valid Values: <br> - <blank> <br> - ( <br> - )                                                    |
   |              | COLUMN_NM           | CHARACTER(32)    | Y          | Column Name                | Required unless RULE_TYPE = "CUSTOM". Name of the variable used to build the condition expression                                                                                           |
   |              | RULE_TYPE           | CHARACTER(100)   | Y          | Rule Type                  | Controls how the expression for evaluating the condition/action is built.                                                                                                                   |
   |              | RULE_DETAILS        | CHARACTER(4000)  | Y          | Rule Details               | Provides additional details needed to build the expression for evaluating the condition/action.                                                                                             |
   |              | MESSAGE_TXT         | CHARACTER(4096)  | N          | Message Text               | Provides a custom message for reporting the results of rules evaluation. Only one message per rule can be specified: for any given rule id, the first non-blank value that is used.         |
   |              | LOOKUP_TABLE        | CHARACTER(40)    | N          | Lookup Table               | Required if RULE_TYPE in  ("LOOKUP", "NOT_LOOKUP"). Used to specify an additional lookup table to be used for evaluating the condition/action                                               |
   |              | LOOKUP_KEY          | CHARACTER(10000) | N          | Lookup key                 | Space separated list of lookup key variables. These variables must be found in both the SOURCE_TABLE and the LOOKUP table                                                                   |
   |              | LOOKUP_DATA         | CHARACTER(10000) | N          | Lookup Data                | Space separated list of lookup data variables to retrieve. These variables must be found in the LOOKUP table                                                                                |
   |              | AGGR_VAR_NM         | CHARACTER(32)    | N          | Aggregated Variable Name   | Name (Alias) given to the result of the aggregated expression                                                                                                                               |
   |              | AGGR_EXPRESSION_TXT | CHARACTER(10000) | N          | Aggregated Expression Text | Summary-type of expression (i.e. SUM(<varname>). <br>Orthogonal query expressions can be used to perform filtered aggregation (i.e. SUM(<varname> * (<other_varname> = "some value"))       |
   |              | AGGR_GROUP_BY_VARS  | CHARACTER(10000) | N          | Aggregated Group By Vars   | (Optional) Space separated list of group-by variables for the aggregation.                                                                                                                  |
   |              | AGGREGATED_RULE_FLG | CHARACTER(1)     | Y          | Aggregated Rule Flag       | Flag (Y/N). Specifies if the rule operates at the detail level (for each record of the SOURCE_TABLE) or at aggregated level                                                                 |
   |              | RULE_REPORTING_LEV1 | CHARACTER(1024)  | N          | Rule Reporting Level 1     | This field is used to classify rules for reporting purpose                                                                                                                                  |
   |              | RULE_REPORTING_LEV2 | CHARACTER(1024)  | N          | Rule Reporting Level 2     | This field is used to classify rules for reporting purpose                                                                                                                                  |
   |              | RULE_REPORTING_LEV3 | CHARACTER(1024)  | N          | Rule Reporting Level 3     | This field is used to classify rules for reporting purpose                                                                                                                                  |
   |              | RULE_WEIGHT         | NUMERIC(8)       | Y          | Rule Weight                | A weight assigned to the rule. Used for reporting purpose (weighted aggregation for building performance indicators)                                                                        |
 
\details

   See \link irm_run_rules.sas \endlink for details for details.
    
\ingroup ddlStaticDQ
\author  SAS Institute Inc.
\date    2018
*/
 
CREATE TABLE &LIBREF..RULE_SET_CONFIG (
   RULE_SET_GROUP_ID       VARCHAR(100)      label = 'Rule Set Group Id',
   PRIMARY_KEY             VARCHAR(10000)    label = 'Primary Key',
   RULE_ID                 VARCHAR(32)       label = 'Rule Id',
   RULE_NAME               VARCHAR(100)      label = 'Rule Name',
   RULE_DESC               VARCHAR(100)      label = 'Rule Description',
   RULE_COMPONENT          VARCHAR(10)       label = 'Rule Component',
   OPERATOR                VARCHAR(10)       label = 'Operator',
   PARENTHESIS             VARCHAR(1)        label = 'Parenthesis',
   COLUMN_NM               VARCHAR(32)       label = 'Column Name',
   RULE_TYPE               VARCHAR(100)      label = 'Rule Type',
   RULE_DETAILS            VARCHAR(4000)      label = 'Rule Details',
   MESSAGE_TXT             VARCHAR(4096)     label = 'Message Text',
   LOOKUP_TABLE            VARCHAR(40)       label = 'Lookup Table',
   LOOKUP_KEY              VARCHAR(10000)    label = 'Lookup key',
   LOOKUP_DATA             VARCHAR(10000)    label = 'Lookup Data',
   AGGR_VAR_NM             VARCHAR(32)       label = 'Aggregated Variable Name',
   AGGR_EXPRESSION_TXT     VARCHAR(10000)    label = 'Aggregated Expression Text',
   AGGR_GROUP_BY_VARS      VARCHAR(10000)    label = 'Aggregated Group By Vars',
   AGGREGATED_RULE_FLG     VARCHAR(1)        label = 'Aggregated Rule Flag',
   RULE_REPORTING_LEV1     VARCHAR(1024)     label = 'Rule Reporting Level 1',
   RULE_REPORTING_LEV2     VARCHAR(1024)     label = 'Rule Reporting Level 2',
   RULE_REPORTING_LEV3     VARCHAR(1024)     label = 'Rule Reporting Level 3',
   RULE_WEIGHT             NUMERIC(8)        label = 'Rule Weight'
);
