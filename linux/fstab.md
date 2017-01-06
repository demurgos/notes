# Fstab

**/etc/fstab**

```text
# /dev/sdb6
UUID=1b5b15c8-50f0-45e2-90b3-054c60220425       /               ext4            rw,relatime,data=ordered     0 1

# /dev/sdb2
UUID=6CF0-29FD          /boot           vfat            rw,relatime,fmask=0022,dmask=0022,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro 0 2

# /dev/sdb7
UUID=a1201010-3a27-4f44-8c04-ba51528e8711       none            swap            defaults    0 0

# /dev/sda7
UUID=1AB5ADF5238EB4BC /data/ ntfs user,gid=demurgos,uid=demurgos,exec 0 0
```
