#! /bin/bash

set +e

killall waybar
waybar

wlr-randr --output DP-1 --pos 1701,-270
wlr-randr --output DP-1 --mode 1280x1024@75.025002Hz
