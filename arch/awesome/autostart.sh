#!/usr/bin/sh 


start() {
  [ -z "$(pidof -x $1)" ] && ${2:-$1} &
}

start numlockx &
start volumeicon &
start imwheel &
xfce4-power-manager --power manager 


