export LANG="en_US.UTF-8"
ZSH=/root/.oh-my-zsh/
ZSH_THEME="powerlevel9k"
HYPHEN_INSENSITIVE="true"
#ENABLE_CORRECTION="true"

plugins=( colorize zsh-autosuggestions zsh-syntax-highlighting)

source ~/.oh-my-zsh/oh-my-zsh.sh
export EDITOR='nvim'

unsetopt correct
unsetopt correctall

zstyle ':completion:*' rehash true

eval $(thefuck --alias)

alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh/oh-my-zsh.sh"

source /root/.zsh/alias.zsh
source /root/.zsh/functions.zsh
