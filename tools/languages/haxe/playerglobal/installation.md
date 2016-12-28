# Adobe AIR

## Linux

From [playerglobal Github repository][github-playerglobal], get [_playerglobal11_1.swc_][playerglobal-11.1].

Extract it to **/opt/flash/libs/player/11.1/playerglobal.swc**

Set the environment variable `PLAYERGLOBAL_HOME` to **/opt/flash/libs/playe**.

In `/etc/environment` append the line:

```shell
PLAYERGLOBAL_HOME="/opt/flash/libs/player"
```

[github-playerglobal]: https://github.com/nexussays/playerglobal
[playerglobal-11.1]: http://download.macromedia.com/get/flashplayer/updaters/11/playerglobal11_1.swc
