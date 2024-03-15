#bluetooth info

bluetooth_battery=$(bluetoothctl info | grep "Battery" | awk -F "[()]" '{print $2}')

bluetooth_name=$(bluetoothctl info | grep "Name" | awk -F: '{print $2}')

if [ -n "$bluetooth_name" ]
then
    echo $bluetooth_battery%
fi

