<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
<#if section = "title">
  ${msg("registerWithTitle",(realm.displayName!''))}
<#elseif section = "header">
  ${msg("registerWithTitleHtml",(realm.displayNameHtml!''))}
<#elseif section = "form">

  <div class="pure-g">
    <div class="pure-u-1-1">
      <div class="box">
        <p>
          Please fill out the following form to sign up to
          Organicity. All fields are required.
        </p>

<form class="longer" action="${url.registrationAction}" method="post">

  <#if !realm.registrationEmailAsUsername>
  <input class="oc-input ${messagesPerField.printIfExists('username','error')}"
         type="text" id="username" name="username"
         value="${(register.formData.username!'')?html}"
         placeholder="${msg('username')}" />
  </#if>

  <div class="pure-g">
    <div class="pure-u-1-2">
      <input class="oc-input ${messagesPerField.printIfExists('firstName', 'error')}"
             type="text" id="firstName" name="firstName"
             value="${(register.formData.firstName!'')?html}"
             placeholder="${msg('firstName')}" />
    </div>
    <div class="pure-u-1-2">
      <input class="oc-input ${messagesPerField.printIfExists('lastName', 'error')}"
             type="text" id="lastName" name="lastName"
             value="${(register.formData.lastName!'')?html}"
             placeholder="${msg('lastName')}" />
    </div>
  </div>

  <input class="oc-input ${messagesPerField.printIfExists('email', 'error')}"
         type="text" id="email" name="email"
         value="${(register.formData.email!'')?html}"
         placeholder="${msg('email')}" />

  <#if passwordRequired>
  <div class="pure-g">
    <div class="pure-u-1-2">
      <input class="oc-input ${messagesPerField.printIfExists('password', 'error')}"
             type="password" id="password" name="password"
             placeholder="${msg('password')}" />
    </div>
    <div class="pure-u-1-2">
      <input class="oc-input ${messagesPerField.printIfExists('password-confirm', 'err')}"
             type="password" id="password-confirm"
             name="password-confirm"
             placeholder="${msg('passwordConfirm')}" />
    </div>
  </div>
  </#if>

  <#if recaptchaRequired??>
  <div class="box">
    <div class="g-recaptcha"
         data-size="compact"
         data-sitekey="${recaptchaSiteKey}"></div>
  </div>
  </#if>

  <div class="pure-g">
    <div class="pure-u-1-5"></div>
    <div class="pure-u-2-5">
      <p>
        <a href="${url.loginUrl}">${msg("backToLogin")}</a>
      </p>
    </div>
    <div class="pure-u-2-5">
      <input class="oc-button"
             name="login" type="submit"
             value="${msg("doRegister")}"/>
    </div>
  </div>
</form>

</div>
</div>
</div>
</#if>
</@layout.registrationLayout>
