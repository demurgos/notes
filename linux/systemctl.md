# Systemctl

## List all services

```shell
systemctl list-units --all
```

## Enable (start at boot)

```shell
systemctl enable <serviceName>
```

## Lifecycle

```shell
systemctl start <serviceName>
systemctl restart <serviceName>
systemctl stop <serviceName>
```

## Status

```shell
systemctl status <serviceName>
```
