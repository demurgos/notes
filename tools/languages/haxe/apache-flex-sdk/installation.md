# Apache Flex Installation

## Dependencies

- [_Java SDK_ 1.8](../../java/index.md)
- [_Ant_ 1.9](../../java/ant/index.md)
- [_Adobe AIR SDK_ 2.6](../adobe-air/index.md)
- [_Adobe Flash Player Content Debugger_ 23](../../../various/flashplayer/standalone-installation.md)
- [_Adobe Flash Player `playerglobal` swc 11.1_](../playerglobal/index.md)
- [_Apache Flex TLF_](../apache-flex-tlf/index.md)

## Linux

```shell
# Run as root
cd /opt/
git clone https://github.com/apache/flex-sdk.git
cd flex-sdk
git checkout develop
echo y | ant main
```

### Troubleshot

You might need to manually download `flex-tool-api.jar` and place it in the `in` directory.

## References

- https://github.com/apache/flex-sdk
