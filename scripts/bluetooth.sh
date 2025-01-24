#!/bin/bash -ex

# Bluetooth Headphones
# update MAC to yours
# to expose your MAC addresses try `bluetoothctl devices`
export BLU_DEVICE="FC:36:FE:25:18:08"
alias headon="bluetoothctl connect $BLU_DEVICE"
alias headoff="bluetoothctl disconnect $BLU_DEVICE"
alias headreset="bluetoothctl power off && bluetoothctl power on"