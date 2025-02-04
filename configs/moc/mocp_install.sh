#!/usr/bin/env bash

SCRIPT_DIR="$( dirname -- "$BASH_SOURCE"; )";

sudo apt-get install moc

sudo mkdir -p /usr/share/moc/themes
sudo cp $SCRIPT_DIR/themes/* /usr/share/moc/themes

mkdir ~/.moc/
cp $SCRIPT_DIR/config ~/.moc/config
