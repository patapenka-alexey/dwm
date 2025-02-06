#!/usr/bin/env bash

# to highlight code in internal viewer
sudo apt-get install highlight

# Ranger configures highlighting in `scope.sh`.
# To use a specific theme, the HIGHLIGHT_STYLE variable should be set, for example:
# /usr/share/highlight/themes/
# ekvoli zmrok monokai candy base16/onedark base16/gruvbox-dark-medium
# export HIGHLIGHT_STYLE=ekvoli


SCRIPT_DIR="$( dirname -- "$BASH_SOURCE"; )";

RANGER_DIR="$HOME/.config/ranger/"
RANGER_SCHEMES_DIR="$HOME/.config/ranger/colorschemes/"

if [ ! -d "$RANGER_SCHEMES_DIR" ]; then
    mkdir -p $RANGER_SCHEMES_DIR
fi

cp $SCRIPT_DIR/one_dark.py $RANGER_SCHEMES_DIR/
cp $SCRIPT_DIR/rc.conf $RANGER_DIR/
