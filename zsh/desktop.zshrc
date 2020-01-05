if [ ! -f /tmp/.zshreload ]; then
    export LANG="en_US.UTF-8"
    ZSH=/root/.oh-my-zsh/
    ZSH_THEME="powerlevel9k"
    HYPHEN_INSENSITIVE="true"
    #ENABLE_CORRECTION="true"

    # plugins=( colorize zsh-autosuggestions zsh-syntax-highlighting you-should-use )

    # source ~/.oh-my-zsh/oh-my-zsh.sh

    export plugindir=/ashe/zsh/components

    for file in $(find $plugindir | ack '\.zsh$'); do
        . $file end
    done

    export EDITOR='nvim'

    unsetopt correct
    unsetopt correctall

    zstyle ':completion:*' rehash true

    eval $(thefuck --alias)

    clear
    alias zshconfig="nvim ~/.zshrc"
    alias ohmyzsh="nvim ~/.oh-my-zsh/oh-my-zsh.sh"
    printf "$fg[blue]ZSH Initialized\n"
else
    printf "$fg[green]Reloading ZSH\n"
fi

rm /tmp/.zshreload &> /dev/null
source /root/.zsh/alias.zsh
source /root/.zsh/functions.zsh
