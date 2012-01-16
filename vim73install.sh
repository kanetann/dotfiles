#!/bin/sh

mkdir ~/vim
cd ~/vim
wget http://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2
tar xjvf vim-7.3.tar.bz2
cd vim73
mkdir patches
cd patches/
curl -O 'http://ftp.vim.org/pub/vim/patches/7.3/7.3.[001-401]'
cd ..
cat patches/* | patch -p0
./configure --prefix=/usr/local/vim7 --enable-multibyte --enable-rubyinterp --enable-gpm --enable-cscope --with-features=huge --enable-fontset --disable-gui --without-x --disable-xim --enable-pythoninterp --enable-perlinterp
make
sudo make install
