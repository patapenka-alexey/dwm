#!/usr/bin/env bash

# feh --bs-scale ~/Pictures/bg.png
setxkbmap us,ru -option 'grp:caps_toogle'
dwmblocks &

while true; do
    # Log stderror to a file
    # dwm 2> ~/.dwm.log
    # no error loading
    dwm >/dev/null 2>&1
done