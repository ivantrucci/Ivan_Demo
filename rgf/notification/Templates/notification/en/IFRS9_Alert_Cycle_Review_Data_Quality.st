$! ---------------------------------------------------------------- !$
$! SAS Notification Template                                        !$
$! Copyright (c) 2002-2012, SAS Institute Inc., Cary, NC, USA,      !$
$! All Rights Reserved                                              !$
$! ---------------------------------------------------------------- !$

$!==SUBJECT=========================================================!$
$if(_SAS_TEMPLATE_SUBJECT)$
The data quality check has been completed by $RGF_ALERT_FROM_USER_NAME$ and the data quality report is ready to review for the cycle $CUSTOBJ214ID$, $CUSTOBJNM$
$endif$

$!==HTML============================================================!$
$if(_SAS_TEMPLATE_HTML)$

<html dir="ltr"><head><title></title></head>
 <style>
  body{font-family: 'Trebuchet MS',Arial, Helvetica, sans-serif;
       background: #FFFFFF;
       color: #000000;}
  .footer{color: #505050; font-size: small; font-style: italic; width: 100%;
          padding-bottom: 15px; padding-top: 10px; border-top: 1px solid #BBBBBB;}
 </style>
 <body>
  <p>
   The data quality check has been completed by $RGF_ALERT_FROM_USER_NAME$ and the data quality report is ready to review for the cycle $CUSTOBJ214ID$, <a href="$TARGET_URL$">$CUSTOBJNM$</a>.   
  </p>
  <p class="footer">
   This is a system-generated message.  Do not reply to this e-mail.
  </p>
 </body>
</html>

$endif$

$!==TXT============================================================!$
$if(_SAS_TEMPLATE_TXT)$

The data quality check has been completed by $RGF_ALERT_FROM_USER_NAME$ and the data quality report is ready to review for the cycle $CUSTOBJ214ID$, $CUSTOBJNM$.

Further information can be found at $TARGET_URL$.

This is a system-generated message.  Do not reply to this e-mail.

$endif$

$!==SMS============================================================!$
$if(_SAS_TEMPLATE_SMS)$

The data quality check has been completed by $RGF_ALERT_FROM_USER_NAME$ and the data quality report is ready to review for the cycle $CUSTOBJ214ID$, $CUSTOBJNM$.

$endif$

