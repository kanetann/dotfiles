#!/usr/bin/env ruby

# try, below command.
# wget --no-check-certificate -O - https://raw.github.com/kanetann/dotfiles/master/setup/setup.rb | ruby

def execute(cmd)
    p `#{cmd}`
end

uname = `uname`.chomp

# tools install
if uname == "Darwin" then
    tools = [
        'autoconf',
        'ctags',
        'nkf',
        'reattach-to-user-namespace',
        'ruby-build',
        'the_silver_searcher',
        'tig',
        'tmux',
        'wget',
      ]
      tools.each do |k|
            execute "brew install #{k}"
              end
else
    execute "sudo apt-get update"
      tools = [
          'ctags',
          'curl',
          'gcc',
          'git-core',
          'make',
          'nkf',
          'the_silver_searcher',
          'tig',
          'tmux',
          'tree',
          'vim',
          'wget',
          'zsh',
        ]
        tools.each do |k|
              execute "sudo aptitude -y install #{k}"
                end
end

# git config
execute "git config --global http.sslVerify false"
execute "git clone git://github.com/kanetann/dotfiles.git ~/dotfiles"

# update symlinks
dotfiles = [
  '.agignore',
  '.bash_profile',
  '.bashrc',
  '.ctags',
  '.gemrc',
  '.gitconfig',
  '.gitignore',
  '.inputrc',
  '.proverc',
  '.pryrc',
  '.screenrc',
  '.tmux.conf',
  '.vim',
  '.vimperatorrc',
  '.vimrc',
  '.zsh',
  '.zshenv',
  '.zshrc',
]
dotfiles.each do |k|
    execute "rm -rf ~/#{k}"
      execute "ln -s ~/dotfiles/#{k} ~/#{k}"
end

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

# install oh-my-zsh
execute "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh"
execute "rm -rf ~/.zshrc"
execute "ln -s ~/dotfiles/.zshrc ~/.zshrc"
