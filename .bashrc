if [ -f /bin/zsh ]; then
    exec /bin/zsh
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
