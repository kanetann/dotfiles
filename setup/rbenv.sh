#!/bin/sh

set -ex

RUBY_VERSION="1.9.3-p327"

rm -rf ~/.rbenv
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv

mkdir -p ~/.rbenv/plugins
cd ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git

rbenv install $RUBY_VERSION
rbenv global $RUBY_VERSION
rbenv rehash
