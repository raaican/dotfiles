#!/bin/sh
xrandr --output DVI-I-1 --mode 1368x768_60.00 --pos 0x0 --rotate normal &
xrandr --output DP-1 --primary --mode 1600x900 --pos 1368x0 --rotate normal &
xinput set-prop 'C 2.4G Receiver Mouse' 'libinput Accel Speed' -0.60 &
xset r rate 300 60 &
xset s off &
xset dpms 3700 0 3760 &
~/.fehbg &
picom --config ~/.config/picom/picom.conf &
slstatus &
exec dwm
# xinput set-prop 'Cooler Master Technology Inc. MM711 Gaming Mouse' 'libinput Accel Speed' -0.60 &
# picom --config ~/.config/picom/picom.conf --animations --fade-in --vsync -b &
