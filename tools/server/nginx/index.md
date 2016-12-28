# Nginx

Nginx configuration for multiple domains

## Installation

### Debian

```shell
# Run as root:
apt-get install nginx
```

## Add domains

For each domain, create a file `<domain>` in `/etc/nginx/sites-available/`.
**It must have the exact name of the domain**.

For example, for **demurgos.net**, create **/etc/nginx/sites-available/demurgos.net**.

The file **default** is used when no vhost is matched. Do not remove it.

See the sample files in the current directory for a quick start.

Then link it to `/etc/nginx/sites-enabled/`:

```shell
# Use an absolute path for the link target (first argument)
ln -s /etc/nginx/sites-available/demurgos.net /etc/nginx/sites-enabled/demurgos.net
```

References:
- http://stackoverflow.com/questions/5009324/node-js-nginx-what-now

## Add a cron task

Remember to add a cron task to start your application server at reboot.

## Restart all

```bash
service nginx restart
reboot
```
