<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html" charSet="UTF-8">
    <!--<meta charset="utf-8"> -->
    <title><#nested "title"></title>
    <meta name="description" content="OrganiCity is a new EU project with &euro; 7.2m in funding that puts people at the centre of the development of future cities. The project brings together 3 leading smart cities and a total of 15 consortium members with great diversity in skills and experience.">
    <meta name="keywords" content="OrganiCity,EU,future,city,cities,innovation,innovative,co-creating,user,account,signin,login,register,signup,email">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--
    <link rel="shortcut icon" type="image/x-icon" href="auth/resources/3.4.3.final/common/organicity/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="auth/resources/3.4.3.final/common/organicity/apple-touch-icon-precomposed.png">
-->
      <link rel="stylesheet" id="pure-css" href="${url.resourcesPath}/lib/pure-release-0.6.0/pure-min.css" type="text/css" media="all">

        <link type="text/css" rel="stylesheet" href="${url.resourcesPath}/lib/pure-release-0.6.0/grids-responsive-min.css">

    <link rel="stylesheet" href="${url.resourcesPath}/css/organicity.css" type="text/css">
    <link rel="stylesheet" href="${url.resourcesPath}/lib/zocial/zocial.css" type="text/css">

  </head>

<body>
  <header role="banner">
    <a class="navbar-brand" href="https://synchronicity-iot.eu/" title="Organicity - link to homepage">
      <span class="offscreen">SynchroniCity</span>
      <img class="logo" src="${url.resourcesPath}/img/oc-nav-header.png"
           alt="Organicity Logo">
    </a>
  </header>

<main role="main">

  <h1><#nested "header"></h1>

  <#if displayMessage && message?has_content>
    <div class="message">
      <div class="feedback-${message.type}">
        <p><@message.summary?interpret/></p>
      </div>
    </div>
  </#if>

  <#nested "form">

</main>

  <footer>
    <div class="pure-g">
      <div class="pure-u-1 pure-u-sm-1-3">
        <h3>Follow us</h3>


        <div class="socialmeedia">
          <a href="https://www.facebook.com/SynchroniCityiot/"><i class="icon-facebook-squared"></i></a>
          <a href="https://twitter.com/SyncCityIoT/"><i class="icon-twitter"></i></a>
        </div>


        <div class="eulogo">
          <img class="oc-footer-large-eu-logo" src="${url.resourcesPath}/img/logo_eu.png">
        </div>

        <p>
          This project has received funding from the European Union's
          Horizon 2020 research and innovation program under the grant
          agreement No. 645198.
        </p>
      </div>


      <div class="pure-u-1 pure-u-sm-1-3">
        <h3>More about SynchroniCity</h3>

        <p>
          <a href="https://synchronicity-iot.eu/">SynchroniCity-iot.eu</a>
        </p>
        <p>
          <a href="https://synchronicity-iot.eu/news/">SynchroniCity News</a>
        </p>
        <p>
          <a href="https://synchronicity-iot.eu/events/">SynchroniCity Events</a>
        </p>
      </div>
      <div class="pure-u-1 pure-u-sm-1-3">
        <h3>Contact us</h3>
        <p>
          We would love to hear from you! Send us a question, report a
          bug or just give feedback. Just drop us a mail.
        </p>
        <p>
          You can reach us at <a class="pink"
          href="mailto:info@synchronicity-iot.eu">info@synchronicity-iot.eu</a>.
        </p>


      </div>
    </div>
    <div class="copy">
      &copy; SynchroniCity
    </div>
  </footer>
</body>
</html>
</#macro>
