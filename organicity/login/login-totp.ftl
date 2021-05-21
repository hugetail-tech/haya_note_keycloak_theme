<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
<#if section = "title">
  ${msg("loginTitle",realm.displayName)}
<#elseif section = "header">
  ${msg("loginTitleHtml",realm.displayNameHtml)}
<#elseif section = "form">

<div class="pure-g">
  <div class="pure-u-1-1">
    <div class="box">

      <form action="${url.loginAction}" method="post" class="buttons">

        <input class="oc-input"
               type="text" id="totp" name="totp"
               placeholder="${msg('loginTotpOneTime')}"
               autofocus />

        <div class="pure-g">
          <div class="pure-u-1-5"></div>
          <div class="pure-u-2-5">
            <input class="oc-button"
                   name="cancel" type="submit"
                   value="${msg("doCancel")}"/>
          </div>
          <div class="pure-u-2-5">
            <input class="oc-button"
                   name="login" type="submit"
                   value="${msg("doLogIn")}"/>
          </div>
        </div>
      </form>

    </div>
  </div>
</div>
</#if>
</@layout.registrationLayout>
