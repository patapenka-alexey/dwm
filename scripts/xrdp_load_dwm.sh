#!/bin/sh

echo "dwm" > ~/.Xclients
chmod +x ~/.Xclients
echo "dwm" > ~/.xsession
sudo systemctl restart xrdp.service
