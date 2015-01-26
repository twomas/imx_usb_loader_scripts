#!/bin/sh

sleep 80
sudo killall sw_install_ui_progress.sh 2>1 /dev/null
sleep 1
sudo /home/pi/imx_usb_loader_scripts/berryclip/berryclip_01.py 2>1 /dev/null &

