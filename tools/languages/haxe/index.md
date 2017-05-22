# Haxe

> Haxe is an open source toolkit based on a modern, high level, strictly typed
> programming language, a cross-compiler, a complete cross-platform standard
> library and ways to access each platform's native capabilities. 

[Home][haxe-home]

## IDE integration

### IntelliJ IDEA

Plugin name: **Haxe Support**

If the published plugin does not support the current version of the IDE,
you can try to download [the latest release][intellij-haxe-releases] from
Github.

**File | Project Structure | Project | Project SDK**: Choose the Haxe SDK.
If it is not available, add it (select the `haxe` directory in `HaxeToolkit`).
For Linux: `/usr/share/haxe`.

**File | Project Structure | Modules | \<module\> | Haxe**: Choose NMML and
select the configuration file.

Add a Haxe run configuration.

## Usage

This is not really clear how to structure a project because of the lack of
documentation. Once I stabilize my project template I'll put it here.

To use assets, _nme_ (Native Media Engine) was the first solution but it looks like
_openFl_ is a better fork.


[haxe-home]: http://haxe.org/index.md
[haxe-download]: http://haxe.org/download/index.md
[intellij-haxe-releases]: https://github.com/TiVo/intellij-haxe/releases
