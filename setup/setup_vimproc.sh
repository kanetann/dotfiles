#!/bin/sh

# please see to below url. 
# Bundle 'git://github.com/Shougo/vimproc write to .vimrc.
# open vim and try :BundleInstall.
cd .vim/bundle/vimproc

# if you using macosx, make -f make_mac.mak
make -f make_gcc.mak
