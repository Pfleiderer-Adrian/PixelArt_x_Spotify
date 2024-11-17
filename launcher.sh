#!/bin/bash

if [ $PLAYER_EVENT = "playing" ] || [ $PLAYER_EVENT = "stopped" ] || [ $PLAYER_EVENT = "paused" ]; then
/usr/bin/PixelArt_x_Spotify/env/bin/source activate
python3 /usr/bin/PixelArt_x_Spotify/main.py $TRACK_ID $PLAYER_EVENT
fi
