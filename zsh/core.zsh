function ashe_finalize() {
	printf "\n\n\n\n"
	echo '--------------- ASHE Core Component Installer --------------'
	echo 'Made by Alec Girman'
	printf "\n\n"
	echo '============================================================================'
	echo 'If you booted up using boot.sh, then you will already have tmux installed.'
	echo 'tmux can not be opened while this is running.  If you want to use tmux,'
	echo 'please hit Ctrl-C now and relaunch within tmux...'
	echo '============================================================================'

	function pacman-no-confirm() {
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
	pacman-no-confirm firefox
	pacman-no-confirm dolphin

	pacman-no-confirm ttf-cascadia-code
	pacman-no-confirm otf-fira-code
	fc-cache -f

	#pacman-no-confirm docker

	echo "exec startplasma-x11" > ~/.xinitrc

	source userconf.zsh

	echo 'Script complete, you are now free to launch xinit to begin the gui session.'
}

export ashe_finalize
printf "Successfully loaded function: \033[0;32mashe_finalize()\033[0m"
