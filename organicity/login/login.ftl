<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
  <#if section = "title">
    ${msg("loginTitle",(realm.displayName!''))}
  <#elseif section = "header">
    ${msg("loginTitleHtml",(realm.displayNameHtml!''))}
  <#elseif section = "form">

<div class="pure-g">
  <div class="pure-u-1 pure-u-md-2-3">
    <div class="box">
      <h2>Sign in with username and password:</h2>

<#if realm.password>
  <form action="${url.loginAction}" method="post">
    <#if usernameEditDisabled??>
      <input id="username" class="oc-input full" name="username"
             value="${(login.username!'')?html}"
             type="text"
             placeholder="<#if !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"
             disabled />
    <#else>
      <input id="username" class="oc-input full" name="username"
             value="${(login.username!'')?html}"
             placeholder="<#if !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"
             type="text" autofocus />
    </#if>

    <input id="password" class="oc-input full" name="password"
           type="password"
           placeholder="${msg("password")}" />

    <div class="pure-g">
      <div class="pure-u-1 pure-u-sm-3-5">

        <#if realm.rememberMe && !usernameEditDisabled??>
          <label class="checkbox">
            <#if login.rememberMe??>
              <input id="rememberMe" name="rememberMe"
                     type="checkbox"
                     tabindex="3" checked> ${msg("rememberMe")}
            <#else>
              <input id="rememberMe" name="rememberMe"
                     type="checkbox"
                     tabindex="3"> ${msg("rememberMe")}
            </#if>
          </label>
        </#if>
      </div>
      <div class="pure-u-1 pure-u-md-2-5">
        <input class="oc-button"
               name="login" id="kc-login" type="submit"
               value="${msg("doLogIn")}"/>
      </div>
    </div>
  </form>


  <div class="pure-g">
    <div class="pure-u-1 pure-u-sm-1-6"></div>

    <div class="pure-u-1 pure-u-sm-1-3">
      <#if realm.resetPasswordAllowed>
        <p>
          <a href="${url.loginResetCredentialsUrl}">
            ${msg("doForgotPassword")}
          </a>
        </p>
      </#if>
    </div>

    <div class="pure-u-1 pure-u-sm-1-3">
      <#if realm.password && realm.registrationAllowed &&
           !usernameEditDisabled??>
        <p>
          ${msg("noAccount")}
          <a href="${url.registrationUrl}">${msg("doRegister")}</a>
        </p>
      </#if>
    </div>

    <div class="pure-u-1 pure-u-sm-1-6"></div>
  </div>
</#if>

    </div>
  </div>
  <div class="pure-u-1 pure-u-md-1-3">
    <div class="box">

      <#if realm.password && social.providers??>
        <h2>Social sign in:</h2>
        <div class="socialmeediaLogin">
          <ul>
            <#list social.providers as p>
              <li>
                <a href="${p.loginUrl}" id="zocial-${p.alias}"
                   class="zocial ${p.providerId}">
                  <span class="text">${p.alias}</span>
                </a>
              </li>
            </#list>
          </ul>
        </div>
      </#if>


    </div>
  </div>
</div>

  <#elseif section = "info" >
  </#if>
</@layout.registrationLayout>
