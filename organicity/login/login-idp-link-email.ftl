<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
<#if section = "title">
  ${msg("emailLinkIdpTitle", idpAlias)}
<#elseif section = "header">
  ${msg("emailLinkIdpTitle", idpAlias)}
<#elseif section = "form">

<div class="pure-g">
  <div class="pure-u-1-1">
    <div class="box">
      <p>
        ${msg("emailLinkIdp1", idpAlias, brokerContext.username, realm.displayName)}
      </p>
      <p>
        ${msg("emailLinkIdp2")}
        <a href="${url.firstBrokerLoginUrl}">${msg("doClickHere")}</a>
        ${msg("emailLinkIdp3")}
      </p>
    </div>
  </div>
</div>
</#if>
</@layout.registrationLayout>
