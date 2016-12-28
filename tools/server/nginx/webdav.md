# WebDAV

[WebDAV][wiki-webdav] is a protocol extending HTTP to manage files on a web server.

## Installation

To use _WebDAV_ with _nginx_, you need the
[_ngx_http_dav_module_ module][nginx-ngx_http_dav_module].

### Debian

```shell
# Run as root
apt-get install nginx-extras
```

## Configuration

Create the directories `webdav` and `webdav.client-tmp` in your domain directory,
then configure the `webdav` subdomain with _nginx_: see the file `webdav.nginx` in the current
directory.

## TODO

Check: https://opensource.ncsa.illinois.edu/confluence/display/ERGO/Creating+a+WebDAV+repository+server+with+NGINX

[wiki-webdav]: https://en.wikipedia.org/wiki/WebDAV
[nginx-ngx_http_dav_module]: https://nginx.org/en/docs/http/ngx_http_dav_module.html
