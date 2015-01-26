#!/bin/sh

rm -rf MfgTool_prep-system.zip
wget http://jenkins/view/caligula/view/AppBoardv3/job/caligula-prep-system-mfg-AppBoardv3/lastSuccessfulBuild/artifact/MfgTool_prep-system.zip
rm -rf temp
mkdir -p temp
unzip MfgTool_prep-system.zip -d temp
mv temp/Profiles/prep-system/OS\ Firmware/uImage .
mv temp/Profiles/prep-system/OS\ Firmware/rootfs.cpio.uboot .
mv temp/Profiles/prep-system/OS\ Firmware/u-boot.bin .
mv temp/versions.txt .

