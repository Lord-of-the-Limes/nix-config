#!/bin/bash

# set some hardware settings for Thinkpad T430s
# (requires both 'xinput' and 'libinput' to be installed)
# change trackpoint sensitivity
xinput set-prop 'TPPS/2 IBM TrackPoint' \
                'libinput Accel Profile Enabled' 0 1
# change two finger scrolling behavior
xinput set-prop 'SynPS/2 Synaptics TouchPadi' \
                'libinput Natural Scrolling Enabled Default' 1

# set wallpaper
hsetroot -solid '#888888'

# change default cursor shape
# (normally the cursor is a large 'X')
xsetroot -cursor_name arrow

# start hot key daemon
sxhkd &

# start window manager
# exec awesome
exec bspwm
