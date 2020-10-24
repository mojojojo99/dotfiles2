#!/bin/sh
result=$(xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' ' | awk '{print $1 + 0.1}')

echo $result

xrandr --output eDP-1 --brightness $result
