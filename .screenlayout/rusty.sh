#!/bin/sh
xrandr --output DP-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal --scale 0.75x0.7 \
       --output DVI-D-1 --mode 1920x1200 --pos 2900x540 --rotate normal --scale 1x1 \
       --output DVI-D-2 --mode 1920x1080 --pos 5020x300 --rotate right --scale 1x1 \
       --output HDMI-1 --off
