#!/bin/sh

sudo killall berryclip_01.py 2>1 /dev/null
sleep 1
sudo /home/pi/imx_usb_loader_scripts/clear_gpio.py 2>1 /dev/null &

