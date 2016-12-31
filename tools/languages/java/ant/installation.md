# Installation

Installation of Ant 1.9

## Dependencies

- [_Java SDK_ 8](../index.md)

## Package installation

### Debian

```shell
# Run as root
apt-get install ant
```

- `ANT_HOME`: `/usr/share/ant/`

### Arch Linux

```shell
# Run as root
pacman -S apache-ant
```

- `ANT_HOME`: `/usr/share/apache-ant/`

## Environment configuration

Set the environment variable `ANT_HOME` in `/etc/environment` according to your
system.

For example, for Arch Linux, append the following line:

```shell
ANT_HOME="/usr/share/apache-ant/"
```

## Check the installation

```shell
# Run as a user
ant -version
```

_Example_:

```terminal
$ ant -version
Apache Ant(TM) version 1.9.7 compiled on May 16 2016
```
