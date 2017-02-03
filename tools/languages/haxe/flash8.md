# Haxe for Flash 8

If you need to update a codebase of Actionscript 2 code that heavily uses cross-scripting (ie, when
you load multiple files and they call each other's functions directly), then the best solution
is to convert them to Haxe progressively. You will be able to compile to compatible AS2 files
during the transition and then switch to Actionscript 3 or an other target painlessly (in theory).

One big caveat is that the **last Haxe version supporting Flash 8 is Haxe 3.1.3 (2014-04-13)**,
the current version is 3.4.0-rc.2 (2016-12-24). **You will need a Haxe 3.1.3 environment to
compile to Flash 8**. This article will document the process to configure your environment.

You will have to compile a specific version of Haxe yourself.

## Requirements

This article was only tested with **Linux** (Arch Linux, Debian and Mint) and **Mac**. If you
manage to compile Flash 8 files with Windows, send a PR to update this article.

The specified versions are verified to work.

- [_neko_][neko-home] 2.1.0 (2016-05-08)
- [_zlib_][zlib-home] 1.2.11 (2017-01-15)
- ocaml
- camlp4
- pcre
- _git_
- **TODO**: gcc and others ...

### Requirements installation for Debian

```shell
# Run as root
apt-get install camlp4 neko ocaml
```

### Requirements installation for Arch Linux

```shell
# Run as root
pacman -S camlp4 neko ocaml pcre zlib
```

## Compilation

To use Haxe 3.1, you will need to compile [the `3.1_bugfix` branch of Haxe from the fork by
Demurgos][github-demurgos-haxe-3.1_bugfix]. There is [an open
issue](https://github.com/HaxeFoundation/haxe/issues/5977) to add this branch to [the main
Haxe repository](https://github.com/HaxeFoundation/haxe).

```shell
# Run as a normal user
git clone --recursive --branch 3.1_bugfix https://github.com/demurgos/haxe.git haxe-3.1
cd haxe-3.1
make
```


## Installation and configuration

From the project's directory, install the compiled files to your system:
```shell
# Run as root
make install
```

This will install Haxe to the `/usr/lib/haxe/` directory and create two links in `/usr/bin`:
`haxe` and `haxelib`.

You now need to set the `HAXE_STD_PATH` environment variable to the absolute path of the Haxe
standard library and to the current directory `.` (dynamic). The standard library is in the `std`
directory of the installation directory `/usr/lib/haxe/`.

Append the following line to **/etc/environment**:
```text
HAXE_STD_PATH="/usr/lib/haxe/std/:."
```

**TODO**: Configure **/usr/lib/haxe/lib/**.

## Check the installation

```shell
# Run as a normal user
echo $HAXE_STD_PATH
haxe -version
# You have to run the following command outside of Haxe's directory:
haxelib version
```

Example:
```terminal
$ echo $HAXE_STD_PATH
/usr/lib/haxe/std/:.
$ haxe -version
3.1.3
$ haxelib
Haxe Library Manager 3.1.0-rc.4 - (c)2006-2013 Haxe Foundation
  Usage: haxelib [command] [options]
  Basic
    install   : install a given library, or all libraries from a hxml file
    upgrade   : upgrade all installed libraries
    update    : update a single library
    remove    : remove a given library/version
    list      : list all installed libraries
    set       : set the current version for a library
  Information
    search    : list libraries matching a word
    info      : list information on a given library
    user      : list information on a given user
    config    : print the repository path
    path      : give paths to libraries
  Development
    submit    : submit or update a library package
    register  : register a new user
    local     : install the specified package locally
    dev       : set the development directory for a given library
    git       : use git repository as library
  Miscellaneous
    setup     : set the haxelib repository path
    selfupdate: update haxelib itself
    convertxml: convert haxelib.xml file to haxelib.json
    run       : run the specified library with parameters
    proxy     : setup the Http proxy
```

## Haxelib

Some packages no longer support Flash 8. Here is a small table with the versions supporting
Haxe 3.1.

| Name   | Version            |
|--------|--------------------|
| lime   | 2.3.3 (2015-04-21) |
| munit  | 2.1.2              |
| openfl | 3.0.1 (2015-04-09) |
| svg    | 1.1.1              |

**As a normal user**, run the following command to configure _haxelib_.
Choose `/usr/lib/haxe/lib/` for the repository path (`lib` directory in the Haxe home).
```shell
# Run as a normal user
haxelib setup
```

Then install the libraries:
```shell
# Run as a normal user
haxelib install lime 2.3.3
haxelib install munit 2.1.2
haxelib install openfl 3.0.1
haxelib install svg 1.1.1
```

## Comments

### AVM1 and AVM2

**TODO**

- Cross-scripting
- LocalConnection

[zlib-home]: http://www.zlib.net/
[neko-home]: http://nekovm.org/
[haxe-3.1.3]: https://haxe.org/download/version/3.1.3/
[github-demurgos-haxe-3.1_bugfix]: https://github.com/demurgos/haxe/tree/3.1_bugfix
[github-haxe-3.1_bugfix]: https://github.com/HaxeFoundation/haxe/tree/3.1_bugfix
