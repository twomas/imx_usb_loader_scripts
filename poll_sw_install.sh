#!/bin/sh

# Script to poll sw_install

/home/pi/imx_usb_loader_scripts/sw_install_ui_start.sh &
sudo killall clear_gpio_button.py 2>1 /dev/null
sudo /home/pi/imx_usb_loader_scripts/clear_gpio_button.py 2>1 /dev/null &

while true
do
	result=$(lsusb | grep -e "ID 15a2:0061 Freescale Semiconductor")

	if [ $? -ne 0 ]; then
		printf "Device is unplugged\n"
	else
        /home/pi/imx_usb_loader_scripts/sw_install_ui_progress.sh &
        /home/pi/imx_usb_loader_scripts/sw_install.sh
        /home/pi/imx_usb_loader_scripts/sw_install_ui_ready.sh
	fi

   	sleep 5
done

