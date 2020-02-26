def macos?
  RUBY_PLATFORM.match(/darwin/)
end

if macos?
  # homebrew, xcode, applications
  `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
  `brew install mas`
  `mas install 497799835`
  apps = %w(iterm2 google-chrome google-japanese-ime alfred spectacle dash psequel mysqlworkbench microsoft-office marp dropbox spotify)
  apps.each do |app|
    `brew cask install #{app}`
  end

  # font
  `brew tap sanemat/font`
  `brew install ricty`
  `cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/`
  `fc-cache -vf`
end

# terminal apps
apps = %w(vim ctags git tig golang ghq tmux ripgrep fzf)
apps.each do |app|
  if macos?
    `brew install #{app}`
  else
    `sudo apt-get install -y #{app}`
  end
end

`curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh`

dotfiles = %w(.agignore .editorconfig .pryrc .tigrc .tmux.conf .vimrc .zshrc)
dotfiles.each do |dotfile|
  `ln -sf ~/dotfiles/#{dotfile} ~/#{dotfile}`
end

# and open vim + :PlugInstall
`curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

