#!/bin/sh

# ssh-keygen
ssh-keygen -t rsa

# rm files
rm -rf  ~/.vimrc
rm -rf  ~/.vimrc
rm -rf  ~/.vim
rm -rf ~/.zshrc
rm -rf ~/.zsh
rm -rf ~/.bashrc
rm -rf ~/.bash_profile
rm -rf ~/.ssh/config
rm -rf ~/.gitconfig
rm -rf ~/.proverc

# add symlinks 
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zsh ~/.zsh
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.ssh/config ~/.ssh/config
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.proverc ~/.proverc

# install vundle(plugin manager for Vim.)
#git clone git://github.com/gmarik/vundle.git ~/dotfiles/.vim/bundle/vundle
git clone git://github.com/Shougo/neobundle.vim ~/dotfiles/.vim/bundle/neobundle.vim
git config --global http.sslVerify false

#mkdir ~/dotfiles/.vim/dict
#cd ~/dotfiles/.vim/dict
#wget http://www.php.net/get/php_manual_ja.tar.gz/from/jp2.php.net/mirror
#tar zxvf php_manual_ja.tar.gz

# install vvm(vim version manager like rvm.)
#curl https://raw.github.com/kana/vim-version-manager/master/bin/vvm | python - setup
#cat << EOS >> $HOME/.zshrc 2>&1
#test -f ~/.vvm/etc/login && source ~/.vvm/etc/login
#EOS
#vvm install vimorg--v7-3-254
#vvm use vimorg--v7-3-254

# install oh-my-zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# install edit-server for chrome
#git clone https://github.com/gfxmonk/edit-server.git

# NeoBundleInstall
vim

# please see to below url. 
# Bundle 'git://github.com/Shougo/vimproc write to .vimrc.
# open vim and try :BundleInstall.
cd ~/.vim/bundle/vimproc

# if you using macosx, make -f make_mac.mak
make -f make_unix.mak
