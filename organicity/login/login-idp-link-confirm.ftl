<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
<#if section = "title">
  ${msg("confirmLinkIdpTitle")}
<#elseif section = "header">
  ${msg("confirmLinkIdpTitle")}
<#elseif section = "form">

<div class="pure-g">
  <div class="pure-u-1-1">
    <div class="box">

      <p>
        ${message.summary}
      </p>

      <form action="${url.loginAction}" method="post" class="buttons">

  <div class="pure-g">
    <div class="pure-u-1-2">
      <button type="submit" class="oc-button" name="submitAction"
              id="updateProfile"
              value="updateProfile">
        ${msg("confirmLinkIdpReviewProfile")}
      </button>
    </div>
    <div class="pure-u-1-2">
      <button type="submit" class="oc-button" name="submitAction"
              id="linkAccount" value="linkAccount">
        ${msg("confirmLinkIdpContinue", idpAlias)}
      </button>
    </div>
  </div>

      </form>

    </div>
  </div>
</div>

</#if>
</@layout.registrationLayout>
