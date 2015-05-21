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
if [[ ! :$PATH: == *:"$HOME/bin":* ]] ; then
    PATH="$HOME/bin:$PATH"
fi
fi
# set PATH to local env // script.sh instead of ./script.sh
PATH="$PATH":.

#aliases
alias h='cd $HOME'
alias py='python'
alias py3='python3'
alias ipy='ipython'
alias ipy3='ipython3'
alias yt-dl='youtube-dl'

#apt aliases
alias ai='sudo apt-get install'
alias as='sudo apt-cache search'
alias au='sudo apt-get update'

#restart router
if [ -e $HOME/bin.reboot_router.py ]; then
    alias rr='python $HOME/bin/reboot_router.py'
fi

#copy to X's clipboard
#usage: <command> | xc
alias xc='xclip -selection c'
