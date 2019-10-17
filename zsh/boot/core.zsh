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
pacman-no-confirm neofetch
pacman-no-confirm neovim
pacman-no-confirm htop
pacman-no-confirm binutils
pacman-no-confirm gcc
pacman-no-confirm python3 python3-pip
pacman-no-confirm lynx
pacman-no-confirm xorg-server
pacman-no-confirm xorg-xinit
pacman-no-confirm neovim-qt
pacman-no-confirm konsole dolphin chromium
pacman-no-confirm qt5
pacman-no-confirm kde-applications
pacman-no-confirm plasma

#pacman-no-confirm docker

echo 'Updating persistent cache...'
cp /var/cache/pacman/pkg/* /fdp/pkgcache/ -u
echo 'Complete!'
echo "exec startplasma-x11" > /root/.xinitrc
echo "starting xinit, please hold..."
xinit
