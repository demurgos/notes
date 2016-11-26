# Environment

## Temporary

### Shell session

```shell
key="val
```

### All the shells

```shell
export key="val"
```

### Single command

```
key="val" cmd
```

## Persist variables

### For all users

Add the variables to `/etc/environment` with `key="value"` (one per line).

You can comment lines with `#`.

Example:

```text
JAVA_HOME="/foo/bar"
# This is a comment
AIR_HOME="/baz/quz/"
```
