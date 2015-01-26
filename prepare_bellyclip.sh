#!/bin/sh

# Script to get berry clip

rm -rf berryclip
mkdir -p berryclip
cd berryclip
wget --no-check-certificate https://bitbucket.org/MattHawkinsUK/rpispy-berryclip/get/master.tar.gz
tar -xvf master.tar.gz --strip 1
sudo chmod +x *.py
