# Wifi access point

Check if your device can act as an access point.

```shell
# Run as a normal user
iw list
```

It should display `AP` in `Supported interface modes`.


Create an access point.

```shell
# Run as root
pacman -S create_ap
iptables -N POSTROUTING
```

Make sure to reboot your system if you updated your kernel.

```shell
# Run as root ?
create_ap [options] <wifi-interface> [<interface-with-internet>] [<access-point-name> [<passphrase>]]
```

```shell
# Run as root ?
create_ap wlp7s0 eno1 undefined PASSWORD123
```
