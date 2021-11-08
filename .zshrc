# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="crcandy"
ZSH_THEME="my"



# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git brew bundler capistrano gem heroku knife rails rake rbenv rsync vagrant)
plugins=(fancy-ctrl-z)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/bin:/usr/bin:/usr/sbin:/sbin:/usr/X11/bin

### neovim
# alias vim="nvim"

### rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
case ${OSTYPE} in
    darwin*)
        ;;
    linux*)
        source /usr/share/doc/fzf/examples/key-bindings.zsh
        ;;
esac

### for C-s, C-q
stty stop undef
stty start undef

case ${OSTYPE} in
    darwin*)
	export GOROOT=/usr/local/opt/go/libexec
	export GOPATH=$HOME
	export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
        ;;
    linux*)
	export GOPATH=$HOME/go
	export PATH=$PATH:/usr/lib/go/bin
	export PATH=$PATH:$GOPATH/bin
        ;;
esac


alias repos='cd $(ghq list -p | fzf)'
# alias ficd='cd $(find . -type d | peco)'
# alias tmuxp='tmuxinator start project workspace=$(ghq list -p | peco)'

# # https://postd.cc/how-to-boost-your-vim-productivity/
# fancy-ctrl-z () {
#   if [[ $#BUFFER -eq 0 ]]; then
#     BUFFER="fg"
#     zle accept-line
#   else
#     zle push-input
#     zle clear-screen
#   fi
# }
# zle -N fancy-ctrl-z
# bindkey '^Z' fancy-ctrl-z

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


# mysql 5.7
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib
export PATH=/usr/local/opt/mysql@5.7/bin:$PATH
export DYLD_LIBRARY_PATH="/usr/local/opt/mysql@5.7/:$DYLD_LIBRARY_PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border'

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

