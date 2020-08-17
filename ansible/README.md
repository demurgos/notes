# Installation

1. Install and start `sshd`
2. Add the public key to the file `~/.ssh/authorized_keys`

```
cat ~/.ssh/id_rsa.pub | ssh username@remote_host "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
```
