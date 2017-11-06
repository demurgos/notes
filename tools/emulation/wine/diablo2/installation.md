# Diablo 2 Installation

## Arch linux

```shell
# Run as root
pacman -S samba lib32-mpg123 lib32-libldap
```

Note: requires enabled multilib

```shell
# Run as a normal user
mkdir -p /opt/wine/diablo2
export WINEPREFIX=/opt/wine/diablo2
export WINEARCH=win64
cd $WINEPREFIX
wine wineboot
# TODO: check if all these are required (copy-paste from the Adobe installation...)
winetricks msxml3 vcrun2008 vcrun2010 atmlib gdiplus allfonts
wine /patch/to/installer.exe
```
