# Ruby

Interpreter for the ruby language (and its package manager: _gem_).

## Installation


### Windows 

Download the installer for the latest version (currently 2.2.4 or 2.2.4 (x64)) from the [Ruby Installer project](http://rubyinstaller.org/downloads/).

Run it as administrator.

You can change the location to not use the root of your computer (ie. `C:\Program Files\Ruby22`). Make sure to check `Add Ruby executable to your PATH`. Optionnaly, associate files.

__Warning__: It seems that the current version of Ruby's `gem` has issues when the location contains spaces.
You'll have to fix the generated `.cmd` file for gems exposing a command line interface.

### Check installation

```shell
# Run as a normal user
ruby --version
gem --version
```
