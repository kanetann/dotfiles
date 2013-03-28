#!/bin/sh

curl https://raw.github.com/kana/vim-version-manager/master/bin/vvm | python - setup
cat << EOS >> $HOME/.zshrc 2>&1
test -f ~/.vvm/etc/login && source ~/.vvm/etc/login
EOS
vvm install vimorg--v7-3-254
vvm use vimorg--v7-3-254
