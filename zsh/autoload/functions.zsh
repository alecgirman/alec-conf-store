function afunc_countfiles() {
    ls -l $@ | wc -l
}

function afunc_weather() {
    curl "http://wttr.in/$1"
}

function afunc_gitclonerepo() {
    if [[ -d $GITDIR ]]; then
        printf "Either your external git folder does not exist"
        printf "or the GITDIR variable is not set.  You can fix"
        printf "this by sourcing the zsh variables script.\n"
        return 1
    fi

    cd $GITDIR
    git clone $1
}

function afunc_savele() {
    echo !export >> /ashe/zsh/autoload/vars.zsh
}

function afunc_getapikey() {
    ag "set $1 \K.*$" -o ~/.config/.apikeyrc
}

function afunc_whatis() {
    yay -Qo "/usr/bin/$1" 2>/dev/null 1>/tmp/whatis-queryown
    yay -Si $1 2>/dev/null 1>/tmp/whatis-queryinfo

    # TODO

    rm /tmp/whatis-queryown
    rm /tmp/whatis-queryinfo
}

function afunc_getall_giturls() {
    cat */.git/config | ag 'url'
}

function afunc_githubsearch() {
    googler "$1 github" | ag 'https:..github.com/(\w\/[\w._]+(\.git)?'
}
