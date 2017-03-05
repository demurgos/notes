# Arch User Repository

[ArchLinux User Repository (AUR)][aur-home] contains packages for Arch that are
not on the official repository.

## Requirements

base-devel

## Install a package

Go to the main page of the package and get the _Git clone URL_.

```
# Run as a normal user
# Get the package
git clone <url>
cd <package-name>
# Check the config
less PKGBUILD
# Install (run as a normal user, I don't know where it will install it)
makepkg --syncdeps --install
```

## References

- [Arch Wiki][arch-wiki-aur]


[aur-home]: https://aur.archlinux.org/arch-user-repository.md
[arch-wiki-aur]: https://wiki.archlinux.org/index.php/Arch_User_Repository#Installing_packages
