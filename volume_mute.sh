#!/bin/bash
lap_dev=$(pactl list sinks | grep -i Name: | sed -n 1p | awk '{print $2}')
blue_dev=$(pactl list sinks | grep -i Name: | sed -n 2p | awk '{print $2}')

if [ -z "$blue_dev" ]; then
    pactl set-sink-mute $lap_dev toggle
else
    pactl set-sink-mute $blue_dev toggle
fi
