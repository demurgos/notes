# Installation

Installation of the Java SDK 1.8

## Package installation

### Debian

```shell
# Run as root
apt-get install openjdk-8-jdk
```

- `JAVA_HOME`: `/usr/lib/jvm/java-8-openjdk-amd64/`

### Arch Linux

```shell
# Run as root
pacman -S jdk8-openjdk
```

- `JAVA_HOME`: `/usr/lib/jvm/java-8-openjdk/`

## Environment configuration

Set the environment variable `JAVA_HOME` in `/etc/environment` according to your
system.

For example, for Arch Linux, append the following line:

```shell
JAVA_HOME="/usr/lib/jvm/java-8-openjdk/"
```

## Check the installation

```shell
# Run as a normal user
javac -version
java -version
```

_Example_:

```terminal
$ javac -version
javac 1.8.0_111
$ java -version
openjdk version "1.8.0_111"
OpenJDK Runtime Environment (build 1.8.0_111-8u111-b14-3-b14)
OpenJDK 64-Bit Server VM (build 25.111-b14, mixed mode)
```
