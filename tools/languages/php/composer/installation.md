# Composer Installation

## Debian

```shell
# Run as root
apt-get install composer
```

## Arch Linux

```shell
# Run as root
pacman -S composer
```
## Check the installation

```shell
# Run as a normal user
composer --version
```

Example:

```
$ composer --version
Composer version 1.3.0 2016-12-24 00:47:03
```

## composer.phar

When a website is refering to **composer.phar**, on Arch Linux it
is the file **/usr/bin/composer**.

_PHAR_ stands for PHP Archive, it is the PHP equivalent of JAR files.

