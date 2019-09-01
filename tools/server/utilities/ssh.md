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

## Generate SSH keys

```
EMAIL="demurgos@demurgos.net"
OUTPUT_KEYFILE="deploy_key"
ssh-keygen -t rsa -C "${EMAIL}" -N "" -f "${OUTPUT_KEYFILE}"
```

- `-N`: Password (leave it blank)
- `-f`: Output keyfile.
  - The private key will be `OUTPUT_KEYFILE`
  - The public key will be `OUTPUT_KEYFILE + ".pub"`

## Add a key to the remote server

You need to add the content of the `.pub` file to `.ssh/authorized_keys`.

```
# Following the generation of the SSH keys:
ssh-copy-id demurgos@demurgos.net
```
