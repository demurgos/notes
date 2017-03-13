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
certbot certonly --standalone --pre-hook "service nginx stop" --post-hook "service nginx start" -d $DOMAINS
```

You will have to enter an email and validate the terms of service.

**Make sure that the hooks are correctly defined in /etc/cron.d/certbot.**

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
