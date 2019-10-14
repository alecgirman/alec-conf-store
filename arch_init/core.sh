
echo 'ASHE Core Component Installer'
echo 'Made by Alec Girman'
sleep 1
echo 'If you booted up using boot.sh, then you will already have tmux installed.'
echo 'tmux can not be opened while this is running.  If you want to use tmux,'
echo 'please hit Ctrl-C now and relaunch within tmux...'
sleep 3
echo 'Attempting system upgrade (this will skip if you already did it)'

alias pac='pacman --color always'
alias pacman-no-confirm='pacman --color always --confirm'

# auto installs - no confirmation needed
pacman-no-confirm neofetch
pacman-no-confirm neovim
pacman-no-confirm binutils
pacman-no-confirm gcc
pacman-no-confirm python3-pip

echo 'Installing xorg.  Press enter on both prompts unless otherwise intended.'
pac -Syu xorg
echo 'Installing plasma.  Press enter on both prompts unless otherwise intended.'
pac -Syu plasma
echo 'Installing kde-applications.  Press enter on both prompts unless otherwise intended.'
pac -Syu kde-applicaions

if read 
echo 'Installing Qt5.  Press enter on both prompts unless otherwise intended.'
pac -Syu qt5

# lynx, w3m, links2
# docker
