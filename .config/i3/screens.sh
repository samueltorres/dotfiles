#! /bin/bash

INT_DP="eDP"
EXT_DP=""HDMI-A-0

INT_RES="1920x1080"
EXT_RES="3840x2160"

if xrandr | grep "$INT_DP disconnected"; then
    xrandr --output $EXT_DP --off --output $INT_DP --auto --mode $INT_RES 
elif cat /proc/acpi/button/lid/LID/state | grep "closed"; then
    xrandr --output $INT_DP --off --output $EXT_DP --primary --mode $EXT_RES
else
    xrandr --output $EXT_DP --primary --mode $EXT_RES --output $INT_DP --mode $INT_RES --pos 0x"2160"
fi
