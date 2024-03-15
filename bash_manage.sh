#!/bin/bash
file="/proc/acpi/button/lid/LID0/state"
pc_state=1
while :
do

	# screen manage
	if grep -q "closed" "$file";then

		if [ $pc_state -eq 1 ];then
			pc_state=0
			#xset dpms force off 
            #systemctl suspend
		fi	
	fi
	if grep -q "open" "$file";
	then
		if [ $pc_state -eq 0 ];then
			pc_state=1
			xset dpms force on
		fi
	fi



	sleep 1
done
