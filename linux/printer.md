# Printer

## Arch

```sh
# Run as root
pacman -S cups cups-pdf print-manager
systemctl enable org.cups.cupsd
```

To install the MFC-9130CW, install _dpkg_ and download the `.deb` driver for CUPS.

```sh
dpkg --add-architecture i386

```
