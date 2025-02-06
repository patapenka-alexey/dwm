#!/usr/bin/env bash

SCRIPT_DIR="$( dirname -- "$BASH_SOURCE"; )";

RANGER_DIR="$HOME/.config/ranger/"
RANGER_SCHEMES_DIR="$HOME/.config/ranger/colorschemes/"

if [ ! -d "$RANGER_SCHEMES_DIR" ]; then
    mkdir -p $RANGER_SCHEMES_DIR
fi

cp $SCRIPT_DIR/one_dark.py $RANGER_SCHEMES_DIR/
cp $SCRIPT_DIR/rc.conf $RANGER_DIR/
