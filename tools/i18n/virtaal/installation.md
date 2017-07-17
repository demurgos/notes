# Virtaal installation

## Arch

```shell
# Run as root
pacman -S iso-codes python2-gtkspellcheck python2-levenshtein python2-psycopg2 translate-toolkit
```

[Virtaal on AUR](https://aur.archlinux.org/packages/virtaal/)

```shell
# Run as a normal user in the sudoers list
git clone https://aur.archlinux.org/virtaal.git
cd virtaal
# Optional: check the config
less PKGBUILD
makepkg --syncdeps --install
```

Known issues:
- https://github.com/translate/virtaal/issues/3266
