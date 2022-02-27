#!/usr/bin/env bash

printf 'script started' | systemd-cat -t check-battery

BATINFO=`acpi -b`
if [[ `echo $BATINFO | grep Discharging` && `echo $BATINFO | cut -f 5 -d " "` < 00:20:00 ]] ; then
    printf "condition is true: $BATINFO" | systemd-cat -t check-battery
    DISPLAY=:0 /usr/bin/notify-send -u low "battery" "$BATINFO"
fi
