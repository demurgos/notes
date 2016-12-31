# _Git_ installation

[Git website][git-home]

- Debian
- Arch Linux
- Windows
- Check the installation

## Debian

```shell
# Run as root
apt-get install git
```

Then see the [_Git_ configuration](./configuration.md) page.

## Arch Linux

```shell
# Run as root
pacman -S git
```

Then see the [_Git_ configuration](./configuration.md) page.

## Windows

[Download][git-download-win] the latest version of git for Windows.
During the installation process, you will have the possibility to customize your configuration.
Here are some recommended settings.

- Components

  - Uncheck **Explorer integration**`
  - Check **Associate .git\* configurations file with the default editor**
  - Check **Associate .sh files to be run with Bash**
  
  The explorer integration adds two entries to every contextual menu (right click) of the Windows
  Explorer. Since you should be able to use `git` from `cmd.exe` and that the GUI is not that
  good, I prefer to not enable the **Explorer integration**.
 
- Adjusting the PATH environment

  Choose **Use Git from the Windows Command Prompt**
  
  This installs Git as a Windows command and let you use it in `cmd.exe`.

- Line endings conversion

  Choose **Checkout as-is, commit Unix-style line endings**.
  
  Even if this is not the default option for Windows, having a consistent line endings style is
  valuable. [See line endings](../../../style/lines.md).


Then see the [_Git_ configuration](./configuration.md) page.

## Check the installation

```shell
# Run as a normal user
git --version`
```

Example:
```terminal
$ git --version
git version 2.11.0
```


[git-home]: https://git-scm.com/
[git-download-win]: https://git-scm.com/download/win
