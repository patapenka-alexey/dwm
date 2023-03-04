#!/bin/bash -ex

DIR="$HOME/.local/share/fonts"

if [ ! -d "$DIR" ]; then
  echo Local fonts dir do not exist. Create $DIR
  mkdir "$DIR"
fi

cp ../fonts/consola*.ttf $DIR/

fc-cache -f -v

fc-list | grep "Consola"
