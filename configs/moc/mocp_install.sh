#!/usr/bin/env bash

sudo apt-get install moc

sudo mkdir -p /usr/share/moc/themes
sudo cp ./themes/* /usr/share/moc/themes

mkdir ~/.moc/
cp ./config ~/.moc/config
