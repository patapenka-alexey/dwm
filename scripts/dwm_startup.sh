#!/usr/bin/env bash

# place this file to /usr/local/bin/
# create ~/.xinitrc
# and add in it next command
# $ exec /usr/local/bin/dwm_startup.sh

# feh --bs-scale ~/Pictures/bg.png
setxkbmap -model pc105 -layout us,ru -option grp:alt_shift_toggle
# dwmblocks &

while true; do
    # Log stderror to a file
    # dwm 2> ~/.dwm.log
    # no error loading
    /usr/local/bin/dwm >/dev/null 2>&1
done