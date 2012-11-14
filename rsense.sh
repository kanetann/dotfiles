#!/bin/sh

set -ex

if [ `uname` == "Darwin" ]; then
  ls
fi
if [ `uname` == "Linux" ]; then
  sudo aptitude install openjdk-6-jdk
fi

cd ~/dotfiles
wget http://cx4a.org/pub/rsense/rsense-0.3.zip
unzip rsense-0.3.zip 
rm -rf rsense-0.3.zip
chmod +x rsense-0.3/bin/rsense
ruby rsense-0.3/etc/config.rb > ~/.rsense
rsense-0.3/bin/rsense version
