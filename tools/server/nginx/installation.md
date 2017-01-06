# Nginx Installation

## Debian

```shell
# Run as root
apt-get install nginx
```

## Arch Linux

```shell
# Run as root
pacman -S nginx-mainline
```

There two packags on Arch for _nginx_: `nginx-mainline` and `nginx`.
The former is recommended by [the Arch Wiki page][arch-nginx] while the latter is more stable.


```shell
# Run as root
mkdir /etc/nginx/stes-available
mkdir /etc/nginx/stes-enabled
```

Then edit **/etc/nginx/nginx.conf** and add the following statement at the end of
the `http` block.

```nginx
include sites-enabled/*;
```


[arch-nginx]: https://wiki.archlinux.org/index.php/nginx
