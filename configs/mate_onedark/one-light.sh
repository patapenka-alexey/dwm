#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
COLOR_01="#000000"
COLOR_02="#DA3E39"
COLOR_03="#41933E"
COLOR_04="#855504"
COLOR_05="#315EEE"
COLOR_06="#930092"
COLOR_07="#0E6FAD"
COLOR_08="#8E8F96"

COLOR_09="#2A2B32"
COLOR_10="#DA3E39"
COLOR_11="#41933E"
COLOR_12="#855504"
COLOR_13="#315EEE"
COLOR_14="#930092"
COLOR_15="#0E6FAD"
COLOR_16="#FFFEFE"

BACKGROUND_COLOR="#F8F8F8"
FOREGROUND_COLOR="#2A2B32"
CURSOR_COLOR="#2A2B32"
PROFILE_NAME="One Light"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# =============================================================== #
PALETTE_VALUE="'$COLOR_01:$COLOR_02:$COLOR_03:$COLOR_04:$COLOR_05:$COLOR_06:$COLOR_07:$COLOR_08:$COLOR_09:$COLOR_10:$COLOR_11:$COLOR_12:$COLOR_13:$COLOR_14:$COLOR_15:$COLOR_16'" 
dconf write /org/mate/terminal/profiles/default/palette $PALETTE_VALUE
dconf write /org/mate/terminal/profiles/default/foreground-color \'$FOREGROUND_COLOR\'
dconf write /org/mate/terminal/profiles/default/background-color \'$BACKGROUND_COLOR\'
