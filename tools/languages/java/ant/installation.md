# Installation

## Dependencies

- [Java Development Kit 8][java-installation]

## Linux

### Arch

```shell
# Run as root
pacman -S apache-ant
```

Set the environment variable `ANT_HOME` to **/usr/share/apache-ant**.

In `/etc/environment` append the line:

```shell
ANT_HOME="/usr/share/apache-ant"
```

## Check

```shell
# Run as a user
ant -version
```


[java-installation]: ../installation.md
