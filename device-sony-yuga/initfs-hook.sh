#!/bin/sh

for i in 1 2 3 4 5
do
     echo $i
     echo 255 > /sys/class/leds/lm3533-green/brightness
     sleep 1
     echo 0 > /sys/class/leds/lm3533-green/brightness
     sleep 1
done

# set usb properties
# echo 0 > /sys/class/android_usb/android0/enable
# echo Sony > /sys/class/android_usb/android0/iManufacturer
# echo "Xperia Z" > /sys/class/android_usb/android0/iProduct
# echo 1 > /sys/class/android_usb/android0/enable

# start the usb enumeration process from userspace
# echo 1 > /sys/devices/platform/ab8500-i2c.0/ab8500-usb.0/boot_time_device
