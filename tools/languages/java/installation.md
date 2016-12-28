# Installation

## Linux

### Arch

```shell
# Run as root
pacman -S jdk8-openjdk
```

Set the environment variable `JAVA_HOME` to **/usr/lib/jvm/java-8-openjdk**.

In `/etc/environment` append the line:

```shell
JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
```

## Check

```shell
# Run as a user
javac -version
java -version
```
