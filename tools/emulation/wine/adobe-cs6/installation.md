# Adobe CS6 installation

## Arch linux

```shell
# Run as root
pacman -S samba lib32-mpg123
```

Note: requires enabled multilib

```shell
# Run as a normal user
mkdir -p /opt/wine/adobe-cs6
export WINEPREFIX=/opt/wine/adobe-cs6
export WINEARCH=win32
cd $WINEPREFIX
wine wineboot
winetricks msxml3 vcrun2008 vcrun2010 atmlib gdiplus allfonts
wine /patch/to/installer.exe
```

Install in `C:\Program Files\Adobe`.

### Troubleshooting

- **Unable to download msxml3.msi**
  
  This dependency is no longer available from Microsoft so Winetricks has to download it
  from the web archive. It happens sometimes that this mirror does not work.
  The workaround is to place the installer `msxml3.msi` in `~/.cache/winetricks/msxml3/`.
  I uploaded a copy of `msxml3.msi` next to this document.


- **Unable to download W2KSP4_EN.exe**
  
  Place the installer `W2KSP4_EN.exe` in `~/.cache/winetricks/win2ksp4/`.
  There are multiple mirrors on the internet.

- **Unable to install VCRedist 2008 (x64)**

  The Adobe installer tried to install VCRedist for x64. Make sure that you have `WINEARCH=win32`.
  I was not able to install it for a 64 bits installer because of msxml3. The default version
  works with VCRedist 2008 x64 but the installer does not start; if I install the version from winetricks,
  the installer starts but VCRedist fails.
