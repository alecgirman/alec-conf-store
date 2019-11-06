function ashe_finalize() {
	printf "\n\n\n\n"
	echo '--------------- ASHE Core Component Installer --------------'
	echo 'Made by Alec Girman'
	printf "\n\n"
	echo '============================================================================'
	printf "\033[1;34m ---------Caution --------- \033[0m\n"
	echo 'In previous versions, this script installed everything you could need.'
	echo 'This is no longer the case due to RAM usage.  This script will install'
	echo 'core configuration and GUI components and the left will be left to you (on the desktop)'
	sleep 2

	function pacman-no-confirm() {
	    echo "Installing $@"
	    # pacman --color=always --noconfirm -S $@ --needed
	    pacman --noconfirm --needed -S $@
	}

	# TODO: modularize these
	# auto installs - no confirmation needed

	pacman-no-confirm nvidia
	pacman-no-confirm htop
	pacman-no-confirm plasma
	pacman-no-confirm xorg-server 
	pacman-no-confirm xorg-xinit
	pacman-no-confirm konsole
	pacman-no-confirm dolphin

	pacman-no-confirm ttf-cascadia-code
	pacman-no-confirm otf-fira-code
	fc-cache -f

	echo "exec startplasma-x11" > ~/.xinitrc
	printf "\033[0;32mSetup complete, starting xinit shortly.\033[0m\n"
	echo 'The screen will flash to the login screen for a second then come right back here.'
	printf "When it puts you back at the console, \033[4;34muse Ctrl+Alt+Fn keys to jump back to the GUI.\033[0m\n"
	printf "Unless you used a VT during script execution, then by default, it will be\033[2;2mCtrl+Alt+F2\033[0m\n"
	echo 'Starting xinit in 5 seonds...'
	sleep 5
	xinit
}

export ashe_finalize
printf "Successfully loaded function: \033[0;32mashe_finalize()\033[0m"
