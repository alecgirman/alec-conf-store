# command rebinds
alias keep='noglob keep'
alias howdoi='howdoi -c'
alias sed='sed -E'

# Common
alias afind='ack -il'
alias cputemp='sensors | sed -n "/^Core/p"'
alias da='du -sch'
alias ff=firefox
alias md='mkdir -p'
alias pacman='yay'
alias plc='playerctl'
alias showlogs=journalctl
alias tl='task list'
alias ytd=youtube-dl
alias ytdi='youtube-dl --id'
alias ytds='youtube-dl --default-search "ytsearch"'

# one letter
alias a='ack'
alias c='cat'
alias e='nvim' # edit
alias f='fuck'
alias m='man'
alias q='exit'
alias t='touch'

# ls
unalias lsd &> /dev/null
alias l='ls'
alias ls='lsd -Al'
alias lsa='ls *'
alias ll='ls -l'
alias lst='ls -t'
alias lstt='ls -rt'
alias lsrt='ls -rt'
alias lstree='ls --tree'

# git
alias gs='git status'
alias gcm='git commit -m'

# fun stuff
alias pm='pulsemixer'
alias nf='neofetch'
alias widc='weather dc'
alias lc='lolcat -t'
alias :q='echo "this isnt vim!"'

# docker
alias ds='docker search'

# ack
alias ap='ack --nocolor -os'
# ack show only matches, must run ack with -o
alias aom='cut -f3 -d:'

# quick add alias/function
alias addalias="$EDITOR /ashe/zsh/alias.zsh; pushd /ashe/zsh; make dotsync; popd; rlz;"
alias addfunction="$EDITOR /ashe/zsh/functions.zsh"

# im proud of this one
alias emak="$EDITOR Makefile"

# tmux
alias tmls='tmux list-sessions'
alias tma='tmux attach -t'

# file ops
alias fwatch='tail -fs'
alias fsb='du -sb'
alias fsh='du -sh'
alias fpstat="stat --format=%a"     # file permission stat
alias pre='head'              # preview file
alias prel='head -n'              # preview file

# find (file) ops
alias ffile='findfile'       # defined in functions
alias ffir='findfileinroot'  # defined in functions

alias clearcache='echo 3 > /proc/sys/vm/drop_caches'

alias asherb='pushd /ashe/; make rebuild; popd;'
alias zshconfig="$EDITOR /ashe/zsh/"
alias i3config="$EDITOR /ashe/i3/config"
alias i3blockconfig="$EDITOR /ashe/i3blocks/config"
alias rlz='touch /tmp/.zshreload; source ~/.zshrc'
