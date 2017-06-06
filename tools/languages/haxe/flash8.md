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

This article was tested with **Linux** (Arch Linux, Debian and Mint) and **Mac**. If you
manage to use it with Windows, send a PR to update this article.

See below for the system-specific command to install the requirements.

- [_Camlp4_][camlp4-home] latest, verified with 4.04.0 (2016-11-15)
- [_git_][git-home] latest, verified with 2.11.0 (2016-11-29)
- [_neko_][neko-home] latest, verified with 2.1.0 (2016-05-08)
- [_OCaml_][ocaml-home] latest, verified with 4.04.0 (2016-11-04)
- [_PCRE_][pcre-home] latest, verified with 8.39 (2016-06-14)
- [_zlib_][zlib-home] latest, verified with 1.2.11 (2017-01-15)
- **TODO**: Also one of neko's dependencies is not pulled automatically

Specific to Mac OS X:
- [_xquartz_][xquartz-home] latest, verified with 2.7.11 (2016-10-29)

### Requirements installation for Debian

```shell
# Run as root
apt-get install camlp4 neko ocaml zlib1g-dev
```

### Requirements installation for Arch Linux

The Haxe compilation requires the `as` program (part of `gcc`).

```shell
# Run as root
pacman -S camlp4 gcc neko ocaml pcre zlib
```


### Requirements installation for macOS

```shell
# Run as root
brew install camlp4 neko ocaml xquartz
```

## Compilation

To use Haxe 3.1, you will need to compile [the `3.1_bugfix` branch of Haxe from my
fork][github-demurgos-haxe-3.1_bugfix]. There is [an open issue][issue-bugfix] to add this branch
to [the main Haxe repository][github-haxe].

```shell
# Run as a normal user
git clone --recursive --branch 3.1_bugfix https://github.com/demurgos/haxe.git haxe-3.1
cd haxe-3.1
make
```

## Installation and configuration

### Explanation

This step will add the compiled files to your system.
This will install Haxe to **/usr/lib/haxe/** (later refered to as **Haxe home**) and add
`haxe` and `haxelib` to your path by creating **/usr/bin/haxe** and **/usr/bin/haxelib**`.

#### Preparation for macOS

**If you use macOS**, **/usr/lib** is protected by default and you cannot write to it, even as
_root_. You have two solutions:
- [Disable System Inregrity Protection (SIP)][so-disable-sip]
- Write the files to **/usr/local/** (instead of **/usr/**) by editing the line 13 of **Makefile**
  from `INSTALL_DIR=/usr` to `INSTALL_DIR=/usr/local`

### Installation

Make sure to have the _root_ permissions:

```shell
# Run as root
make install
```

#### Check

```shell
# Run as a normal user
haxe -version
```

Example:

```terminal
$ haxe -version
3.1.3
```

### Standard library path

You now need to set the `HAXE_STD_PATH` environment variable to the absolute path of the Haxe
standard library and to the current directory `.`, separated by a colon `:`.
Example value: `/usr/lib/haxe/std/:.`.

The standard library is located in the **std** directory of your Haxe home.

Since this variable is required for every user wanting to use Haxe, I recommend to set it in the
**/etc/environment** file.

Example:
- Default installation: Add the line `HAXE_STD_PATH="/usr/lib/haxe/std/:."`
- macOS with SIP: Add the line `HAXE_STD_PATH="/usr/local/lib/haxe/std/:."`

The changes to `/etc/environment` will be applied when you reboot. To apply them for your current
session, use `source /etc/environment`.

#### Check

```shell
# Run as a normal user
echo $HAXE_STD_PATH
```

Example:

```terminal
$ echo $HAXE_STD_PATH
/usr/lib/haxe/std/:.
```

### Haxelib path

Haxelib is the package manager for Haxe. It installs packages globally in the **lib** directory
of your Haxe home. You should ensure that the path is to this directory is correctly configured
in Haxelib since you compiled Haxelib manually.

**It is important to configure it as a normal user**, otherwise you will not be able to install
packages as a normal user.

Example values:
- Default installation:`/usr/lib/haxe/lib/`
- macOS with SIP:`/usr/lib/haxe/lib/`


```shell
# Run as a normal user
haxelib setup
```

#### Check

**IMPORTANT**: You have to run it outside of the directory containing the Haxe sources.
The **std** directory in the project interferes with the command.

```shell
# Run as a normal user
haxelib
```

Example:

```terminal
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

Some packages no longer support Flash 8. Here is a small table with the versions compatible with
Haxe 3.1.

| Name   | Version            |
|--------|--------------------|
| lime   | 2.3.3 (2015-04-21) |
| munit  | 2.1.2 (2015-09-24  |
| openfl | 3.0.1 (2015-04-09) |
| svg    | 1.1.1 (2016-10-10) |

When you install libraries, make sure to specify the version.

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


[camlp4-home]: https://github.com/ocaml/camlp4
[git-home]: https://git-scm.com/
[github-demurgos-haxe-3.1_bugfix]: https://github.com/demurgos/haxe/tree/3.1_bugfix
[github-haxe]: https://github.com/HaxeFoundation/haxe
[github-haxe-3.1_bugfix]: https://github.com/HaxeFoundation/haxe/tree/3.1_bugfix
[haxe-3.1.3]: https://haxe.org/download/version/3.1.3/
[issue-bugfix]: https://github.com/HaxeFoundation/haxe/issues/5977
[neko-home]: http://nekovm.org/
[ocaml-home]: https://ocaml.org/
[pcre-home]: http://pcre.org/
[so-disable-sip]: https://apple.stackexchange.com/questions/208478/how-do-i-disable-system-integrity-protection-sip-aka-rootless-on-os-x-10-11
[xquartz-home]: https://www.xquartz.org/
[zlib-home]: http://www.zlib.net/
