# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
HISTSIZE=100000
HISTFILESIZE=200000
echo 'Configured bash history'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# append to the history file, don't overwrite it
shopt -s histappend

# support for stars in file paths in bash
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

echo 'Configured misc shell options'

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

force_color_prompt=yes

# TODO: move all not-my-code out

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

echo 'Configured terminal true color'


# ==================
#   A L I A S E S 
# ==================

alias ls='ls  --color -a'

# lists!
alias ll='ls -lF'
alias lq='ls -ls'

alias egrep='grep --color -E'

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

cd ~/
echo "Config loaded successfully!"
echo "You may now launch tmux and/or vim."












# if ! shopt -oq posix; then
  # if [ -f /usr/share/bash-completion/bash_completion ]; then
    # . /usr/share/bash-completion/bash_completion
  # elif [ -f /etc/bash_completion ]; then
    # . /etc/bash_completion
  # fi
# fi
