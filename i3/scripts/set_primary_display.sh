#!/bin/bash

# Get the connection status of HDMI monitor
HDMI_CONNECTED=$(xrandr | grep "HDMI-1 connected")
if [ -n "$HDMI_CONNECTED" ]; then
    # HDMI monitor is connected
    xrandr --output HDMI-1 --primary --auto --above eDP-1
    xrandr --output eDP-1 --off
else
    # HDMI monitor is not connected, use laptop's built-in display
    xrandr --output eDP-1 --primary --auto
    xrandr --output HDMI-1 --off
fi

