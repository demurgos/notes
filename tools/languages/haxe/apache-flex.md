# Apache Flex

## Installation

### Dependencies

- Java SDK
- Ant
- Adobe AIR Integration Kit
- Adobe Flash Player Content Debugger
- Adobe Flash Player playerglobal swcs

### Linux

```shell
# Run as a user:
git clone https://github.com/apache/flex-tlf.git
cd flex-tlf
git checkout develop
cd ..
git clone https://github.com/apache/flex-sdk.git
cd flex-sdk
git checkout develop
sudo ant main
```

#### Troubleshot

You might need to manually download `flex-tool-api.jar` and place it in the `in` directory.

## References

- https://github.com/apache/flex-sdk
