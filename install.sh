#!/bin/bash

esp_idf_version="$1"

echo -e "\n## Installing prerequisites"

sudo DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata

sudo apt-get install -y git wget flex bison gperf python3 python3-pip python3-setuptools python-is-python3 python3-libusb1 cmake ninja-build ccache libffi-dev libssl-dev dfu-util

mkdir ~/esp

# install esp idf
cd ~/esp
git clone --recursive https://github.com/espressif/esp-idf.git
cd ~/esp/esp-idf
./install.sh

# install esp adf
cd ~/esp
git clone  --recursive https://github.com/espressif/esp-adf.git
