#!/bin/sh
xrandr --output DVI-I-1 --mode 1368x768_60.00 --pos 0x0 --rotate normal &
xrandr --output DP-1 --primary --mode 1600x900 --pos 1368x0 --rotate normal &
xinput set-prop 'Cooler Master Technology Inc. MM711 Gaming Mouse' 'libinput Accel Speed' -0.60 &
xset r rate 300 60 &
~/.fehbg
~/dwm-bar/dwm_bar.sh &
picom --config ~/.config/picom/picom.conf &

exec dwm
