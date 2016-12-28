# SSH Access

Edit `/etc/ssh/sshd_config`.

Remove the root login:
```text
# Run as root:
PermitRootLogin no
```

Only enable a few users:
```text
# Run as root:
AllowUsers <username1> <username2>
```

Then, restart:
```shell
# Run as root:
service ssh restart
```
