# npm

_npm_ is a package manager for Javascript (Node and browser).

## Installation

Make sure to install the **version 4**.
It solves multiple important issues, especially about the project
lifecycle scripts (`prepare`, `prepublishOnly`).

### Dependencies

- [Node](./node.md)

### Update bundled version

The recommend way to install `npm@4` is to install [Node](./node.md)
which bundles `npm@3` and then update it:

```shell
# Run as root (important, or you'll get stuck)
npm install --global npm@4
```

### Standalone installation

Check the official _npm_ documentation.

### Check the installation

```shell
# Run as a normal user
npm --version
```

**Make sure to have version 4**

## Usage

### Install the dependencies of the current project

```shell
# Run as a normal user, at the root of the project
npm install
```

### Install package

```shell
# Run as a normal user
npm install --save <package>
npm install --save-dev <package>
# Run as root
npm install --global <package>
```

### Link packages

### Prune, upgrade

### Lifecycle
