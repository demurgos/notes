# Sudo

_sudo_ allows to run commands as the _root_ user.

<!--
TODO: check what _sudo_ means, I guess it's "Super User & DO" or 
a reference to "Switch User" (su)
-->

## Installation

_sudo_ is not installed by default on Debian.

```shell
# As root:
apt-get install sudo
```

## Allow a user to use _sudo_

To use _sudo_, a user must be a member of the "sudoers" group _sudo_.

To allow a user, simply [add it to the _sudo_ group][add-user-to-a-group]:

```shell
# As root:
adduser <username> sudo
```

[add-user-to-a-group]: /linux/distributions/users.md
