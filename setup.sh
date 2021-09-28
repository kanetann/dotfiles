#!/bin/sh

set -ex

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install google-chrome
brew install google-japanese-ime
brew install spectacle
brew install dropbox
brew install visual-studio-code
brew install kindle

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
ln -sf ~/dotfiles/.rubocop.yml ~/.rubocop.yml
ln -sf ~/dotfiles/my.zsh-theme ~/.oh-my-zsh/custom/themes/my.zsh-theme
# TODO:import to iTerm2 color setting.
curl -O https://raw.githubusercontent.com/tombell/tender-iterm2/main/Tender.itermcolors

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# chsh
# ssh-keygen -t rsa -b 4096
# sudo update-alternatives --config editor
# sudo visudo
#
# git clone https://github.com/kanetann/dotfiles.git
# cd dotfiles
# sh setup.sh
#
# go get github.com/x-motemen/ghq
#
# sudo apt install rbenv
# mkdir -p "$(rbenv root)"/plugins
# git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
# rbenv install <version>
# rbenv global <version>
# gem instal bundler
#
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
# nvm install <version>
#
# sudo apt-get install mysql-server
# sudo mysql_secure_installation
# sudo mysql -uroot -p
# CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
# GRANT ALL PRIVILEGES ON *.* TO 'username'@'localhost';
# FLUSH PRIVILEGES;
# mysql -uusername -p
#
# sh docker-compose.sh
# git config --global user.email 'username@example.com'
# git config --global user.name 'username'
