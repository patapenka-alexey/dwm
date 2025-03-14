#!/usr/bin/env bash

SCRIPT_DIR="$( dirname -- "$BASH_SOURCE"; )";

SENSORS="$( dpkg -l | grep lm-sensors )"
if [[ "x$SENSORS" == "x" ]]; then
    sudo apt-get install lm-sensors
fi
THINKFAN="$( dpkg -l | grep thinkfan )"
if [[ "x$THINKFAN" == "x" ]]; then
    sudo apt-get install thinkfan
fi

#------------------------------------------------------------------------------
CONF_FILE="$SCRIPT_DIR/thinkfan.conf.tmp"

echo "tp_fan /proc/acpi/ibm/fan" > $CONF_FILE
echo "" >> $CONF_FILE

#------------------------------------------------------------------------------
# configure thermal devices
# the difference between PCs - number of the devices into
# /sys/devices/platform/coretemp.0/hwmon/hwmonX
HWMON_PATH="/sys/devices/platform/coretemp.0/hwmon"
HWMON_DEVICE="$( ls $HWMON_PATH/ )"

for device in $( ls $HWMON_PATH/$HWMON_DEVICE/ | grep input )
do
    echo "hwmon $HWMON_PATH/$HWMON_DEVICE/$device" >> $CONF_FILE
done

#------------------------------------------------------------------------------
# configure fan mode
FORCE="
(0,	0,	50)
(1,	48,	55)
(2,	53,	60)
(3,	58,	65)
(4,	63,	70)
(5,	68,	75)
(7,	73,	32767)
"

QUITE="
(0,	0,	60)
(1,	57,	65)
(2,	60,	70)
(3,	65,	75)
(4,	70,	77)
(5,	75,	83)
(7,	80,	32767)
"

if [[ "x$1" == "xforce" ]]; then
    echo """$FORCE""" >> $CONF_FILE
elif [[ "x$1" == "xquite" ]]; then
    echo """$QUITE""" >> $CONF_FILE
else
    echo "usage: thinkfan.sh [force|quite]"
    rm $CONF_FILE
    exit 1
fi

#------------------------------------------------------------------------------
sudo cp $CONF_FILE /etc/thinkfan.conf
sudo systemctl restart thinkfan.service

rm $CONF_FILE
