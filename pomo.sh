#!/usr/bin/env bash

arg1=$1
shift
args="$*"
                                               
min=${arg1:?Example: pomo 15 Take a break}
sec=$((min * 60))
msg="${args:?Example: pomo 15 Take a break}"
while true; do
    sleep "${sec:?}" && echo "${msg:?}" && notify-send -u critical -t 0 -a pomo "${msg:?}"
done
