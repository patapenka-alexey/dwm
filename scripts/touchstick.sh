#!/bin/bash -ex

id=$(xinput | grep TrackPoint | awk '{print $5}' | sed "s/id=//")

xinput --set-prop $id 'libinput Accel Speed' -0.35
