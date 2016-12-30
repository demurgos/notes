# Typings

Typings is a package manager for Typescript types definition files.
It allows the compiler to be aware of Javascript dependencies.

## Installation

### Dependencies

- [Node](../javascript/node.md)
- [npm](../javascript/npm.md)

### Installation

```shell
# Run as root
npm install --global typings
```

### Check the installation

```shell
# Run as a normal user
typings --version
```

## Usage

```shell
# Run as a normal user
typings search <package>
typings install --save npm~<package>
# Or for DT-only packages
npm install --save-dev @types/<package>
```
