/* Copyright (C) 2018 SAS Institute Inc. Cary, NC, USA */
 
/*!
\file
 
\brief  Maps the product code to the Product hierarchy.
 
   |PK            |Variable       |Type              | Required? |Relationships |Label                  |Description             |
   |--------------|---------------|------------------|-----------|--------------|-----------------------|------------------------|
   |![ ](pk.jpg)  | PRODUCT_CD    | CHARACTER(100)   | Y         |              | Product Code          | Unique product code    |
   |              | PRODUCT_LEV1  | CHARACTER(200)   | N         |              | Product Category      | Product Category       |
   |              | PRODUCT_LEV2  | CHARACTER(200)   | N         |              | Product Sub-Category  | Product Sub-Category   |
   |              | PRODUCT_LEV3  | CHARACTER(200)   | N         |              | Product Name          | Product Name           | 
 
\ingroup ddlMapping
 
\author  SAS Institute Inc.
\date    2018
 
*/
CREATE TABLE &LIBREF..MAP_PRODUCT_HIERARCHY (
     PRODUCT_CD     VARCHAR(100) label='Product Code',
     PRODUCT_LEV1   VARCHAR(200) label='Product Category',
     PRODUCT_LEV2   VARCHAR(200) label='Product Sub-Category',
     PRODUCT_LEV3   VARCHAR(200) label='Product Name',
     CONSTRAINT PRIM_KEY PRIMARY KEY (PRODUCT_CD)
);
