# Haxe

> Haxe is an open source toolkit based on a modern, high level, strictly typed
> programming language, a cross-compiler, a complete cross-platform standard
> library and ways to access each platform's native capabilities. 

[Home][haxe-home]

## Installation

### Arch Linux

```shell
pacman -S haxe
```

- SDK HOME: `/usr/bin`
- Executable path: `/usr/bin/haxe`

### Windows

[Download the installer][haxe-download]. 

Make sur to check the **Neko** component during the installation.

## IDE integration

### IntelliJ IDEA

Plugin name: **Haxe Support**

If the published plugin does not support the current version of the IDE,
you can try to download [the latest release][intellij-haxe-releases] from
Github.

**File | Project Structure | Project | Project SDK**: Choose the Haxe SDK.
If it is not available, add it (select the `haxe` directory in `HaxeToolkit`).

**File | Project Structure | Modules | \<module\> | Haxe**: Choose NMML and
select the configuration file.

Add an Haxe run configuration.

[haxe-home]: http://haxe.org/
[haxe-download]: http://haxe.org/download/
[intellij-haxe-releases]: https://github.com/TiVo/intellij-haxe/releases
