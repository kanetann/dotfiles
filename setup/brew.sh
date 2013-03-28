#!/bin/sh

set -ex

ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

brew install git   
brew install wget
brew install ctags    
brew install nkf    
brew install tree

# for ruby
brew install autoconf    
brew install gettext     
brew install openssl     
brew link openssl
brew install readline  
brew link readline
brew install libyaml   
