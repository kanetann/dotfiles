# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="nebirhos"
#ZSH_THEME="wedisagree"
#ZSH_THEME="wezm"
ZSH_THEME="terminalparty"



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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/aa/.vvm/bin:/Users/aa/.vvm/vims/current/bin

alias tmux="tmux -2 -u"
[ -f ~/vim/vim73/src/vim ] && alias vim="~/vim/vim73/src/vim"
alias v="vim"
export LESS=R
alias diff="colordiff -u"
[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine

function chpwd() { ls -la }
test -f ~/.vvm/etc/login && source ~/.vvm/etc/login
REPORTTIME=1
PATH=${PATH}:~/dotfiles/edit-server/

REPORTTIME=1
