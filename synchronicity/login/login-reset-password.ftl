<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
<#if section = "title">
  ${msg("emailForgotTitle")}
<#elseif section = "header">
  ${msg("emailForgotTitle")}
<#elseif section = "form">
  <div class="pure-g">
    <div class="pure-u-1-1">
      <div class="box">

        <p>
          To recover your password, please fill out the form below. We
          will then send you a mail that you can use to set a new
          password.
        </p>

<form action="${url.loginAction}" method="post">

  <input type="text" id="username" name="username"
         class="oc-input"
         placeholder="${msg('usernameOrEmail')}"
         autofocus />

  <div class="pure-g">
    <div class="pure-u-1-5"></div>
    <div class="pure-u-2-5">
      <p>
        <a href="${url.loginUrl}"><@msg("backToLogin")?interpret /></a>
      </p>
    </div>
    <div class="pure-u-2-5">
      <input class="oc-button" type="submit"
             value="${msg("doSubmit")}" />
    </div>
  </div>
</form>

      </div>
    </div>
  </div>
<#elseif section = "info" >
  ${msg("emailInstruction")}
</#if>
</@layout.registrationLayout>
