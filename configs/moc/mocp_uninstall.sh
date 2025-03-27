#!/usr/bin/env bash

sudo apt-get remove moc-ffmpeg-plugin
sudo apt-get remove moc

sudo rm -rf /usr/share/moc/themes
sudo rm -rf /usr/share/moc

rm -rf $HOME/.moc/
