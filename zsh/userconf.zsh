
function ashe_init_default_users() {
	echo 'Ashe Arch User Setup - Initializing default user settings'

	# in case it wasnt done already
	export SHELL=/bin/zsh

	# create sudo group
	groupadd -r sudo
	groupadd -r syslocal

	# create user: arch
	useradd -g sudo -d /fd/home/ -N arch

	# create user: alec
	useradd -g syslocal -d /fd/home/ -N alec

	echo -e 'archlinux\narchlinux' | passwd arch
}
