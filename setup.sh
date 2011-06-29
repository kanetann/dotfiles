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

git clone git://github.com/gmarik/vundle.git ~/dotfiles/.vim/bundle/vundle

