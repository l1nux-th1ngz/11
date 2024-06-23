#!/bin/bash

sudo apt-get update

sudo apt-get install -y xcb
sudo apt-get install -y cmake
sudo apt-get install -y gcc
sudo apt-get install -y libgtk-3-dev 
sudo apt-get install -y ninja-build
sudo apt-get install -y libgtkmm-3.0-dev
sudo apt-get install -y libxcb-randr0
sudo apt-get install -y libxcb-randr0-dev
sudo apt-get install -y libxcb-util-dev
sudo apt-get install -y libxcb-util0-dev
sudo apt-get install -y libxcb-util1
sudo apt-get install -y libxcb-ewmh-dev
sudo apt-get install -y libxcb-xinerama0
sudo apt-get install -y libxcb-xinerama0-dev
sudo apt-get install -y libxcb-icccm4-dev
sudo apt-get install -y libxcb-keysyms1-dev
sudo apt-get install -y libxcb-cursor-dev
sudo apt-get install -y libxcb-shape0-dev
sudo apt-get install -y build-essential

chmod 777 two.sh
./two.sh
