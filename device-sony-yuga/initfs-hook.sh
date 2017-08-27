#!/bin/sh


chown system system /sys/class/leds/lm3533-blue/als_enable
chown system system /sys/class/leds/lm3533-blue/als_on_suspend_enable
chown system system /sys/class/leds/lm3533-blue/brightness
chown system system /sys/class/leds/lm3533-blue/enable_scaler
chown system system /sys/class/leds/lm3533-blue/fsc
chown system system /sys/class/leds/lm3533-blue/max_brightness
chown system system /sys/class/leds/lm3533-blue/pattern
chown system system /sys/class/leds/lm3533-blue/pwm

chown system system /sys/class/leds/lm3533-green/als_enable
chown system system /sys/class/leds/lm3533-green/als_on_suspend_enable
chown system system /sys/class/leds/lm3533-green/brightness
chown system system /sys/class/leds/lm3533-green/enable_scaler
chown system system /sys/class/leds/lm3533-green/fsc
chown system system /sys/class/leds/lm3533-green/max_brightness
chown system system /sys/class/leds/lm3533-green/pattern
chown system system /sys/class/leds/lm3533-green/pwm

chown system system /sys/class/leds/lm3533-red/als_enable
chown system system /sys/class/leds/lm3533-red/als_on_suspend_enable
chown system system /sys/class/leds/lm3533-red/brightness
chown system system /sys/class/leds/lm3533-red/enable_scaler
chown system system /sys/class/leds/lm3533-red/fsc
chown system system /sys/class/leds/lm3533-red/max_brightness
chown system system /sys/class/leds/lm3533-red/pattern
chown system system /sys/class/leds/lm3533-red/pwm

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
