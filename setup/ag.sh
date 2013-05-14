#!/bin/sh

set -ex

cd ~/
sudo apt-get install -y automake pkg-config libpcre3-dev zlib1g-dev liblzma-dev
git clone git://github.com/ggreer/the_silver_searcher.git
cd the_silver_searcher
./build.sh
sudo make install
