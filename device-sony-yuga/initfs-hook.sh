#!/bin/sh

# To setup USB?
echo Sony > /sys/class/android_usb/android0/f_rndis/manufacturer
echo 0FCE > /sys/class/android_usb/android0/f_rndis/vendorID
echo 1 > /sys/class/android_usb/android0/f_rndis/wceis

echo 0 > /sys/class/android_usb/android0/enable
echo 0FCE > /sys/class/android_usb/android0/idVendor
echo 7193 > /sys/class/android_usb/android0/idProduct
echo 239 > /sys/class/android_usb/android0/bDeviceClass
echo 2 > /sys/class/android_usb/android0/bDeviceSubClass
echo 1 > /sys/class/android_usb/android0/bDeviceProtocol
echo rndis > /sys/class/android_usb/android0/functions
echo 1 > /sys/class/android_usb/android0/enable

# For debugging: check if we reach this hook
for i in 1 2 3 4 5
do
     echo $i
     echo 255 > /sys/class/leds/lm3533-green/brightness
     sleep 1
     echo 0 > /sys/class/leds/lm3533-green/brightness
     sleep 1
done
