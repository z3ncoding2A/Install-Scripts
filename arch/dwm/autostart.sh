#!/usr/bin/env bash

nitrogen --restore &
imwheel &
numlockx &
xfce4-power-manager --power manager &
xrandr -s 1360x768
xrdb .Xresources &

while true; do
	xsetroot -name "$(date)"

	sleep 1
done 












