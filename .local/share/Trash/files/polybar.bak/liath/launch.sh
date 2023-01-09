#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar time -c $HOME/.config/polybar/liath/config.ini &
polybar workspaces -c $HOME/.config/polybar/liath/config.ini &
polybar tray -c $HOME/.config/polybar/liath/config.ini &


if [[ $(xrandr -q | grep 'DP2 connected') ]]; then
	polybar workspaces -c ~/.config/polybar/liath/config.ini &
fi
