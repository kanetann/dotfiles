#!/bin/sh

# add symlinks 
ln -s ~/dotfiles/.vimperatorrc ~/.vimperatorrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zsh ~/.zsh
ln -s ~/dotfiles/.screenrc ~/.screenrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.ssh/config ~/.ssh/config
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

git clone git://github.com/gmarik/vundle.git ~/dotfiles/.vim/bundle/vundle
git config --global http.sslVerify false

mkdir ~/dotfiles/.vim/dict
cd ~/dotfiles/.vim/dict
wget http://www.php.net/get/php_manual_ja.tar.gz/from/jp2.php.net/mirror
tar zxvf php_manual_ja.tar.gz

