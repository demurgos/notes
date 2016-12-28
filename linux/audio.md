# Audio

## List record devices

(`alsa-utils`)

```shell
arecord --list-devices
pacmd list-sources
```

## Check the microphone

```shell
# -f: format (CD)
# -d: duration (5 seconds)
arecord -f cd -d 5 test-mic.wav
aplay test-mic.wav
```

## Microphone control

```shell
alsamixer
```

```
pacmd list-sources
pacmd "set-default-source alsa_input.usb-045e_USB_camera-01.analog-mono"
```
