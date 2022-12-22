#!/usr/bin/env bash

#$ xrandr
# Screen 0: minimum 320 x 200, current 2944 x 1200, maximum 16384 x 16384
# HDMI-1 connected primary 1920x1200+0+0 (normal left inverted right x axis y axis) 518mm x 324mm
# DP-1 connected 1024x768+1920+0 (normal left inverted right x axis y axis) 0mm x 0mm


#$ cvt -v 1280 1024 60
#$ cvt -v 1920 1200 60
# 1280x1024 59.89 Hz (CVT 1.31M4) hsync: 63.67 kHz; pclk: 109.00 MHz
# Modeline "1280x1024_60.00"  109.00  1280 1368 1496 1712  1024 1027 1034 1063 -hsync +vsync

# main display
xrandr --newmode "1920x1200_60.00"  193.25  1920 2056 2256 2592  1200 1203 1209 1245 -hsync +vsync
xrandr --addmode HDMI-1 "1920x1200_60.00"
xrandr --output HDMI-1 --mode "1920x1200_60.00"

#second display
xrandr --newmode "1280x1024_60.00"  109.00  1280 1368 1496 1712  1024 1027 1034 1063 -hsync +vsync
xrandr --addmode DP-1 "1280x1024_60.00"
xrandr --output DP-1 --mode "1280x1024_60.00"

# in case of 2 monitor it can help to set second one into right from first one.
#xrandr --output HDMI-1 --auto --right-of DP-1
