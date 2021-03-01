#!/bin/sh

set -ex

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install google-chrome
brew install google-japanese-ime
brew install spectacle
brew install dropbox
brew install visual-studio-code

brew install vim
brew install ctags
brew install git
brew install tig
brew install tmux
brew install ripgrep
brew install fzf
brew install golang
brew install ghq

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

ln -sf ~/dotfiles/.agignore ~/.agignore
ln -sf ~/dotfiles/.editorconfig ~/.editorconfig
ln -sf ~/dotfiles/.pryrc ~/.pryrc
ln -sf ~/dotfiles/.tigrc ~/.tigrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
