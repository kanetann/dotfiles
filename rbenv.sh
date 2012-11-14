#!/bin/sh

# sudo apt-get update
# sudo apt-get install build-essential zlib1g-dev libssl-dev

git clone git://github.com/sstephenson/rbenv.git .rbenv

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

mkdir -p ~/.rbenv/plugins
cd ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git
rbenv install 1.9.3-p327
rbenv global 1.9.3-p327
rbenv rehash
