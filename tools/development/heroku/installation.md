# Heroku CLI installation

The _Heroku CLI_ was previously called the _Heroku Toolbelt_.

## Arch Linux

Install [`heroku-toolbelt`](https://aur.archlinux.org/packages/heroku-toolbelt/) from 
the Arch User Repository. You can follow [the instructions][notes-aur].

```
# Run as a normal user
git clone https://aur.archlinux.org/heroku-toolbelt.git
cd heroku-toolbelt
# Check the config
less PKGBUILD
# Install (run as a normal user, will use `sudo` when necessary)
makepkg --syncdeps --install
```

Then run:

```
# Run as a normal user
heroku
```

This will download and install the CLI.

[notes-aur]: ../../../linux/distributions/arch/arch-user-repository.md
