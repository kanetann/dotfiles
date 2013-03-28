#!/bin/sh

sudo easy_install mercurial
hg clone https://vim.googlecode.com/hg/ vim
cd vim
hg update vim73
CONF_OPT_RUBY=--enable-rubyinterp make
src/vim --version
sudo make install
