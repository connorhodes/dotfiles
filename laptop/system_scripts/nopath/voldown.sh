#!/bin/sh
# script to alter volume using pulseaudio and refresh the top bar of spectrwm
# Connor Rhodes (connorrhodes.com)

amixer set Master 5%-
#pactl set-sink-volume @DEFAULT_SINK@ -5% #volume not limited to 100% with pulse
kill $(pstree -lp | grep -- -baraction.sh | sed "s/.*sleep//" | sed "s/(//" | sed "s/)//")
