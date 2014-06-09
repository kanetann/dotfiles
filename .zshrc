# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="nebirhos"
#ZSH_THEME="wedisagree"
#ZSH_THEME="wezm"
#ZSH_THEME="terminalparty"
#ZSH_THEME="candy"
#ZSH_THEME="cloud"
#ZSH_THEME="agnoster"
#ZSH_THEME="juanghurtado"
#ZSH_THEME="miloshadzic"
#ZSH_THEME="dieter"
#ZSH_THEME="steeef"
# ZSH_THEME="candy"
# ZSH_THEME="random"
#ZSH_THEME="sporty_256"
#ZSH_THEME="tjkirch"
ZSH_THEME="crcandy"
#ZSH_THEME="trapd00r"
#ZSH_THEME="linuxonly"
#ZSH_THEME="blinks"
#ZSH_THEME="tjkirch"




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
plugins=(git brew bundler capistrano gem heroku knife rails rake rbenv rsync vagrant)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/aa/.vvm/bin:/Users/aa/.vvm/vims/current/bin

alias tmux="tmux -2 -u"
[ -f ~/vim/vim73/src/vim ] && alias vim="~/vim/vim73/src/vim"
alias v="vim"
export LESS=R
alias diff="colordiff -u"

function chpwd() { ls -la }
test -f ~/.vvm/etc/login && source ~/.vvm/etc/login
REPORTTIME=1

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
rbenv shell 2.1.2
rbenv global 2.1.2

unsetopt correct_all

[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine

case ${OSTYPE} in
    darwin*)
        alias ctags="/usr/local/Cellar/ctags/5.8/bin/ctags"
        ;;
    linux*)
        ;;
esac

export PATH="/usr/local/bin:$PATH"
export RSENSE_HOME="$HOME/dotfiles/rsense-0.3"

# tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
export EDITOR=/usr/bin/vim

export DISABLE_UPDATE_PROMPT=true


alias ag="ag --ignore-case"

export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="$HOME/dotfiles/bin:$PATH"

alias ts="tig status"
alias tig="tig status"
alias agt="ag todo"

export PATH="$PATH:$HOME/project/sandbox/lithium/my_app/libraries/lithium/console"




# Qiita に1年振りくらいに投稿してみた - hamaco's blog <http://blog.hamaco.org/blog/2013/11/27/qiita/>
HARDCOPYFILE=/tmp/tmux-hardcopy
touch $HARDCOPYFILE

dabbrev-complete () {
  local reply lines=80

  tmux capture-pane && tmux save-buffer -b 0 $HARDCOPYFILE && tmux delete-buffer -b 0
  reply=($(sed '/^$/d' $HARDCOPYFILE | sed '$ d' | tail -$lines))

  compadd -Q - "${reply[@]%[*/=@|]}"
}

zle -C dabbrev-complete menu-complete dabbrev-complete
bindkey '^o' dabbrev-complete
bindkey '^o^_' reverse-menu-complete

