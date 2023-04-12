#!/bin/bash

# Define the location of the PID file
pidfile="$HOME/.config/i3/screen_record_pid"

# Check if a recording is already in progress
if [ -f "$pidfile" ]; then
    # If a recording is in progress, stop it
    kill "$(cat "$pidfile")"
    rm "$pidfile"
else
    # If no recording is in progress, start a new one
    ffmpeg -f x11grab -framerate 15 -video_size 1920x1080 -i $DISPLAY -c:v libx264 -preset ultrafast "$(date '+%Y-%m-%d_%H-%M-%S')".mp4 &
    # Save the PID of the ffmpeg process to the PID file
    echo $! > "$pidfile"
fi
