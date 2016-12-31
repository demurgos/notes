# Flahplayer

Installation of the standalone Flashplayer, with debugger.

## Linux

Adobe started to publish new versions for Linux:

[Adobe labs downloads][adobe-labs-downloads]

1. Choose **Download standalone debugger for Linux 64-bit**.

2. Extract the archive to get `flashplayerdebugger`

3. Run:
   ```shell
   # Run as root
   mkdir /opt/flashplayer
   mv flashplayerdebugger /opt/flashplayer/flashplayerdebugger
   ```

4. Add commands
   ```shell
   # Run as root
   ln -s /opt/flashplayer/flashplayerdebugger /usr/local/bin/flashplayer
   ln -s /opt/flashplayer/flashplayerdebugger /usr/local/bin/flashplayerdebugger
   ```

## Environment configuration

Set the environment variable `FLASHPLAYER_DEBUGGER` in `/etc/environment` according to your
system.

For example, for Arch Linux, append the following line:

```shell
FLASHPLAYER_DEBUGGER="/opt/flashplayer/flashplayerdebugger"
```


[adobe-labs-downloads]: http://labs.adobe.com/downloads/flashplayer.html
