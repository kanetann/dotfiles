#!/usr/bin/env ruby

# try, below command.
# wget --no-check-certificate -O - https://raw.github.com/kanetann/dotfiles/master/setup/setup.rb | ruby

def execute(cmd)
  p `#{cmd}`
end

uname = `uname`

# tools install
if uname == "Darwin" then 
  # Command Line Toolsの手動インストール https://developer.apple.com/downloads/index.action
  # install homebrew
  execute "ruby -e \"$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)\""
  tools = %w{ruby-build nkf autoconf the_silver_searcher reattach-to-user-namespace tig tmux ctags wget}
  tools.each do |k|
    execute "brew install #{k}"
  end
else
  execute "sudo apt-get update"
  tools = %w{tree nkf wget vim zsh git-core ctags curl tig tmux the_silver_searcher}
  tools.each do |k|
    execute "sudo aptitude -y install #{k}"
  end
end

# git config
execute "git config --global http.sslVerify false"

# git clone
execute "git clone git://github.com/kanetann/dotfiles.git ~/dotfiles"
 
# delete symlinks
dotfiles = %w{.vimrc .vim .zshrc .zsh .bashrc .bash_profile .ssh/config .gitconfig .proverc .gemrc .inputrc .pryrc}
dotfiles.each do |k|
  execute "rm -rf ~/#{k}"
end

# setup rbenv
execute "rm -rf ~/.rbenv"
execute "git clone git://github.com/sstephenson/rbenv.git ~/.rbenv"
execute "mkdir -p ~/.rbenv/plugins"
rbenv_install_command =  "cd ~/.rbenv/plugins; git clone git://github.com/sstephenson/ruby-build.git; "
if uname == "Darwin" then 
  execute "#{rbenv_install_command} CONFIGURE_OPTS="--with-openssl-dir=/usr/local/opt/openssl --with-readline-dir=/usr/local/opt/readline" rbenv install 1.9.3-p327"
else
  execute "#{rbenv_install_command} rbenv install 1.9.3-p327"
end
execute "rbenv global 1.9.3-p327"
execute "rbenv rehash"

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

# add symlinks
dotfiles.each do |k|
  execute "ln -s ~/dotfiles/#{k} ~/#{k}"
end
