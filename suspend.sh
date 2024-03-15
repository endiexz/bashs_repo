#!/bin/bash
file="/proc/acpi/button/lid/LID0/state"
if grep -q "closed" "$file";
then
	systemctl suspend
fi
