# Adobe AIR Installation

Installation of Adobe AIR SDK 2.6.
This the last version supporting all systems. After 2.6, support for Linux was dropped.

## Linux

From [the Air archive][air-archive], get [**Adobe AIR 2.6 SDK Linux**][adobe-air-sdk-linux-2.6].

Extract it to the directory **/opt/adobe-air/**.

Set the environment variable `AIR_HOME` to **/opt/adobe-air/**.

In `/etc/environment` append the line:

```shell
AIR_HOME="/opt/adobe-air/"
```

[air-archive]: https://helpx.adobe.com/air/kb/archived-air-sdk-version.html
[adobe-air-sdk-linux-2.6]: http://airdownload.adobe.com/air/lin/download/2.6/AdobeAIRSDK.tbz2
