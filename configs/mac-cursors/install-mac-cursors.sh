#! /bin/sh
set -e

sudo update-alternatives --install x-cursor-theme \
     /usr/share/icons/mac-cursors/cursor.theme

sudo update-alternatives --auto x-cursor-theme

sudo rm -rf /usr/share/icons/mac-cursors

# or copy mac-cursor dir to /usr/share/icons/
# sudo cp -r ./mac-cursors /usr/share/icons/mac-cursors
# and update cache
# sudo update-icon-caches /usr/share/icons/*