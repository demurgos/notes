# Android SDK Installation

## Requirements

- OpenJDK 8
- npm 4
- node 7
- glxinfo (in `mesa-demos` for Arch)

## Android SDK

Download tools-only for Linux
Extract it `/opt/android/sdk/` (it should contain `tools`)
Set `ANDROID_HOME=/opt/android/sdk/` in `/etc/environment`

Install dependencies

```shell
# Run as root
$ANDROID_HOME/tools/android update sdk --filter tools,platform-tools,android-25,build-tools-25.0.2,extra-android-m2repository,extra-google-m2repository,extra-android-support --all --no-ui
```

```shell
$ANDROID_HOME/tools/android
```

Install:
- build-tools-19.1
- android 7.1.1 (API 25)
- android 4.4.2 (API 19)

## Troubleshoting

```
libGL error: unable to load driver: i965_dri.so
```

Fix:
```
mv $ANDROID_HOME/tools/lib64/libstdc++/ $ANDROID_HOME/tools/lib64/libstdc++.bak/
```

https://bbs.archlinux.org/viewtopic.php?id=209781

You may also take a look at the following packages if there are still some errors:
`lib32z1`, `lib32ncurses5`, `lib32bz2-1.0`, `libstdc++6:i386`. It helped me in the
past but I did not need them when setting up my Android environment recently.
