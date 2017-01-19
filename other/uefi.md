### Persist with startup.nsh

If you ever boot the the EFI Shell, use this:

```efi-terminal
Shell> fs0:
FS0:\> ls
Directory of: FS0:\
12/09/2016  06:25           4,802,336  vmlinuz-linux
12/09/2016  19:54           5,778,213  initramfs-linux.img
12/09/2016  19:54          21,474,966  initramfs-linux-fallback.img
01/17/2017  19:53 <DIR>         4,096  grub
01/17/2017  19:00 <DIR>         4,096  EFI
          3 File(s)  32,055,515 bytes
          2 Dir(S)
FS0:\> ls EFI
Directory of: FS0:\EFI\
01/17/2017  19:00 <DIR>         4,096  .
01/17/2017  19:00 <DIR>             0  ..
01/17/2017  19:00 <DIR>         4,096  grub
          0 File(s)           0 bytes
          3 Dir(S)
FS0:\> ls EFI\grub
Directory of: FS0:\EFI\grub\
01/17/2017  19:00 <DIR>         4,096  .
01/17/2017  19:00 <DIR>         4,096  ..
01/17/2017  19:53             122,368  grubx64.efi
          1 File(s)     122,368 bytes
          2 Dir(S)
FS0:\> edit startup.nsh
```

- Type `\EFI\ubuntu\grubx64.efi`
- Hit `Ctrl + S` (S on the QWERTY keyboard) then `Enter` (`Return`)
- It will prompt you the name of the file to save, `Enter` to use the default (`startup.nsh`)
- Hit `Ctrl + Q` (Q on the QWERTY keyboard) to quit

```efi-shell
FS0:\> ls
Directory of: FS0:\
12/09/2016  06:25           4,802,336  vmlinuz-linux
12/09/2016  19:54           5,778,213  initramfs-linux.img
12/09/2016  19:54          21,474,966  initramfs-linux-fallback.img
01/17/2017  19:53 <DIR>         4,096  grub
01/17/2017  19:00 <DIR>         4,096  EFI
01/17/2017  20:21                  44  startup.nsh
          4 File(s)  32,055,559 bytes
          2 Dir(S)
FS0:\> reset
```

Or better for Virtualbox:

```shell
cd /boot/
mkdir EFI/BOOT/
cp EFI/grub/grub.efi EFI/BOOT/BOOTX64.EFI
```
