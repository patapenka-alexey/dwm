#!/usr/bin/env bash

SCRIPT_DIR="$( dirname -- "$BASH_SOURCE"; )";

DIR="$HOME/.local/share/fonts"

if [ ! -d "$DIR" ]; then
  echo Local fonts dir do not exist. Create $DIR
  mkdir -p "$DIR"
fi

cp $SCRIPT_DIR/consola*.ttf $DIR/

fc-cache -f -v

fc-list | grep "Consola"
