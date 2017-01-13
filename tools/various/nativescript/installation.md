## Dependencies

- OpenJDK 8
- npm 4
- node 7

## Arch Linux


```shell
# Run as root
pacman -S gcc mesa-demos
# TODO: lib32z1 lib32ncurses5 lib32bz2-1.0 libstdc++6:i386
```

## Android SDK

Download tools-only for Linux
Extract it `/opt/android/sdk/` (it should contain `tools`)
Set ANDROID_HOME=/opt/android/sdk/

Install dependencies

```shell
# Run as root
$ANDROID_HOME/tools/android update sdk --filter tools,platform-tools,android-23,build-tools-23.0.3,extra-android-m2repository,extra-google-m2repository,extra-android-support --all --no-ui
```

```shell
$ANDROID_HOME/tools/android
```
Install:
- build-tools-19.1
- android 7.1.1 (API 25)
- android 4.4.2 (API 19)

## Native script

```shell
# Run as root
npm install --global nativescript
```

## Check the installation

```shell
# Run as a normal user
tns doctor
```

## Troubleshoting

```
libGL error: unable to load driver: i965_dri.so
```

Fix:
```
mv $ANDROID_HOME/tools/lib64/libstdc++/ $ANDROID_HOME/tools/lib64/libstdc++.bak/
```

https://bbs.archlinux.org/viewtopic.php?id=209781






