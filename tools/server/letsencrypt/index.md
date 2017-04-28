# Let's encrypt

## Installation
**2016-12-08**

Install certbot: https://certbot.eff.org

### Debian

```shell
# Run as root:
apt-get install certbot
```

`certbot` adds a task to check for renewable certificates (twice a day): `/etc/cron.d/certbot`.

## Get certificates

```shell
# Run as root:
# Coma-separated list of domains for the certificate
# The certificate will be named with the first domain, the next domains will be registered
# as Subject Alternate Names (SAN)
DOMAINS="example.com,foo.bar"

# Register the domains
certbot certonly --standalone -d $DOMAINS
```

If _nginx_ is running, use:

```shell
# Run as root
certbot certonly --standalone --pre-hook "service nginx stop" --post-hook "service nginx start" -d $DOMAINS
```

You will have to enter an email and validate the terms of service.

**Make sure that the hooks are correctly defined in /etc/cron.d/certbot.**

```cron
# /etc/cron.d/certbot: crontab entries for the certbot package
#
# Upstream recommends attempting renewal twice a day
#
# Eventually, this will be an opportunity to validate certificates
# haven't been revoked, etc.  Renewal will only occur if expiration
# is within 30 days.
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

0 */12 * * * root test -x /usr/bin/certbot -a \! -d /run/systemd/system && perl -e 'sleep int(rand(3600))' && certbot --pre-hook "service nginx stop" --post-hook "service nginx start" --quiet renew
```

## Renew the certificates

```shell
certbot --pre-hook "service nginx stop" --post-hook "service nginx start" renew
```

## Certificates location

Certificates are located in the directoy `/etc/letsencrypt/live/`

## Verification

Verify if your certificates are setup correctly with the following service:

https://www.ssllabs.com/ssltest/index.html

## References

- https://certbot.eff.org/docs/using.html
- https://letsecure.me/secure-web-deployment-with-lets-encrypt-and-nginx/
