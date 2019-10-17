
echo 'ASHE Core Component Installer'
echo 'Made by Alec Girman'
sleep 1
echo '============================================================================'
echo 'If you booted up using boot.sh, then you will already have tmux installed.'
echo 'tmux can not be opened while this is running.  If you want to use tmux,'
echo 'please hit Ctrl-C now and relaunch within tmux...'
echo '============================================================================'
sleep 6
echo 'Attempting system upgrade (this will skip if you already did it)'

alias pac='pacman --color=always'
# alias pacman-no-confirm='pacman --color=always --confirm'



# Yes i know this format looks repetitive and i could easily put it in a function
# No I will not, but I will help make it easier.  To use the shortcut, insert
# installs like such where <c> is your cursor (right after the c)
# 'nameofpkg' pnc<c>
# After you hit space, the snippet will autocomplete.  Make sure you put the name
# of the package you are installing IN FRONT of png AND WITH SINGLE QUOTES
#
# :ab pnc <Esc>$d?'<CR>xhvnly^iecho 'Installing <C-R>"

pacman-no-confirm() {
	if [ $# -lt 1 ]; then
		echo 'less than two args cant complete'
		exit
	fi

	echo "Installing $1"
	pacman --color=always --noconfirm -S $1 --needed
}

# auto installs - no confirmation needed
pacman-no-confirm neofetch
pacman-no-confirm neovim
pacman-no-confirm htop
pacman-no-confirm binutils
pacman-no-confirm gcc
pacman-no-confirm python3-pip
#pacman-no-confirm lynx
#pacman-no-confirm docker
pacman-no-confirm xorg-server
pacman-no-confirm xorg-xinit
pacman-no-confirm neovim-qt
pacman-no-confirm konsole dolphin chromium
pacman-no-confirm qt5
pacman-no-confirm kde-applications
pacman-no-confirm plasma


# echo 'Installing xorg.  Press enter on both prompts unless otherwise intended.'
# if xorg-server is installed, we need xinit too. TODO: check if it was installed
# pacman -S xorg-init --noconfirm --needed

echo 'Updating persistent cache...'
cp /var/cache/pacman/pkg/* /fdp/pkgcache/ -u
echo 'Complete!'
#mkdir /fdp/ashe/pkg/

#echo 'Installing kde-applications.  Press enter on both prompts unless otherwise intended.'
#pac -S kde-applications -r /fdp/ashe/pkg

#echo 'Installing Qt5.  Press enter on both prompts unless otherwise intended.'
#pac -Syu qt5 -r /fdp/ashe/pkg


# echo 'The next package is Qt, however at this point, you should have well over 4GB used.'

# echo 'Would you like to still install Qt5?'
# bash is so confusing im just going to build the yes/no prompt in C


# IMPORTANT: Qt5 installation disabled temporarily
# echo 'Installing Qt5.  Press enter on both prompts unless otherwise intended.'
# pac -Syu qt5

echo "exec startplasma-x11" > /root/.xinitrc
echo "starting xinit, please hold..."
xinit
