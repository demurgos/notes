# Debian

## Upgrade Debian

### Update sources

Update the version of the distribution in `/etc/apt/sources.list`:

To use _stretch_ (Debian 9):

```text
deb http://ftp.debian.org/debian/ stretch main
deb http://security.debian.org/ stretch/updates main
```

You can also use moving targets. Example for `stable`:

```text
deb http://ftp.debian.org/debian/ stable main
deb http://security.debian.org/ stable/updates main
```

### Apply the upgrade

```shell
# Run as root
apt-get update
apt-get upgrade
apt-get dist-upgrade
apt-get install linux-image-amd64
```

## Get the distribution's name

```shell
# Run as a normal user
lsb_release -cs
```
