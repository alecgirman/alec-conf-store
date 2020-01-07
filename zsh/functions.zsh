function findfile() {
    find | ack $@
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
    if [[ -d $GITEXTERN ]]; then
        printf "Either your external git folder does not exist"
        printf "or the GITEXTERN variable is not set.  You can fix"
        printf "this by sourcing the zsh variables script.\n"
        return 1
    fi

    cd $GITEXTERN
    git clone $1
}

for file in $(find autoload); do
    source $file
done

echo "$fg[green]Functions Loaded$fg[reset]"
