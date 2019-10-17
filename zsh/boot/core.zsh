echo 'ASHE Core Component Installer'
echo 'Made by Alec Girman'
echo '============================================================================'
echo 'If you booted up using boot.sh, then you will already have tmux installed.'
echo 'tmux can not be opened while this is running.  If you want to use tmux,'
echo 'please hit Ctrl-C now and relaunch within tmux...'
echo '============================================================================'

pacman-no-confirm() {
	if [ $# -lt 1 ]; then
		echo 'less than two args cant complete'
		exit
	fi

	echo "Installing $1"
	pacman --color=always --noconfirm -S $1 --needed
}

# TODO: modularize these
# auto installs - no confirmation needed
pacman-no-confirm nvidia
pacman-no-confirm neofetch htop lynx
pacman-no-confirm neovim neovim-qt
pacman-no-confirm binutils gcc
pacman-no-confirm python3 python-pip ipython
pacman-no-confirm plasma kde-applications qt5
pacman-no-confirm xorg-server 
pacman-no-confirm xorg-xinit
pacman-no-confirm konsole dolphin 
pacman-no-confirm chromium

echo "source ~/ashe/nvim/init.vim" > ~/.config/nvim/init.vim

#pacman-no-confirm docker

echo 'Updating persistent cache...'
cp /var/cache/pacman/pkg/* /fdp/pkgcache/ -un
echo 'Complete!'
echo "exec startplasma-x11" > /root/.xinitrc
echo "starting xinit, please hold..."
xinit
