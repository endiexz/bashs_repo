#!/bin/bash

battv=$(cat /sys/class/power_supply/BATT/capacity)
batt_status=$(cat /sys/class/power_supply/BATT/status)
if [ $battv -lt 10 ]; then
	result="  ${battv}%"
elif [ $battv -lt 30 ]; then
	result="  ${battv}%"
elif [ $battv -lt 60 ]; then
	result="  ${battv}%"
elif [ $battv -lt 90 ]; then
	result="  ${battv}%" 
else
	result="  ${battv}%"
fi

if [ "$batt_status" == "Charging" ]; then
	result="${result}"
fi

echo $result
