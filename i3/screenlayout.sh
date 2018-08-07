#!/bin/bash
if glxinfo | grep "server glx vendor string: NVIDIA"; then
    intern=eDP-1-1
    extern=HDMI-1-2
    if xrandr | grep "$extern disconnected"; then
        xrandr --output "$extern" --off --output "$intern" --auto
    else
        xrandr --output "$intern" --off --output "$extern" --mode ultrawide60 
    fi
else
    intern=eDP1
    extern=HDMI2
    if xrandr | grep "$extern disconnected"; then
        xrandr --output "$extern" --off --output "$intern" --auto
    else
        xrandr --output "$intern" --off --output "$extern" --mode ultrawide60 
    fi
fi
