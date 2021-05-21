<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
<#if section = "title">
  ${msg("emailVerifyTitle")}
<#elseif section = "header">
  ${msg("emailVerifyTitle")}
<#elseif section = "form">

<div class="pure-g">
  <div class="pure-u-1-1">
    <div class="box">

<p>
  ${msg("emailVerifyInstruction1")}
</p>
<p>
  ${msg("emailVerifyInstruction2")}
  <a href="${url.loginEmailVerificationUrl}">${msg("doClickHere")}</a>
  ${msg("emailVerifyInstruction3")}
</p>

    </div>
  </div>
</div>

</#if>
</@layout.registrationLayout>
