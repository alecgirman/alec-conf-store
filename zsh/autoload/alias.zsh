alias ...='cd ../../'
alias :q='echo "this isnt vim!"'
alias a=ack
alias ack='ack -i'
alias addalias='nvim /ashe/zsh/autoload/alias.zsh;'
alias addfunction='nvim /ashe/zsh/autoload/functions.zsh'
alias afind='ack -il'
alias aom='cut -f3 -d:'
alias ap='ack --nocolor -os'
alias c=cat
alias clearcache='echo 3 > /proc/sys/vm/drop_caches'
alias cputemp='sensors | sed -n "/^Core/p"'
alias da='du -sch'
alias debs-by-size='dpkg-query -Wf '\''x ${Installed-Size} ${Package} ${Status}\n'\'' | sed -ne '\''/^x  /d'\'' -e '\''/^x \(.*\) install ok installed$/s//\1/p'\'' | sort -nr'
alias diff='diff --color=auto'
alias ds='docker search'
alias e=nvim
alias egrep='egrep --color=auto'
alias emak='nvim Makefile'
alias f=fuck
alias ff=firefox
alias fpstat='stat --format=%a'
alias fsb='du -sb'
alias fsh='du -sh'
alias fwatch='tail -fs'
alias gcm='git commit -m'
alias grep='grep --color=auto'
alias gs='git status'
alias help-zshglob=H-Glob
alias howdoi='howdoi -c'
alias i3blockconfig='nvim /ashe/i3blocks/config'
alias i3config='nvim /ashe/i3/config'
alias insecscp='scp -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null"'
alias insecssh='ssh -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null"'
alias keep='noglob keep'
alias lc='lolcat -t'
alias llog=journalctl
alias m=man
alias lss='/usr/bin/ls --color=auto'
alias ls='/usr/bin/lsd -A'
alias l='/usr/bin/lsd'
alias ll='l -l'
alias md='mkdir -p'
alias new=modified
alias nf=neofetch
alias pacman=yay
alias plc=playerctl
alias pm=pulsemixer
alias pre=head
alias prel='head -n'
alias q=exit
alias rlz='touch /tmp/.zshreload; source ~/.zshrc'
alias rmcdir='cd ..; rmdir $OLDPWD || cd $OLDPWD'
alias se=simple-extract
alias sed='sed -E'
alias showlogs=journalctl
alias start-dockerd='dockerd &> /dev/null &'
alias t=touch
alias term2iso='echo '\''Setting terminal to iso mode'\'' ; print -n '\''\e%@'\'
alias term2utf='echo '\''Setting terminal to utf-8 mode'\''; print -n '\''\e%G'\'
alias tl='task list'
alias tlog='journalctl -f'
alias tma='tmux attach -t'
alias tmls='tmux list-sessions'
alias unvim='nvim -U'
alias url-quote='autoload -U url-quote-magic ; zle -N self-insert url-quote-magic'
alias widc='weather dc'
alias ytd=youtube-dl
alias ytdi='youtube-dl --id'
alias ytds='youtube-dl --default-search "ytsearch"'
alias zshconfig='$EDITOR /ashe/zsh/'
