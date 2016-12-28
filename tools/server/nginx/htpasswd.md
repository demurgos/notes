# htpasswd

## Dependencies

- `httpasswd`

### Debian

```shell
# Run as root
apt-get install apache2-utils
```

## Usage

https://httpd.apache.org/docs/current/programs/htpasswd.html

### Create file

Create an `htpasswd` file with the following command:

```shell
htpasswd -c /var/www/demurgos.net/webdav.htpasswd demurgos
```

### Add user

Create an `htpasswd` file with the following command:

```shell
htpasswd /var/www/demurgos.net/webdav.htpasswd user2
```
