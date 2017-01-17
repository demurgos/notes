# Time

## Arch Linux

### Timezone

#### List the informations

```shell
timedatectl
```

Example

```terminal
$ timedatectl
      Local time: Tue 2017-01-17 11:28:39 UTC
  Universal time: Tue 2017-01-17 11:28:39 UTC
        RTC time: Tue 2017-01-17 11:28:39
       Time zone: UTC (UTC, +0000)
 Network time on: no
NTP synchronized: no
 RTC in local TZ: no
```

#### Get the current time zone offset

```shell
# Run as a normal user
date +%z
```

Example
```terminal
$ date +%z
+0000
```

#### List the available time zones

```shell
# Run as a normal user
timedatectl list-timezones
```

### Set the current time zone

```shell
# Run as root
# Replace <Zone/SubZone> by the desired value
timedatectl set-timezone <Zone/SubZone>
```

Example

```terminal
# timedatectl set-timezone Europe/Paris
```

### Enable Network time

```shell
# Run as root
timedatectl set-ntp true
```

### Network time

http://www.ntp.org/

```shell
# Run as root
pacman -S ntp
```
