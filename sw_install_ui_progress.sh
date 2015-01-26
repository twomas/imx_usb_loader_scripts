#!/bin/sh

while true
do
	sudo /home/pi/imx_usb_loader_scripts/led_sequence.py 2>1 /dev/null &
   	sleep 2
    sudo killall berryclip_01.py 2>1 /dev/null
    sleep 1
done

