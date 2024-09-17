#!/usr/bin/env bash

TILIX_SCHEMES_DIR="$HOME/.config/tilix/schemes/"

if [ ! -d "$TILIX_SCHEMES_DIR" ]; then
    mkdir -p $TILIX_SCHEMES_DIR
fi

cp ./one-dark.json $TILIX_SCHEMES_DIR/

echo "Please set 'One Dark' scheme in the Default profile settings!"