#!/bin/bash

xrandr --output DP-1 --primary --mode 1600x900 --pos 0x0 --rotate normal
xinput set-prop pointer:"CX 2.4G Dual Mode Mouse" 'libinput Accel Speed' -0.60
xset r rate 300 60
xset s off
xset dpms 3700 0 3760
setxkbmap -option caps:swapescape

~/.fehbg &
picom --config ~/.config/picom/picom.conf &
~/.local/bin/playerctl-np.sh &
slstatus &
exec dwm
