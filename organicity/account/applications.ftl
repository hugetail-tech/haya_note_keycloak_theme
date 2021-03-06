<#import "template.ftl" as layout>
<@layout.mainLayout active='applications' bodyClass='applications'; section>

    <div class="row">
        <div class="col-md-10">
            <h2>${msg("applicationsHtmlTitle")}</h2>
        </div>
    </div>

    <form action="${url.revokeClientUrl}" method="post">
        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker?html}">
        <input type="hidden" id="referrer" name="referrer" value="${stateChecker?html}">

          <p>This table lists all Organicity applications that you can
          access, along with the access rights that you have at the
          respective application. Don't be scared if something is on
          the list that you don't know about - this list contains all
          parts of Organicity, even if you have not yet used them.</p>
          <p>If you need access to any bit of Organicity that is
          not listed here, or if you feel that a permission is missing
          that you should have, please contact the <a
          href="mailto:helpdesk@organicity.eu?subject=Experimenter%20Access%20for%20Experiment%20%3Cadd%20exp%20id%20here%3E&body=Hi!%0A%0AI%20like%20to%20request%20experimenter%20access%20in%20Organicity%20for%20the%20experiment%20%3Center%20id%20here%3E.%0AMy%20username%20is%20%3Center%20username%20here%3E.%0A%0AThanks!">Organicity
          Technical Helpdesk</a>.</p>

        <table class="table table-striped table-bordered">
            <thead>
              <tr>
                <td>${msg("application")}</td>
                <td>${msg("availablePermissions")}</td>
                <!-- <td>${msg("grantedPermissions")}</td> -->
                <!-- <td>${msg("grantedPersonalInfo")}</td> -->
                <td>${msg("additionalGrants")}</td>
                <td>${msg("action")}</td>
              </tr>
            </thead>

            <tbody>
              <#list applications.applications as application>
                <tr>
                    <td>
                        <#if application.client.baseUrl??><a href="${application.client.baseUrl}"></#if>
                            <#if application.client.name??>${advancedMsg(application.client.name)}<#else>${application.client.clientId}</#if>
                        <#if application.client.baseUrl??></a></#if>
                    </td>

                    <td>
                        <#list application.realmRolesAvailable as role>
                            <#if role.description??>${advancedMsg(role.description)}<#else>${advancedMsg(role.name)}</#if>
                            <#if role_has_next>, </#if>
                        </#list>
                        <#list application.resourceRolesAvailable?keys as resource>
                            <#if application.realmRolesAvailable?has_content>, </#if>
                            <#list application.resourceRolesAvailable[resource] as clientRole>
                                <#if clientRole.roleDescription??>${advancedMsg(clientRole.roleDescription)}<#else>${advancedMsg(clientRole.roleName)}</#if>
                                ${msg("inResource")} <#if clientRole.clientName??>${advancedMsg(clientRole.clientName)}<#else>${clientRole.clientId}</#if>
                                <#if clientRole_has_next>, </#if>
                            </#list>
                        </#list>
                    </td>

                    <!-- <td> -->
                    <!--     <#if application.client.consentRequired> -->
                    <!--         <#list application.realmRolesGranted as role> -->
                    <!--             <#if role.description??>${advancedMsg(role.description)}<#else>${advancedMsg(role.name)}</#if> -->
                    <!--             <#if role_has_next>, </#if> -->
                    <!--         </#list> -->
                    <!--         <#list application.resourceRolesGranted?keys as resource> -->
                    <!--             <#if application.realmRolesGranted?has_content>, </#if> -->
                    <!--             <#list application.resourceRolesGranted[resource] as clientRole> -->
                    <!--                 <#if clientRole.roleDescription??>${advancedMsg(clientRole.roleDescription)}<#else>${advancedMsg(clientRole.roleName)}</#if> -->
                    <!--                 ${msg("inResource")} <strong><#if clientRole.clientName??>${advancedMsg(clientRole.clientName)}<#else>${clientRole.clientId}</#if></strong> -->
                    <!--                 <#if clientRole_has_next>, </#if> -->
                    <!--             </#list> -->
                    <!--         </#list> -->
                    <!--     <#else> -->
                    <!--         <strong>${msg("fullAccess")}</strong> -->
                    <!--     </#if> -->
                    <!-- </td> -->

                    <!-- <td> -->
                    <!--     <#if application.client.consentRequired> -->
                    <!--         <#list application.claimsGranted as claim> -->
                    <!--             ${advancedMsg(claim)}<#if claim_has_next>, </#if> -->
                    <!--         </#list> -->
                    <!--     <#else> -->
                    <!--         <strong>${msg("fullAccess")}</strong> -->
                    <!--     </#if> -->
                    <!-- </td> -->

                    <td>
                       <#list application.additionalGrants as grant>
                            ${advancedMsg(grant)}<#if grant_has_next>, </#if>
                        </#list>
                    </td>

                    <td>
                        <#if (application.client.consentRequired && application.claimsGranted?has_content) || application.additionalGrants?has_content>
                            <button type='submit' class='${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!}' id='revoke-${application.client.clientId}' name='clientId' value="${application.client.id}">${msg("revoke")}</button>
                        </#if>
                    </td>
                </tr>
              </#list>
            </tbody>
        </table>
    </form>

</@layout.mainLayout>
