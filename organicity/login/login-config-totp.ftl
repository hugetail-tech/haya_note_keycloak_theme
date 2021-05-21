<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
<#if section = "title">
  ${msg("loginTotpTitle")}
<#elseif section = "header">
  ${msg("loginTotpTitle")}
<#elseif section = "form">

<div class="pure-g">
  <div class="pure-u-1-1">
    <div class="box">

<ol>
  <li>
    <p>${msg("loginTotpStep1")}</p>
  </li>
  <li>
    <p>${msg("loginTotpStep2")}</p>
    <img src="${totp.totpSecretQrCodeUrl}" alt="Figure: Barcode"><br/>
    <span class="code">${totp.totpSecretEncoded}</span>
  </li>
  <li>
    <p>${msg("loginTotpStep3")}</p>
  </li>
</ol>

<form action="${url.loginAction}" method="post" class="longer">

  <input class="oc-input"
         type="text" id="totp" name="totp"
         placeholder="${msg("loginTotpOneTime")}" />
  <input type="hidden" id="totpSecret" name="totpSecret"
         value="${totp.totpSecret}" />

  <div class="pure-g">
    <div class="pure-u-3-5"></div>
    <div class="pure-u-2-5">
      <input class="oc-button" type="submit"
             value="${msg("doSubmit")}"/>
    </div>
  </div>
</form>

<#elseif section = "info" >
</#if>
</@layout.registrationLayout>
