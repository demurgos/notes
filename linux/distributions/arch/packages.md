# Packages

The default package manager for Arch is _pacman_.

## List all the packages

```shell
# Run as a normal user
pacman --query
```

You can choose to only displayed the packages explicitly installed with the `--explicit` flag.

Example (on a fresh system, the 2017-01-17):

```terminal
$ pacman --query --explicit
bash 4.4.005-2
bzip2 1.0.6-5
coreutils 8.26-1
cryptsetup 1.7.3-1
device-mapper 2.02.168-1
dhcpcd 6.11.5-1
diffutils 3.5-1
e2fsprogs 1.43.3-1
efibootmgr 14-2
file 5.29-1
filesystem 2016.12-2
findutils 4.6.0-2
gawk 4.1.4-2
gcc-libs 6.3.1-1
gettext 0.19.8.1-2
glibc 2.24-2
grep 2.27-1
grub 1:2.02.beta3-6
gzip 1.8-2
inetutils 1.9.4-5
iproute2 4.9.0-1
iputils 20161105.1f2bb12-1
jfsutils 1.1.15-4
less 487-1
licenses 20140629-1
linux 4.8.13-1
logrotate 3.11.0-1
lvm2 2.02.168-1
man-db 2.7.6.1-2
man-pages 4.09-1
mdam 3.4-1
nano 2.7.4-1
netctl 1.12-2
pacman 5.0.1-4
pciutils 3.5.2-1
pcmciautils 018-7
perl 5.24.0-2
procps-ng 3.3.12-1
psmisc 22.21-3
reiserfsprogs 3.6.25-1
s-nail 14.8.14-1
sed 4.3-1
shadow 4.4-3
sysfsutils 2.1.0-9
systemd-sysvcompat 232-7
tar 1.29-2
texinfo 6.3-1
usbutils 008-1
util-linux 2.29-2
vi 1:070224-2
which 2.21-2
xfsprogs 4.8.0-1
```
