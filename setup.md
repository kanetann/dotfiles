# setup macos

```
brew install mas
mas install 497799835 # Xcode

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew cask install iterm2
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install alfred
brew cask install spectacle
brew cask install dash
brew cask install psequel
brew cask install mysqlworkbench
brew cask install microsoft-office
brew cask install marp

brew install vim
brew install ctags
brew install git
brew install tig
brew install golang
brew install ghq
brew install peco
brew install tmux
brew install reattach-to-user-namespace
brew install the_silver_searcher
brew install postgresql
brew install mysql
brew install redis
brew install heroku/brew/heroku

brew tap sanemat/font
brew install ricty
cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

brew install rbenv
rbenv install 2.5.1
rbenv global 2.5.1
rbenv rehash
gem install bundler
gem install rails

git clone git://github.com/kanetann/dotfiles.git ~/dotfiles
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

ln -sf ~/dotfiles/.agignore     ~/.agignore
ln -sf ~/dotfiles/.editorconfig ~/.editorconfig
ln -sf ~/dotfiles/.pryrc        ~/.pryrc
ln -sf ~/dotfiles/.tigrc        ~/.tigrc
ln -sf ~/dotfiles/.tmux.conf    ~/.tmux.conf
ln -sf ~/dotfiles/.vimrc        ~/.vimrc
ln -sf ~/dotfiles/.zshrc        ~/.zshrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# and open vim + :PlugInstall
```
