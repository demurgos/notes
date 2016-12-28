# Configuration for Linux

## Installation

### Debian

```shell
sudo apt-get install swi-prolog
```

### Arch

```shell
pacman -S swi-prolog
```

## Execution

```shell
swipl src/main.pl
```

## Exit SWI prolog

Hit `Ctrl` + `C` twice, then `e`.
A better solution is to use the `halt/0` predicate.
