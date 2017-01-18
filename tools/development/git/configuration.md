# Git Configuration

## Line endings

**Make sure to configure the line endings to avoid issues when working with multiple systems.**

Run the following line (Windows, Linux, Mac) to normalize all the line endings to `LF` when
checking out a commit.

```shell
# Run as a normal user
git config --global core.autocrlf input
```

### Check the configuration

```shell
# Run as a normal user
git config --get --global core.autocrlf
```

Example:

```terminal
$ git config --get --global core.autocrlf
input
```

## User information

```shell
# Run as a normal user
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```

Example:

```shell
# Run as a normal user
$ git config --global user.name "Charles Samborski"
$ git config --global user.email "demurgos@demurgos.net"
```

### Check the configuration

```shell
# Run as a normal user
git config --get --global user.name
git config --get --global user.email
```

Example:

```terminal
$ git config --get --global user.name
Charles Samborski
$ git config --get --global user.email
demurgos@demurgos.net
```

## Rebase instead of merge when pulling changes

This allows to have a cleaner git history.

```shell
# Run as a normal user
git config --global branch.autosetuprebase always
git config --global pull.rebase true
```
