# New server configuration

1. Add a normal user account.
2. Install _sudo_ and add the normal user to the sudoers.
3. Configure SSH: whitelist to allow only the normal user, enforce SSH key.
4. Configure iptables
5. Get a Letsencrypt certificate with certbot
6. Install Nginx and configure the static subdomains
7. **TODO** Handle the default domain (or missing host) case
8. Install node, php and start the servers
9. Configure the CRON tasks

**TODO**: Locales
