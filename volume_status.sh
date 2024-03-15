#!/bin/bash

lap_volume_states=$(pactl list sinks | awk '/Mute:/{gsub(/yes/,"mute"); gsub(/no/,"."); print $2}' | sed -n 1p)

blue_volume_states=$(pactl list sinks | awk '/Mute:/{gsub(/yes/,"mute"); gsub(/no/,"."); print $2}' | sed -n 2p)

if [ -z "$blue_volume_states" ]
then
    temp_volume_states=$lap_volume_states
else
    temp_volume_states=$blue_volume_states
fi

volume_perce=$(pactl list sinks | awk '/front-left:/{print $5}' | sed -n 1p)

bluetooth_perce=$(pactl list sinks | awk '/front-left:/{print $5}' | sed -n 2p)

if [ "$temp_volume_states" == "mute" ]; then
	result=""
else
    if [ -z "$bluetooth_perce" ]; then
        result=" ${volume_perce}"
    else
        result=" ${bluetooth_perce}"
    fi
fi
echo $result
