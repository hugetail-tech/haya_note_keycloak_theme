<#import "template.ftl" as layout>
<@layout.registrationLayout bodyClass="oauth"; section>
<#if section = "title">
  ${msg("oauthGrantTitle")}
<#elseif section = "header">
  ${msg("oauthGrantTitleHtml",(realm.displayNameHtml!''))}
  <strong><#if client.name??>${advancedMsg(client.name)}<#else>${client.clientId}</#if></strong>.
<#elseif section = "form">

<div class="pure-g">
  <div class="pure-u-1-1">
    <div class="box">

      <h3>${msg("oauthGrantRequest")}</h3>

<ul class="grants">

  <#if oauth.claimsRequested??>
  <li>
    <span>
      ${msg("personalInfo")}&nbsp;<#list oauth.claimsRequested as claim>${advancedMsg(claim)}<#if claim_has_next>,&nbsp;</#if></#list>
    </span>
  </li>
  </#if>

  <#if oauth.accessRequestMessage??>
  <li>
    <span>
      ${oauth.accessRequestMessage}
    </span>
  </li>
  </#if>

  <#if oauth.realmRolesRequested??>
    <#list oauth.realmRolesRequested as role>
    <li>
      <span>
        <#if role.description??>
          ${advancedMsg(role.description)}
        <#else>
          ${advancedMsg(role.name)}
        </#if>
      </span>
    </li>
    </#list>
  </#if>

  <#if oauth.resourceRolesRequested??>
    <#list oauth.resourceRolesRequested?keys as resource>
      <#list oauth.resourceRolesRequested[resource] as clientRole>
        <li>
          <span>
            <#if clientRole.roleDescription??>
              ${advancedMsg(clientRole.roleDescription)}
            <#else>
              ${advancedMsg(clientRole.roleName)}
            </#if>
          </span>
          <span>
            ${msg("inResource")}
            <strong>
              <#if clientRole.clientName??>
                ${advancedMsg(clientRole.clientName)}
              <#else>
                ${clientRole.clientId}
              </#if>
            </strong>
          </span>
        </li>
      </#list>
    </#list>

  </#if>
</ul>

<form action="${url.oauthAction}" method="post" class="buttons">
  <input type="hidden" name="code" value="${oauth.code}">

  <div class="pure-g">
    <div class="pure-u-1-5"></div>
    <div class="pure-u-2-5">
      <input class="oc-button"
             name="cancel" type="submit"
             value="${msg("doNo")}, deny"/>
    </div>
    <div class="pure-u-2-5">
      <input class="oc-button"
             name="login" type="submit"
             value="${msg("doYes")}, allow access"/>
    </div>
  </div>
</form>

    </div>
  </div>
</div>

</#if>
</@layout.registrationLayout>
