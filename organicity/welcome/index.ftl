<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>OrganiCity Accounts</title>
    <meta name="description" content="OrganiCity is a new EU project with &euro; 7.2m in funding that puts people at the centre of the development of future cities. The project brings together 3 leading smart cities and a total of 15 consortium members with great diversity in skills and experience.">
    <meta name="keywords" content="OrganiCity,EU,future,city,cities,innovation,innovative,co-creating,user,account,signin,login,register,signup,email">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="/resources/1.9.1.final/common/organicity/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="/resources/1.9.1.final/common/organicity/apple-touch-icon-precomposed.png">

      <link rel="stylesheet" id="pure-css" href="/resources/1.9.1.final/common/organicity/pure-release-0.6.0/pure-min.css" type="text/css" media="all">
        <link rel="stylesheet" href="/resources/1.9.1.final/common/organicity/pure-release-0.6.0/grids-responsive-min.css">

    <link rel="stylesheet" href="/resources/1.9.1.final/common/organicity/organicity.css" type="text/css">
  </head>

<body>
  <header role="banner">
    <a href="http://organicity.eu/" title="Organicity - link to homepage">
      <span class="offscreen">OrganiCity</span>
      <img class="logo" src="/resources/1.9.1.final/common/organicity/organicity_logo.png"
           alt="Organicity Logo">
    </a>
  </header>

<main role="main">
  <h1>OrganiCity Accounts</h1>

  <#if successMessage?has_content>
    <p>${successMessage}</p>
  <#elseif errorMessage?has_content>
    <p class="error">${errorMessage}</p>
  <#elseif bootstrap>
    <#if localUser>
      <p>Please create an initial admin user to get started.</p>
    <#else>
      <p>
        You need local access to create the initial admin user. Open <a href="http://localhost:8080/auth">http://localhost:8080/auth</a>
        or use the add-user script.
      </p>
    </#if>
  </#if>

  <#if bootstrap && localUser>
    <form method="post">
      <p>
        <label for="username">Username</label>
        <input id="username" name="username" />
      </p>

      <p>
        <label for="password">Password</label>
        <input id="password" name="password" type="password" />
      </p>

      <p>
        <label for="passwordConfirmation">Password confirmation</label>
        <input id="passwordConfirmation" name="passwordConfirmation" type="password" />
      </p>

      <button id="create-button" type="submit">Create</button>
    </form>
  </#if>

  <div class="pure-g">
    <div class="pure-u-1 pure-u-md-1-3">
      <div class="box">
        <h2>Your Account</h2>

        <p>
          To inspect and manage your account, please use the
          <a href="https://accounts.organicity.eu/my">
            Users Portal</a>
          pages.
        </p>
      </div>
    </div>

    <div class="pure-u-1 pure-u-md-1-3">
      <div class="box">
        <h2>Administration</h2>

        <p>
          Use the
          <a href="admin/">Administration Console</a>
          to manage accounts-related settings for clients and experiments.
        </p>
      </div>
    </div>

    <div class="pure-u-1 pure-u-md-1-3">
      <div class="box">
        <h2>API Documentation</h2>

        <p>
          If you are a developer and want to use Accounts
          functionality, please have a look at the <a
          href="https://api.organicity.eu/">OrganiCity API
          Documentation</a>.
        </p>
      </div>
    </div>
  </div>


  </main>

  <footer>
    <div class="pure-g">
      <div class="pure-u-1 pure-u-sm-1-3">
        <h3>Follow us</h3>

        <div class="socialmeedia">
          <a href="https://www.facebook.com/OrganiCities/"><i class="icon-facebook-squared"></i></a>
          <a href="http://www.twitter.com/organicity_eu"><i class="icon-twitter"></i></a>
        </div>

        <div class="eulogo">
          <img class="oc-footer-large-eu-logo" src="/resources/1.9.1.final/common/organicity/logo_eu.png">
        </div>

        <p>
          This project has received funding from the European Union's
          Horizon 2020 research and innovation program under the grant
          agreement No. 645198.
        </p>
      </div>


      <div class="pure-u-1 pure-u-sm-1-3">
        <h3>More about OrganiCity</h3>

        <p>
          <a href="http://organicity.eu/">OrganiCity.eu</a>
        </p>
        <p>
          <a href="http://organicity.eu/blog/">OrganiCity Blog</a>
        </p>
        <p>
          <a href="http://organicity.eu/events/">OrganiCity Events</a>
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
          href="mailto:helpdesk@organicity.eu">helpdesk@organicity.eu</a>.
        </p>


      </div>
    </div>
    <div class="copy">
      &copy; Organicity 2016
    </div>
  </footer>
</body>
</html>

