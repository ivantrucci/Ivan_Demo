/*
 Copyright (C) 2015 SAS Institute Inc. Cary, NC, USA
*/
 
/**
   \file
   \brief   The table VAR_DEPENDENCY_CONFIG defines dependency rules between variables.
 
   |PK |Variable              |Type              | Required? |Label                     |Description                                                                                             |
   |---|----------------------|------------------|-----------|--------------------------|--------------------------------------------------------------------------------------------------------|
   |   | SCHEMA_NAME          | CHARACTER(100)   | Y         | Schema Name              | Logical name of the table schema                                                                       |
   |   | SCHEMA_VERSION       | CHARACTER(50)    | Y         | Schema Version           | Identifies a specific version of the table metadata.                                                   |
   |   | TRIGGER_VAR_NAME     | CHARACTER(32)    | Y         | Trigger Variable Name    | Name of the variable that triggers an update on the dependent variables                                |
   |   | ORDER_NO             | NUMERIC(8)       | Y         | Order number             | The order in which the dependent variables are processed                                               |
   |   | DEPENDENT_VAR_NAME   | CHARACTER(32)    | Y         | Dependent Variable Name  | Name of the dependent variable                                                                         |
   |   | EXPRESSION_TXT       | CHARACTER(4096)  | Y         | Expression Text          | Expression. The following code will be generated &lt;Dependent Variable Name&gt; = &lt;Expression&gt;  |
   
   (*) indicates a required variable.
 
 
   \details
 
   This table is used during the adjustmet allocation process to define cascading rules for updating a number of dependent variables upon change of a given trigger variable. 
   
   Note: Any variables used in the expression_txt must exist on the Credit Risk Detail table and therefore must be included in the Credit Risk Detail ddl file.

   The table below shows an example of the records needed to set up the dependencies for a variable ABC = sum(A, B, C).  Any variables used in the expression of a given dependent variable should have its own row in the var dependency table.  For example, since the expression for ABC depends on three variables (A, B, and C), the example below has three separate rows, one for each of these variables.

   |SCHEMA_NAME               |SCHEMA_VERSION     | TRIGGER_VAR_NAME |ORDER_NO |DEPENDENT_VAR_NAME |EXPRESSION_TXT |
   |--------------------------|-------------------|------------------|---------|-------------------|---------------|
   |IFRS9_CREDIT_RISK_DETAIL  |ifrs9.v09.2019     | A                | 1       | ABC               |sum(A, B, C)   |
   |IFRS9_CREDIT_RISK_DETAIL  |ifrs9.v09.2019     | B                | 1       | ABC               |sum(A, B, C)   |
   |IFRS9_CREDIT_RISK_DETAIL  |ifrs9.v09.2019     | C                | 1       | ABC               |sum(A, B, C)   |

   As another example, let's say ABC is again equal to sum(A, B, C), but now C is a dependent variable whose expression is sum(X, Y).  Any adjustments made to A, B, or C should trigger an update on variable ABC like with the previous example.  But this time we also need to account for changes in variables X and Y.  If either of these variables is updated, that should trigger an update on variable C and therefore should also trigger an update on variable ABC since this variable is dependency on C.  An example of this is shown below.

   |SCHEMA_NAME               |SCHEMA_VERSION     | TRIGGER_VAR_NAME |ORDER_NO |DEPENDENT_VAR_NAME |EXPRESSION_TXT |
   |--------------------------|-------------------|------------------|---------|-------------------|---------------|
   |IFRS9_CREDIT_RISK_DETAIL  |ifrs9.v09.2019     | X                | 1       | C                 |sum(X, Y)      |
   |IFRS9_CREDIT_RISK_DETAIL  |ifrs9.v09.2019     | Y                | 1       | C                 |sum(X, Y)      |
   |IFRS9_CREDIT_RISK_DETAIL  |ifrs9.v09.2019     | X                | 2       | ABC               |sum(A, B, C)   |
   |IFRS9_CREDIT_RISK_DETAIL  |ifrs9.v09.2019     | Y                | 2       | ABC               |sum(A, B, C)   |
   |IFRS9_CREDIT_RISK_DETAIL  |ifrs9.v09.2019     | A                | 2       | ABC               |sum(A, B, C)   |
   |IFRS9_CREDIT_RISK_DETAIL  |ifrs9.v09.2019     | B                | 2       | ABC               |sum(A, B, C)   |
   |IFRS9_CREDIT_RISK_DETAIL  |ifrs9.v09.2019     | C                | 2       | ABC               |sum(A, B, C)   |

   As a general rule of thumb, when creating entries for a given dependent variable, any variables represented (directly or indirectly) in the formula of that variable should be listed as a trigger variable for that dependent variable.

   \ingroup ddlStaticAnalytics
   \author  SAS Institute Inc.
   \date    2018
*/
CREATE TABLE &LIBREF..VAR_DEPENDENCY_CONFIG (
   SCHEMA_NAME          VARCHAR(150)   label='Schema Name',
   SCHEMA_VERSION       VARCHAR(50)    label='Schema Version',
   TRIGGER_VAR_NAME     VARCHAR(32)    label='Trigger Variable Name',
   ORDER_NO             NUMERIC(8)     label='Order No',
   DEPENDENT_VAR_NAME   VARCHAR(32)    label='Dependent Variable Name',
   EXPRESSION_TXT       VARCHAR(4096)  label='Expression'
   );