#!/bin/sh

# Script to prepare raspbian

cd /home/pi
rm -rf imx_usb_loader
export GIT_SSL_NO_VERIFY=1
git clone https://github.com/boundarydevices/imx_usb_loader.git
cd imx_usb_loader/
sudo apt-get install libusb-1.0-0-dev
make
cd ../imx_usb_loader_scripts/
chmod +x *.sh
sudo -rf cp autostart.sh /etc/init.d/s90startinstall
sudo update-rc.d s90startinstall defaults
./get_artifacts.sh
cp -rf mx6_usb_work.conf ../imx_usb_loader
cp -rf rootfs.cpio.uboot ../imx_usb_loader
cp -rf u-boot.bin ../imx_usb_loader
cp -rf uImage ../imx_usb_loader
./prepare_bellyclip.sh
#sudo reboot
