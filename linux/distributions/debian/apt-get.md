# apt-get

Debian's default package manager.

## Usage

### Upgrade the system

```shell
# Run as root
apt-get update
apt-get upgrade
apt-get dist-upgrade
```

### List installed packages

```shell
# Run as a normal user
dpkg --list
```

### Remove a package with its dependencies

```shell
# Run as root
apt-get purge <package-name>
```
