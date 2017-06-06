# Language and encoding settings
export LANGUAGE=ru_RU.UTF-8
export LC_CTYPE=ru_RU.UTF-8
export LC_NUMERIC=ru_RU.UTF-8
export LC_TIME=ru_RU.UTF-8
export LC_COLLATE=ru_RU.UTF-8
export LC_MONETARY=ru_RU.UTF-8
export LC_MESSAGES=ru_RU.UTF-8
export LC_PAPER=ru_RU.UTF-8
export LC_NAME=ru_RU.UTF-8
export LC_ADDRESS=ru_RU.UTF-8
export LC_TELEPHONE=ru_RU.UTF-8
export LC_MEASUREMENT=ru_RU.UTF-8
export LC_IDENTIFICATION=ru_RU.UTF-8
export LC_ALL=C.UTF-8
export LC_LANG=C.UTF-8

# Setting up GOPATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Add ~/bin and /usr/local/bin to PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Start tmux on logon
if command -v tmux>/dev/null; then
    [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

