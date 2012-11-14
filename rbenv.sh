#!/bin/sh

set -ex

RUBY_VERSION="1.9.3-p327"

rm -rf ~/.rbenv
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv

mkdir -p ~/.rbenv/plugins
cd ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git

if [ `uname` == "Darwin" ]; then
  CONFIGURE_OPTS="--with-openssl-dir=/usr/local/opt/openssl --with-readline-dir=/usr/local/opt/readline" rbenv install $RUBY_VERSION
fi
if [ `uname` == "Linux" ]; then
  rbenv install $RUBY_VERSION
fi
rbenv global $RUBY_VERSION
rbenv rehash
