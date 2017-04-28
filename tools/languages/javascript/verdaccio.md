# [Verdaccio][verdaccio-home]

Verdaccio is a private _npm_ repository.

## Installation

### Requirements

- Node
- npm

### Debian

```sh
# Run as root
npm install -g verdaccio
```
### Usage

#### Start

```sh
verdaccio
```

#### Use Verdaccio

```sh
npm set registry http://localhost:4873/
```

You can also set up an _nginx_ proxy to get a nicer URL such as
`http://npm.localhost/`.
You also have to edit `~/.config/verdaccio/config.yaml` and add:

```yaml
# Advanced
# Public domain
url_prefix: http://npm.localhost/
```

### Production

**VERY IMPORTANT**

Make sure you have the following values:

```sh
auth:
  htpasswd:
    file: /path/to/htpasswd
    # -1: No registration
    max_users: -1
    
# ...

packages:
  # All packages
  '**':
    access: $authenticated
    publish: $authenticated
    proxy: npmjs

```


[verdaccio-home]: https://github.com/verdaccio/verdaccio
