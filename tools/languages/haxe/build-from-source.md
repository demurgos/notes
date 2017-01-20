# Build Haxe from source

## Arch Linux

```shell
# Run as root
pacman -S ocaml camlp4 pcre zlib
# Run as a normal user
git clone --recursive https://github.com/HaxeFoundation/haxe.git
cd haxe
make
# Run as root
make install
```

Then add the following value to `/etc/environment`:

```text
HAXE_STD_PATH="/usr/lib/haxe/std/:."
```
