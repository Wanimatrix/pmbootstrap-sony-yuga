#!/bin/sh

# For debugging: check if we reach this hook
for i in 1 2 3 4 5
do
     echo 255 > /sys/class/leds/lm3533-green/brightness
     sleep 1
     echo 0 > /sys/class/leds/lm3533-green/brightness
     sleep 1
done
