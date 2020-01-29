alias ...='cd ../../'

alias ll='l -l'
alias ls='/usr/bin/lsd -A'
alias lss='/usr/bin/ls --color=auto'

alias :q='echo "this isnt vim!"'
alias l='/usr/bin/lsd'
alias a=ack
alias t=touch
alias q=exit
alias m=man
alias f=fuck
alias e=nvim
alias c=cat

alias addalias='nvim /ashe/zsh/autoload/alias.zsh;'
alias addfunction='nvim /ashe/zsh/autoload/functions.zsh'
alias resync='make -C /ashe install'

alias clearcache='echo 3 > /proc/sys/vm/drop_caches'
alias cputemp='sensors | sed -n "/^Core/p"'

alias ag='ag -i'
alias diff='diff --color=auto'
alias sed='sed -E'
alias howdoi='howdoi -c'
alias grep='grep --color=auto -P'

alias ds='docker search'
alias emak='nvim Makefile'
alias ff=firefox
alias fpstat='stat --format=%a'
alias fsb='du -sb'
alias fsh='du -sh'
alias fwatch='tail -fs'
alias keep='noglob keep'
alias lc='lolcat -t'
alias md='mkdir -p'
alias nf=neofetch
alias pacman=yay
alias plc=playerctl
alias pm=pulsemixer

alias gcm='git commit -m'
alias gs='git status'

alias pre=head
alias prel='head -n'

alias fastmake='make -j 12'
alias makelocal='make install PREFIX=/usr/local'
alias objdump='objdump --disassembler-options=intel,addr64'

alias rlz='touch /tmp/.zshreload; source ~/.zshrc'
alias jctl=journalctl
alias start-dockerd='dockerd &> /dev/null &'
alias tl='task list'
alias tlog='journalctl -f'
alias widc='weather dc'

alias tma='tmux attach -t'
alias tmls='tmux list-sessions'

alias ytd=youtube-dl
alias ytdi='youtube-dl --id'
alias ytds='youtube-dl --default-search "ytsearch"'

alias i3blockconfig='nvim /ashe/i3blocks/config'
alias i3config='nvim /ashe/i3/config'
alias zshconfig='$EDITOR /ashe/zsh/'
