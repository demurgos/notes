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

```bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install linux-image-amd64
```
