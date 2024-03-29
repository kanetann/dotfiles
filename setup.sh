#!/bin/sh

set -ex

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install vim
brew install ctags
brew install git
brew install tig
brew install tmux
brew install ripgrep
brew install fzf
brew install golang
brew install ghq
brew install node
brew install rbenv
brew install ruby-build
brew install fd

brew install --cask google-chrome
brew install --cask google-japanese-ime
brew install --cask rectangle
brew install --cask dropbox
brew install --cask visual-studio-code
brew install --cask kindle
brew install --cask iterm2
brew install --cask maccy
brew install --cask karabiner-elements
brew install --cask dash

ghq get https://github.com/edihbrandon/RictyDiminished.git


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -sf ~/dotfiles/.agignore ~/.agignore
ln -sf ~/dotfiles/.editorconfig ~/.editorconfig
ln -sf ~/dotfiles/.pryrc ~/.pryrc
ln -sf ~/dotfiles/.tigrc ~/.tigrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vimrc ~/.config/nvim/init.vim
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.rubocop.yml ~/.rubocop.yml
ln -sf ~/dotfiles/my.zsh-theme ~/.oh-my-zsh/custom/themes/my.zsh-theme

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

# git clone https://github.com/amatsuda/gem-src.git "$(rbenv root)/plugins/gem-src"
# mkdir ~/src
# echo "gemsrc_clone_root: ~/src" >> ~/.gemrc
# echo "gemsrc_use_ghq: true" >> ~/.gemrc

# gem install bundler
# gem install solargraph
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
