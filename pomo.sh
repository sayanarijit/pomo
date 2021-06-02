#!/usr/bin/env bash

arg1=$1
shift
args="$*"
                                               
sec=${arg1:?Example: pomo 15 Take a break}
msg="${args:?Example: pomo 15 Take a break}"
while true; do
    sleep "${sec:?}" && notify-send "${msg:?}"
done
