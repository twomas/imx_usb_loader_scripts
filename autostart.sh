#!/bin/sh

# Script to poll sw install

case "$1" in
	start)
		sudo /home/pi/imx_usb_loader_scripts/poll_sw_install.sh &
		;;

	stop)
		;;

	restart)
		;;
	*)
		echo "Usage: $0 start|stop|restart"
		;;
esac
