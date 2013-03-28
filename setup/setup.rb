#!/usr/bin/env ruby

# Command Line Toolsの手動インストール
# https://developer.apple.com/downloads/index.action

# install homebrew
p "ruby -e \"$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)\""

# install brew tools
tools = %w[rbenv ruby-build tree nkf wget v8 vim zsh git-core make gcc ctags curl hub tig tmux reattach-to-user-namespace the_silver_searcher]

tools.each do |t|
  if uname == "Darwin" then 
    if t == "git-core" then
      t = git
    end
    p "brew install #{t}"
  else
    p "sudo aptitude -y install #{t}"
  end
end

# git config
p "git config --global http.sslVerify false"

# add symlinks
dotfiles = %w[.vimrc .vim .zshrc .zsh .bashrc .bash_profile .ssh/config .gitconfig .proverc .gemrc .inputrc .pryrc]
dotfiles.each do |d|
  p "rm -rf ~/#{t}"
  p "ln -s ~/dotfiles/#{t} ~/#{t}"
end

# gems
gems = %w[rbenv-rehash rails vagrant virtualbox vagrant-snap awesome_print pry pry-doc refe2 heroku]
dotfiles.each do |d|
  p "gem install #{t}"
end

# install oh-my-zsh
p "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh"

# setup NeoBundle
p "git clone git://github.com/Shougo/neobundle.vim ~/dotfiles/.vim/bundle/neobundle.vim"
p "vim -N -u NONE -i NONE -V1 -e -s --cmd \"source ~/.vimrc\" --cmd NeoBundleInstall! --cmd qall!"

# setup vimproc
if uname == "Darwin" then 
  procfilename = "make_mac.mak"
else
  procfilename = "make_unix.mak"
end
p "cd ~/.vim/bundle/vimproc && make -f #{procfilename}"
