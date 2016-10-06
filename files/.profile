# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export IBUS_ENABLE_SYNC_MODE=1

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

export EDITOR=vim
export PAGER=less
