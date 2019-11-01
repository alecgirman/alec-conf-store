printf "\n\n\n\n"
echo '--------------- ASHE Core Component Installer --------------'
echo 'Made by Alec Girman'
printf "\n\n"
echo '============================================================================'
echo 'If you booted up using boot.sh, then you will already have tmux installed.'
echo 'tmux can not be opened while this is running.  If you want to use tmux,'
echo 'please hit Ctrl-C now and relaunch within tmux...'
echo '============================================================================'

pacman-no-confirm() {
    echo "Installing $@"
    # pacman --color=always --noconfirm -S $@ --needed
    pacman --noconfirm --needed -S $@
}

# TODO: modularize these
# auto installs - no confirmation needed

# pacman-no-confirm nvidia
# pacman-no-confirm neofet-desktop
pacman-no-confirm htop
pacman-no-confirm lynx
pacman-no-confirm neovim
pacman-no-confirm neovim-qt
pacman-no-confirm binutils
pacman-no-confirm gcc
pacman-no-confirm python3
pacman-no-confirm python-pip
pacman-no-confirm ipython
pacman-no-confirm plasma
# pacman-no-confirm kde-applications
# pacman-no-confirm qt5
pacman-no-confirm xorg-server 
pacman-no-confirm xorg-xinit
pacman-no-confirm konsole
pacman-no-confirm chromium
pacman-no-confirm dolphin

pacman-no-confirm ttf-cascadia-code
pacman-no-confirm otf-fira-code
fc-cache -f

mkdir ~/.config
mkdir ~/.config/nvim

# TODO: copy correct source args over
# echo ""
echo "source /fdp/ashe/nvim/init.vim" > ~/.config/nvim/init.vim

#pacman-no-confirm docker

echo 'Updating persistent cache...'
# cp /var/cache/pacman/pkg/* /fdp/pkgcache/ -un
echo 'Complete!'
echo "exec startplasma-x11" > /root/.xinitrc

source userconf.zsh

echo 'Script complete, you are now free to launch xinit to begin the gui session.'
