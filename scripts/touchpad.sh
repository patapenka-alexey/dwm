#!/bin/bash -ex

id=$(xinput | grep Touchpad | awk '{print $5}' | sed "s/id=//")

xinput set-prop $id 'Device Enabled' 0
