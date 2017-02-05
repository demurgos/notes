# KDE

## Utilities

### Filelight

Displays data about the space used by directories as concentric circles.

- Debian
  
  ```shell
  # Run as root
  apt-get install filelight
  ```

## Troubleshot

If the menu bar disappear or the taskbar hangs up, kill and restart it:

```
# Find the process ID
ps aux | grep kwin_x11
# Kill it, replace <process-id> by the number found with the previous command
kill <process-id>
# Start and keep it running after the terminal is closed
nohup kwin_x11 &
```
