<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
<#if section = "title">
  ${msg("loginProfileTitle")}
<#elseif section = "header">
  ${msg("loginProfileTitle")}
<#elseif section = "form">
  <div class="pure-g">
    <div class="pure-u-1-1">
      <div class="box">
        <p>
          Welcome to Organicity!
          Please complete your profile information to continue.
        </p>

<form class="longer" action="${url.loginAction}" method="post">

  <#if user.editUsernameAllowed>
  <input class="oc-input ${messagesPerField.printIfExists('username','error')}"
         type="text" id="username" name="username"
         value="${(user.username!'')?html}"
         placeholder="${msg('username')}" />
  </#if>


    <div class="pure-g">
    <div class="pure-u-1-2">
      <input class="oc-input ${messagesPerField.printIfExists('firstName', 'error')}"
             type="text" id="firstName" name="firstName"
             value="${(user.firstName!'')?html}"
             placeholder="${msg('firstName')}" />
    </div>
    <div class="pure-u-1-2">
      <input class="oc-input ${messagesPerField.printIfExists('lastName', 'error')}"
             type="text" id="lastName" name="lastName"
             value="${(user.lastName!'')?html}"
             placeholder="${msg('lastName')}" />
    </div>
  </div>

  <input class="oc-input ${messagesPerField.printIfExists('email', 'error')}"
         type="text" id="email" name="email"
         value="${(user.email!'')?html}"
         placeholder="${msg('email')}" />


  <div class="pure-g">
    <div class="pure-u-3-5"></div>
    <div class="pure-u-2-5">
      <input class="oc-button"
             name="login" type="submit"
             value="${msg("doSubmit")}"/>
    </div>
  </div>
</form>

    </div>
  </div>
</div>

</#if>
</@layout.registrationLayout>
