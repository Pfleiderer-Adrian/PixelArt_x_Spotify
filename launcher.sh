#!/bin/bash

if [ $PLAYER_EVENT = "playing" ] || [ $PLAYER_EVENT = "stopped" ] || [ $PLAYER_EVENT = "paused" ]; then
/usr/bin/Pixoo_Album_Art/env/bin/source activate
python3 /usr/bin/Pixoo_Album_Art/main.py $TRACK_ID $PLAYER_EVENT
fi
