#!/bin/bash -ex

echo Pass 0 or 1 as script parameter to 'turn on' or 'turn off' the touchpad

id=$(xinput | grep Touchpad | awk '{print $5}' | sed "s/id=//")

xinput set-prop $id 'Device Enabled' $1
