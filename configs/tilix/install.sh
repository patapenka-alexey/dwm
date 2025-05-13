#!/usr/bin/env bash

SCRIPT_DIR="$( dirname -- "$BASH_SOURCE"; )";

TILIX="$( dpkg -l | grep tilix )"
if [[ "x$TILIX" == "x" ]]; then
    sudo apt-get install tilix
fi

# load settings
dconf load /com/gexperts/Tilix/ < $SCRIPT_DIR/tilix.dconf
# save settings
# dconf dump /com/gexperts/Tilix/ > tilix.dconf

TILIX_SCHEMES_DIR="$HOME/.config/tilix/schemes/"

if [ ! -d "$TILIX_SCHEMES_DIR" ]; then
    mkdir -p $TILIX_SCHEMES_DIR
fi

cp $SCRIPT_DIR/one-dark.json $TILIX_SCHEMES_DIR/

echo "Please set 'One Dark' scheme in the Default profile settings!"
