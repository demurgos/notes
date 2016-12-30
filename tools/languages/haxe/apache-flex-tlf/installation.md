# Apache Flex Installation

Installation of Apache Flex TLF. This is a dependency for Apache Flex SDK, you should
not build it directly.

## Linux (Debian, Arch Linux)

```shell
# Run as root
cd /opt/
git clone https://github.com/apache/flex-tlf.git
cd flex-tlf
git checkout develop
```

- `TLF_HOME`: `/opt/flex-tlf/`

## Environment configuration

Set the environment variable `TLF_HOME` in `/etc/environment` according to your
system.

For example, for Arch Linux, append the following line:

```shell
TLF_HOME="/opt/flex-tlf/"
```

## References

- https://github.com/apache/flex-tlf
