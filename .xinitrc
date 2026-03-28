#!/bin/bash
export PATH="$HOME/.local/bin:$PATH"

# xrandr --output DP-1 --primary --mode 1600x900 --pos 0x0 --rotate normal
xinput set-prop pointer:"Compx NK mouse NANO dongle" "libinput Accel Profile Enabled" 1, 0, 0
xinput set-prop pointer:"Compx NK mouse NANO dongle" "libinput Accel Speed" -0.3
xset m 1 0
xset r rate 300 60
xset s off
xset -dpms
setxkbmap -option caps:swapescape

~/.fehbg &
picom --config ~/.config/picom/picom.conf &
# ~/.local/bin/playerctl-np.sh &
slstatus &
exec dwm
