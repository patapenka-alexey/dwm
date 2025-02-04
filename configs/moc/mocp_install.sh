#!/usr/bin/env bash

SCRIPT_DIR="$( dirname -- "$BASH_SOURCE"; )";

sudo apt-get install moc

if [ ! -d "/usr/share/moc/themes" ]; then
    sudo mkdir -p "/usr/share/moc/themes"
fi

sudo cp $SCRIPT_DIR/themes/* /usr/share/moc/themes

if [ ! -d "~/.moc/" ]; then
    mkdir ~/.moc/
fi
cp $SCRIPT_DIR/config ~/.moc/config
