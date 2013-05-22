#!/bin/sh 

set -ex

mkdir -p ~/dotfiles/refe
cd ~/dotfiles/refe
curl -O http://doc.ruby-lang.org/archives/201208/ruby-refm-1.9.3-dynamic-20120829.tar.gz
tar zxvf ruby-refm-1.9.3-dynamic-20120829.tar.gz
