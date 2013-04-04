#!/usr/bin/env ruby


def execute(cmd)
  p `#{cmd}`
end

uname = `uname`

if uname == "Darwin" then 
  # Command Line Toolsの手動インストール https://developer.apple.com/downloads/index.action
  # install homebrew
  execute "ruby -e \"$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)\""
end

# install brew tools
tools = %w{rbenv ruby-build tree nkf wget v8 vim zsh git make gcc ctags curl tig tmux reattach-to-user-namespace the_silver_searcher}

tools.each do |k|
  if uname == "Darwin" then 
    k = "git-core" if k == "git"
    execute "brew install #{k}"
  else
    next if k == "reattach-to-user-namespace"
    next if k == "v8"
    execute "sudo aptitude -y install #{k}"
  end
end

# git config
execute "git config --global http.sslVerify false"

# add symlinks
dotfiles = %w{.vimrc .vim .zshrc .zsh .bashrc .bash_profile .ssh/config .gitconfig .proverc .gemrc .inputrc .pryrc}
dotfiles.each do |k|
  execute "rm -rf ~/#{k}"
  execute "ln -s ~/dotfiles/#{k} ~/#{k}"
end

# gems
gems = %w{rbenv-rehash rails vagrant virtualbox vagrant-snap awesome_print pry pry-doc refe2 heroku}
dotfiles.each do |k|
  execute "gem install #{k}"
end

# install oh-my-zsh
execute "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh"

# setup NeoBundle
execute "git clone git://github.com/Shougo/neobundle.vim ~/dotfiles/.vim/bundle/neobundle.vim"
execute "vim -N -u NONE -i NONE -V1 -e -s --cmd \"source ~/.vimrc\" --cmd NeoBundleInstall! --cmd qall!"

# setup vimproc
if uname == "Darwin" then 
  procfilename = "make_mac.mak"
else
  procfilename = "make_unix.mak"
end
execute "cd ~/.vim/bundle/vimproc && make -f #{procfilename}"

