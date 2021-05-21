Setup Keycloak

- Realm settings/general
    - Change Display name and HTML Display name (Usually name of your site and headline)
- Realm settings/login
    - Enable features you want (register, remember me, forgot password)
- Realm settings/themes
    - Chose themes (base-theme in this case)
- Clients/Chose relevant client (usually “account”)
    - Settings
        - Insert Valid Redirect URIs (here http://localhost/api/v1/auth/oauth2/callback)
    - Credentials
        - Generate Client secret for use with your application 
		(Your application uses this secret to get access to keycloak)
- Download graphicMagic for NodeJS on host machine

