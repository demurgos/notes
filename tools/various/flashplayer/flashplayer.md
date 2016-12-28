# Flahplayer

## Linux

Adobe started to publish new versions for Linux:

[Adobe labs downloads][adobe-labs-downloads]

### Standalone

1. Choose **Download standalone debugger for Linux 64-bit**.
2. Extract the archive to get `flashplayerdebugger`
3. Run:
   ```shell
   # Run as root:
   mkdir /opt/flashplayer
   mv flashplayerdebugger /opt/flashplayer/flashplayerdebugger
   ```
4. Add it to your path
   ```shell
   # Run as root:
    
   ln -s /opt/flash/flashplayerdebugger /usr/bin/flashplayer
   ```

5. Set the environment variable `FLASHPLAYER_DEBUGGER` to **/opt/flashplayer/flashplayerdebugger**.

   In `/etc/environment` append the line:

   ```shell
   FLASHPLAYER_DEBUGGER="/opt/flash/flashplayerdebugger"
   ```

[adobe-labs-downloads]: http://labs.adobe.com/downloads/flashplayer.html
