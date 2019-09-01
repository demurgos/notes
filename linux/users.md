# Users

## Add user

```shell
sudo adduser <username>
```

Example:

```shell
sudo adduser demurgos
```

**Note**: Remember to whitelist the new user in SSH config.

Arch:
```shell
useradd --create-home -G users -s /bin/bash <username>
```

### Virtual users

Create "virtual" users to run some tasks with restricted rights. For example, for web services.

**TODO**: Check the "real" way to do it

```shell
# Run as root
# --gid
#   The group (name or number) of the user's initial login group. The groupe must exist.
# --home-dir
#   The user's login directory.
# -s
#   Login shell.
# -M
#   Do no create the user's home directory.
useradd demurgos.net --gid web --home-dir /var/www/demurgos.net -s /bin/bash -M
useradd hamm4all.eternalfest.net --gid web --home-dir /var/www/hamm4all.eternalfest.net -s /bin/bash -M
```

## Add group

```shell
# Run as root
addgroup <groupname>
```

## Add user to group

```shell
usermod --append --groups docker <username>
```

Example:
```shell
usermod --append --groups sudo demurgos
```

## Remove user

```shell
# --remove deletes `home` 
userdel --remove <username>
```

## Change password

```shell
passwd <username=self>
```


## Utility users

- `git` used by gitlab
- `vmail` for virtual emails
- `postfix` for virtual emails

## Utility groups

- `vmail` for virtual emails
- `postfix` for virtual emails
