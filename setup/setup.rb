#!/usr/bin/env ruby

# try, below command.
# wget --no-check-certificate -O - https://raw.github.com/kanetann/dotfiles/master/setup/setup.rb | ruby

def execute(cmd)
  p `#{cmd}`
end

uname = `uname`.chomp

# tools install
if uname == "Darwin" then 
  # Command Line Toolsの手動インストール https://developer.apple.com/downloads/index.action
  # install homebrew
  # execute "ruby -e \"$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)\""
  tools = %w{ruby-build nkf autoconf the_silver_searcher reattach-to-user-namespace tig tmux ctags wget}
  tools.each do |k|
    execute "brew install #{k}"
  end
else
  execute "sudo apt-get update"
  tools = %w{tree nkf wget vim zsh git-core ctags curl tig tmux the_silver_searcher make gcc}
  tools.each do |k|
    execute "sudo aptitude -y install #{k}"
  end
end

# git config
execute "git config --global http.sslVerify false"

# git clone
execute "git clone git://github.com/kanetann/dotfiles.git ~/dotfiles"
 
# delete symlinks
dotfiles = %w{.bash_profile .bashrc .gemrc .gitconfig .gitignore .inputrc .proverc .pryrc .screenrc .tmux.conf .vimperatorrc .vimrc .vim .zsh .zshenv .zshrc .ssh/config .tmux.conf}
dotfiles.each do |k|
  execute "rm -rf ~/#{k}"
end

# setup NeoBundle
execute "ln -s ~/dotfiles/.vimrc ~/.vimrc"
execute "ln -s ~/dotfiles/.vim ~/.vim"
execute "git clone git://github.com/Shougo/neobundle.vim ~/dotfiles/.vim/bundle/neobundle.vim"
execute "vim -N -u NONE -i NONE -V1 -e -s --cmd \"source ~/.vimrc\" --cmd NeoBundleInstall! --cmd qall!"

# setup vimproc
if uname == "Darwin" then 
  procfilename = "make_mac.mak"
else
  procfilename = "make_unix.mak"
end
execute "cd ~/.vim/bundle/vimproc && make -f #{procfilename}"

# install oh-my-zsh
execute "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh"

# add symlinks
dotfiles.each do |k|
  execute "ln -s ~/dotfiles/#{k} ~/#{k}"
end

rm -rf ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc

