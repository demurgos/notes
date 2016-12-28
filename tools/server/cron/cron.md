# Cron

Edit for current user:

```shell
# As a standard user:
crontab -e
```

Then append:

```text
@reboot <cmd>
```

## Dependencies

`certbot` adds a task to check for renewable certificates (twice a day): `/etc/cron.d/certbot`.
