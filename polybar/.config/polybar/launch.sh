#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar laptop  2>&1 | tee -a /tmp/polybar1.log & disown

if xrandr -q | grep -q "HDMI-1 connected"; then
	polybar monitor 2>&1 | tee -a /tmp/polybar1.log & disown
fi

echo "Bars launched..."
