#!/bin/bash -ex

# Lenovo ThinkPad Compact USB Keyboard with TrackPoint      id=12   [slave  pointer  (2)]

echo Pass value of the Speed as script parameter, or default value '-0.35' will be applied

device=$(xinput | grep TrackPoint)

value=-0.35

if [ "x$1" != "x" ]; then
    value=$1
fi
echo Apply value "$value"

for var in $device
do
    var_id=${var:0:2}
    if [ "x$var_id" = "xid" ]; then
        device_number=${var:3:2}
        echo TrackPoint device number: $device_number
        xinput --set-prop $device_number 'libinput Accel Speed' $value
        echo Set 'libinput Accel Speed' to $value
        break
    fi
done