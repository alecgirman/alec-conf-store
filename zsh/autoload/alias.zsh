# Note: All function aliases (any function made to serve as an alias or renamed utility in such
# a case where an alias could not be made for it due to the limitations on aliases) should prefix
# the function name and create an alias with the original name.  The rationale for that is so that
# this alias file serves as a reference for my own pre-defined commands and that it also maximises
# the potential of the 'you should use' zsh plugin because it does not see functions.

# Example: I commonly use `find | ag '<filename>'` to find a file in the current directory.  I have
# a function for that defined as 'findfile', but have barely used it because a) i dont see it whenever
# I come to edit this file and b) the YSH plugin does not remind me to use it.
# Solution: Rename `findfile` to `afunc_findfile` and in this file, add the following:
# `alias findfile='afunc_findfile'`

# TODO:
# git commit -> gc (add line editor message writing)
# 

# All aliases defined in this file should be grouped first by category, but when a category cannot
# be defined, then group by any aspect that they have in common.
# The group name is the index used to group the aliases. In cases where they can be categorized, 
# this is the the name of the category, but when the secondary method defined above is used, then it is a very short summary
# of what those aliases have in common)

# in-place command renames
# must take first priority so other aliases can use them
alias ag='ag -i'
alias diff='diff --color=auto'
alias sed='sed -E'
alias howdoi='howdoi -c'
alias grep='grep --color=auto -P'

# climbing directories
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

# ls
alias l='/usr/bin/lsd'
alias ll='l -l'
alias ls='/usr/bin/lsd -A'
alias lss='/usr/bin/ls --color=auto'

# quick commands
alias q='exit'
alias e='nvim'
alias c='cat'

# file management
alias fpstat='stat --format=%a'      # file permission stat (only prints perms)
alias fsb='du -sb'                   # file size - byte count
alias fsh='du -sh'                   # file size - human readable
alias fwatch='tail -fs'              # print contents of file when it changes
alias pre=head                       # preview file (print first 5 lines)
alias prel='head -n'                 # preview N lines from file
alias agfs='find | ag'		     # find file
alias agrfs='find / | ag'            # find file starting from root

# quickly make changes to a file
alias ised='sed -i'

# Working with config files
alias addalias='nvim /ashe/zsh/autoload/alias.zsh;'
alias addfunction='nvim /ashe/zsh/autoload/functions.zsh'
alias resync='make -C /ashe install && rlz'

# maintenance
alias clearcache='echo 3 > /proc/sys/vm/drop_caches'
alias cleartemp='' # TODO
alias cputemp='sensors | sed -n "/^Core/p"'

alias ag='ag -i'
alias diff='diff --color=auto'
alias sed='sed -E'
alias howdoi='howdoi -c'
alias grep='grep --color=auto -P'
alias ccat='pygmentize'

alias ds='docker search'
alias emak='nvim Makefile'
alias ff=firefox
alias fpstat='stat --format=%a'
alias fsb='du -sb'
alias fsh='du -sh'
alias fwatch='tail -fs'
alias keep='noglob keep'
alias md='mkdir -p'
alias nf=neofetch
alias pacman=yay

# zsh builtins
alias keep='noglob keep'

# colored file output
alias pyg='pygmentize'
alias ccat='pyg' # this was the alias I used when I used zsh's built in color output

# audio
alias plc=playerctl
alias pm=pulsemixer
alias pyg='pygmentize'

# git
alias gcm='git commit -m'
alias gs='git status'

alias getall_giturls='afunc_getall_giturls'
alias gru='getall_giturls'

alias githubsearch='afunc_githubsearch'
alias gss='githubsearch'

alias gitclonerepo='afunc_gitclonerepo' # function alias
alias gcl='gitclonerepo'
alias gl='git log'
alias gla='git log --all'
alias gll='git log'
alias glg='git log --graph --stat --all'

# preview files
alias pre=head
alias prel='head -n'

# build tools
alias fastmake='make -j 12'
alias makelocal='make install PREFIX=/usr/local'
alias emak='$EDITOR Makefile'
alias objdump='objdump --disassembler-options=intel,addr64'
alias lself='objdump -x'
alias lsobj='lself'

# docker
alias ds='docker search'
alias dockerd='dockerd &> /dev/null &'

# get information on an installed binary
alias whatis='afunc_whatis'

# taskwarrior
alias tl='task list'

# weather
alias weather='afunc_weather'
alias widc='weather dc'

# get api key
alias getapikey='afunc_getapikey'

# compression
alias tarpipe='tar -c'
alias xz='xz -v'
alias softxz='xz -z -2'
alias hardxz='xz -ze -T 12 -9'

alias gnome='startx'
alias plasma='startx /usr/bin/startplasma-x11'
alias kde='startx /usr/bin/startplasma-x11'

# for now, use agfs to find the recording.
alias arec="asciinema rec /tmp/$(mktemp -u).casts"

# launch c'hromium as root
alias chrome='chromium --no-sandbox'

# tmux
alias tma='tmux attach -t'
alias tmls='tmux list-sessions'

# youtube download
alias ytd=youtube-dl
alias ytdi='youtube-dl --id'
alias ytds='youtube-dl --default-search "ytsearch"'

# edit config files
alias i3blockconfig='nvim /ashe/i3blocks/config'
alias i3config='nvim /ashe/i3/config'
alias zshconfig='$EDITOR /ashe/zsh/'
alias editpolybar='$EDITOR /root/.config/polybar/config'
alias rlz='touch /tmp/.zshreload; source ~/.zshrc'
alias savele='afunc_savele' # save last export
