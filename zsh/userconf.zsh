#!/usr/bin/zsh

function ashe_create_user_group(name) {
	groupadd $name
}

function ashe_create_system_group(name) {
	groupadd -r $name
}

function ashe_init_default_users() {
	echo 'Ashe Arch User Setup - Initializing default user settings'

	# in case it wasnt done already
	export SHELL=/bin/zsh

	# create sudo group
	groupadd -r sudo

	# create user: arch
	useradd -g sudo -d /fd/home/ -N arch

	# create user: alec
	useradd -g users -d /fd/home/ -N alec

	echo -e 'archlinux\narchlinux' | passwd arch
}
