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

### Virtual users

Create "virtual" users to run some tasks with restricted rights. For example, for web services.

**TODO**: Check the "real" way to do it

```shell
# Run as root
# --gid
#   The group (name or number) of the user's initial login group. The groupe must exist.
# --home-dir
#   The user's login directory.
# -M
#   Do no create the user's home directory.
useradd demurgos.net --gid web --home-dir /var/www/demurgos.net -M
```

## Add group

```shell
# Run as root
addgroup <groupname>
```

## Add user to group

```shell
usermod -a -G <groupname> <username>
```

Example:
```shell
usermod -a -G sudo demurgos
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
