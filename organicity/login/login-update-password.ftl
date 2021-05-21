<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
<#if section = "title">
  ${msg("updatePasswordTitle")}
<#elseif section = "header">
  ${msg("updatePasswordTitle")}
<#elseif section = "form">

<div class="pure-g">
  <div class="pure-u-1-1">
    <div class="box">

<form action="${url.loginAction}" method="post" class="longer">

  <div class="pure-g">
    <div class="pure-u-1-2">
      <input class="oc-input"
             type="password" id="password-new" name="password-new"
             placeholder="${msg('passwordNew')}" autofocus />
    </div>
    <div class="pure-u-1-2">
      <input class="oc-input"
             type="password" id="password-confirm"
             name="password-confirm"
             placeholder="${msg('passwordConfirm')}" />
    </div>
  </div>

  <div class="pure-g">
    <div class="pure-u-3-5"></div>
    <div class="pure-u-2-5">
      <input class="oc-button"type="submit"
             value="${msg("doSubmit")}"/>
    </div>
  </div>
</form>

    </div>
  </div>
</div>
</#if>
</@layout.registrationLayout>
