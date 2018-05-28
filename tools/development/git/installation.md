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

Many of the default settings of the installer are there for historical reasons.
You should follow the recommended settings below for a new installation.

- Components

  - Uncheck **Explorer integration** (see below)
  - Check **Git LFS (Large File Support)**
  - Check **Associate .git\* configurations file with the default editor**
  - Check **Associate .sh files to be run with Bash**
  - Check **Check daily for Git for Windows updates**

  The explorer integration adds two entries to every contextual menu (right click) of the Windows
  Explorer. Since you should be able to use `git` from `cmd.exe` and that the GUI is not that
  good, I prefer to not enable the **Explorer integration**.

- Choosing the default editor used by Git

  Select **Use Notepad++ as Git's default editor**.

- Adjusting your PATH environment

  Choose **Use Git from the Windows Command Prompt**
  
  This installs Git as a Windows command and let you use it in `cmd.exe`.

- Line endings conversion

  Choose **Checkout as-is, commit Unix-style line endings**.
  
  Even if this is not the default option for Windows, having a consistent line endings style is
  valuable. [See line endings](../../../style/lines.md).

- Configuring extra options

  - Check **Enable file system caching**.
  - Check **Enable Git Credential Manager**.
  - Check **Enable symbolic links**.

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
