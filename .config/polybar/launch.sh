#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar -c /home/darnell/.config/polybar/config.ini mainbar-herbstluftwm &


if [[ $(xrandr -q | grep 'DP2 connected') ]]; then
	polybar -c /home/darnell/.config/polybar/config.ini mainbar-herbstluftwm-right &
fi
