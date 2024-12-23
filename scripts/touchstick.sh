#!/bin/bash -ex

# Lenovo ThinkPad Compact USB Keyboard with TrackPoint      id=12   [slave  pointer  (2)]

echo Pass value of the Speed as script parameter, or default value '-0.35' will be applied

devices=$(xinput | grep -e 'TrackPoint' -e 'Keyboard Mouse')

value=-0.35

if [ "x$1" != "x" ]; then
    value=$1
fi
echo Apply value "$value"

for device in $devices
do
    device_id=${device:0:2}
    if [ "x$device_id" = "xid" ]; then
        device_number=${device:3:2}
        echo $device device number: $device_number
        xinput --set-prop $device_number 'libinput Accel Speed' $value
        echo Set 'libinput Accel Speed' to $value
        continue
    fi
done

# for Tex Shinobi it could be "USB-HID Keyboard Mouse"
