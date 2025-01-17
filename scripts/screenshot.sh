#!/bin/bash

SCREENS_DIR="${HOME}/Images/Screenshots"

create_dir() {
    mkdir -p $SCREENS_DIR
}

case $1 in
    "r")
        create_dir
        grim -g "$(slurp)" "$SCREENS_DIR/$(date +%Y-%m-%d_3%H-%M-%S).png"
        ;;
    "a")
        create_dir
        grim "$SCREENS_DIR/$(date +%Y-%m-%d_%H-%M-%S).png"
        ;;
    *)
        exit 0
        ;;
esac
