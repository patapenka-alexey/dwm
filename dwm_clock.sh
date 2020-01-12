#!/usr/bin/env sh

# clock bar for dwm Window Manager

while true; do
	cur_time=$(date +"%H:%M")
	xsetroot -name "$cur_time"
	sleep 60
done
