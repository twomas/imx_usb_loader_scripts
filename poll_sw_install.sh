#!/bin/sh

# Script to poll sw_install

while true
do
	result=$(lsusb | grep -e "ID 15a2:0061 Freescale Semiconductor")

	if [ $? -ne 0 ]; then
		printf "Device is unplugged\n"
	else
		#cd $HOME/imx_usb_loader_scripts/
	   	/home/pi/imx_usb_loader_scripts/sw_install.sh
	fi

   	sleep 5
done

