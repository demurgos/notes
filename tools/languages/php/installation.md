# Php Installation

## Dependencies

- nginx

## Debian

**TODO**

## Arch Linux

```shell
# Run as root
pacman -S php-fpm
```

There are two packages for _php_: `php` and `php-fpm`. The Wiki recommends
`php-fpm`.

### Start it

```shell
# Run as root
systemctl start php-fpm
```

This will create a socket to use PHP-FPM at **/var/run/php-fpm/php-fpm.sock**.

## Check the installation

```shell
# Run as a normal user
php --version
```

Example:
```terminal
$ php --version
PHP 7.0.14 (cli) (built: Dec  7 2016 17:11:27) ( NTS )
Copyright (c) 1997-2016 The PHP Group
Zend Engine v3.0.0, Copyright (c) 1998-2016 Zend Technologies
```


[arch-nginx-php]: https://wiki.archlinux.org/index.php/nginx#PHP_implementation
