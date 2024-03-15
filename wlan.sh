#!/bin/bash
#

wlan_status=$(nmcli | awk -F '/[^-]wlp1s0|^[[:space:]]*wlp1s0: ' '{print $2}' | awk NF)

if [ "$wlan_status" != disconnected ]; then
	name=" $(nmcli | awk -F '/[^-]wlp1s0|^[[:space:]]*wlp1s0: ' '{print $2}' | awk NF | awk -F 'to ' '{print $2}')"
else
	name=" ."
fi
echo $name
