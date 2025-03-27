#!/usr/bin/env bash

SCRIPT_DIR="$( dirname -- "$BASH_SOURCE"; )";

MOC="$( dpkg -l | grep moc )"
if [[ "x$MOC" == "x" ]]; then
    sudo apt-get install moc
fi

MOC_FFMPEG="$( dpkg -l | grep 'moc-ffmpeg-plugin' )"
if [[ "x$MOC_FFMPEG" == "x" ]]; then
    sudo apt-get install moc-ffmpeg-plugin
fi

if [ ! -d "$HOME/.moc/" ]; then
    mkdir $HOME/.moc/
fi
cp $SCRIPT_DIR/config $HOME/.moc/config

if [ ! -d "/usr/share/moc/themes" ]; then
    sudo mkdir -p "/usr/share/moc/themes"
fi
sudo cp $SCRIPT_DIR/themes/* /usr/share/moc/themes

if [ ! -d "$HOME/.moc/eqsets" ]; then
    mkdir -p "$HOME/.moc/eqsets"
fi
sudo cp $SCRIPT_DIR/eq/* $HOME/.moc/eqsets
