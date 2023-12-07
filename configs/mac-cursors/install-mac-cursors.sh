#! /bin/sh
set -e

sudo update-alternatives --remove x-cursor-theme \
     /usr/share/icons/mac-cursors/cursor.theme

sudo update-alternatives --auto x-cursor-theme

sudo rm -rf /usr/share/icons/mac-cursors
