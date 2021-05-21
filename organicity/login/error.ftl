<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
<#if section = "title">
  ${msg("errorTitle")}
<#elseif section = "header">
  ${msg("errorTitleHtml")}
<#elseif section = "form">

<div class="pure-g">
  <div class="pure-u-1-1">
    <div class="box">

      <p>
      ${message.summary}
      </p>

      <#if client?? && client.baseUrl?has_content>
        <p>
          <a href="${client.baseUrl}">${msg("backToApplication")}</a>
        </p>
      </#if>

    </div>
  </div>
</div>

</#if>
</@layout.registrationLayout>
