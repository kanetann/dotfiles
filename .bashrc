if [ -f /bin/zsh ]; then
    if [ $PS1 ]; then
        exec /bin/zsh
    fi
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
