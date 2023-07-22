#!/bin/bash -ex

# Lenovo ThinkPad Compact USB Keyboard with TrackPoint      id=12   [slave  pointer  (2)]

device=$(xinput | grep TrackPoint)

for var in $device
do
    var_id=${var:0:2}
    if [ "x$var_id" = "xid" ]; then
        device_number=${var:3:2}
        echo TrackPoint device number: $device_number
        xinput --set-prop $device_number 'libinput Accel Speed' -0.35
        echo Set 'libinput Accel Speed' to '-0.35'
        break
    fi
done