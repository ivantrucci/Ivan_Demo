$! ---------------------------------------------------------------- !$
$! SAS Notification Template                                        !$
$! Copyright (c) 2002-2012, SAS Institute Inc., Cary, NC, USA,      !$
$! All Rights Reserved                                              !$
$! ---------------------------------------------------------------- !$

$!==SUBJECT=========================================================!$
$if(_SAS_TEMPLATE_SUBJECT)$
Master Risk Scenarios are available for the cycle $CUSTOBJ214ID$, $CUSTOBJNM$
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
   Risk analyst $RGF_ALERT_FROM_USER_NAME$ has reviewed the master risk scenarios available for the cycle $CUSTOBJ214ID$, <a href="$TARGET_URL$">$CUSTOBJNM$</a>. 
  </p>
  <p class="footer">
   This is a system-generated message.  Do not reply to this e-mail.
  </p>
 </body>
</html>

$endif$

$!==TXT============================================================!$
$if(_SAS_TEMPLATE_TXT)$

Risk analyst $RGF_ALERT_FROM_USER_NAME$ has reviewed the master risk scenarios available for the cycle $CUSTOBJ214ID$, $CUSTOBJNM$.

Further information can be found at $TARGET_URL$.

This is a system-generated message.  Do not reply to this e-mail.

$endif$

$!==SMS============================================================!$
$if(_SAS_TEMPLATE_SMS)$

The IFRS9 results have been approved by quantitative analyst $RGF_ALERT_FROM_USER_NAME$ for the cycle $CUSTOBJ214ID$, $CUSTOBJNM$

$endif$

