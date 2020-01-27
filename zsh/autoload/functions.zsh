function findfile() {
    find | ag $@
}

function findfileinroot() {
    cd /
    findfile $@
    cd -
}

function countfiles() {
    ls -l $@ | wc -l
}

function weather() {
    curl "http://wttr.in/$1"
}

function clonerepo() {
    if [[ -d $GITDIR ]]; then
        printf "Either your external git folder does not exist"
        printf "or the GITDIR variable is not set.  You can fix"
        printf "this by sourcing the zsh variables script.\n"
        return 1
    fi

    cd $GITDIR
    git clone $1
}

alias gclone='clonerepo'
alias gc='clonerepo'  # dont interfere with gcc!

# source all autoload files
# for file in $(find ./autoload | ag '\.zsh$'); do
#     source $file
#     printf "$fg[green]Sourced $file\n"
# done

echo "$fg[green]Functions Loaded$fg[reset]"
