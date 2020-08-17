#!/usr/bin/env bash
# Set resolution for the external VGA monitor (no nvidia-xrun)
xrandr --addmode DP-1 "1680x1050"
xrandr --output DP-1 --mode "1680x1050"
# Set resolution for the external VGA monitor (nvidia-xrun)
xrandr --addmode DP-1-1 "1680x1050"
xrandr --output DP-1-1 --mode "1680x1050"
