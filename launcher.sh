#!/bin/bash

if [ $PLAYER_EVENT = "playing" ] || [ $PLAYER_EVENT = "stopped" ] || [ $PLAYER_EVENT = "paused" ]; then
source /usr/bin/PixelArt_x_Spotify/env/bin/activate
python3 /usr/bin/PixelArt_x_Spotify/main.py $TRACK_ID $PLAYER_EVENT
fi
