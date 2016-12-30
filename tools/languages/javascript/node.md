# Node

## Description

[Node.js](https://nodejs.org/en/) (or `node` for short) is a JavaScript Virtual Machine.
We use it to build our projects and run server code.
It also comes with `npm`, a package manager for Node modules.

## Dependencies

### Debian

- `curl`
- `build-essential`

## Installation

```shell
# TODO: download as normal user
# Run as root
# Add sources
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
# Install node
apt-get install nodejs
```

Make sure that both `node` and `npm` are in your `PATH`.

### Check the installation

```shell
# Run as a normal user
node --version
npm --version
```

## References

- https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
