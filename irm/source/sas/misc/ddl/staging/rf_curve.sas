/*
 Copyright (C) 2017 SAS Institute Inc. Cary, NC, USA
*/
 
/**
   \file
   \brief  Risk Factor Curve
   \details
 
   |PK            |Variable                    |Type              | Required? |Relationships |Label                    |Description                                                |
   |--------------|----------------------------|------------------|-----------|--------------|-------------------------|-----------------------------------------------------------|
   |![ ](pk.jpg)  | <b>REPORTING_DT</b>        | NUMERIC(8)       | Y         |              | Reporting Date          | SAS Date value                                            |
   |![ ](pk.jpg)  | <b>CURVE_TYPE_CD</b>       | CHARACTER(32)    | Y         |              | Curve Type Code         | Curve Type: <br> - PD: Probability of Default <br> - LGD: Loss Given Default <br> - LR: Loss Rate <br> - PP: Pre-Payment  |
   |![ ](pk.jpg)  | <b>SEGMENT_ID</b>          | CHARACTER(32)    | Y         |              | Segment Id              | Portfolio segment to which the curve applies              |
   |![ ](pk.jpg)  | <b>HORIZON</b>             | NUMERIC(8)       | Y         |              | Horizon                 | Time Horizon                                              |
   |![ ](pk.jpg)  | TIME_INTERVAL              | CHARACTER(32)    | Y         |              | Time Interval           | Time Interval                                             |
   |              | CURVE_RT                   | NUMERIC(8)       | Y         |              | Curve Rate              | Curve Rate at the given time horizon                      |
   
   \ingroup ddlFactRiskFactors       
   \author  SAS Institute Inc.
   \date    2016
*/
 
CREATE TABLE &LIBREF..RF_CURVE(
   REPORTING_DT              DATE                      label = 'Reporting Date'         FORMAT = &DTFMT.,
   CURVE_TYPE_CD             VARCHAR(32)               label = 'Curve Type Code',
   SEGMENT_ID                VARCHAR(32)               label = 'Segment Id',
   HORIZON                   NUMERIC(8)                label = 'Horizon',
   TIME_INTERVAL             VARCHAR(32)               label = 'Time Interval',
   CURVE_RT                  NUMERIC(8)                label = 'Curve Rate',
   CONSTRAINT PRIM_KEY PRIMARY KEY (REPORTING_DT, CURVE_TYPE_CD, SEGMENT_ID, HORIZON)
);


