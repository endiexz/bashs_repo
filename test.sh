#!/bin/bash

for i in {1..10}
do
	cat /proc/acpi/button/lid/LID0/state
	sleep 1
done
