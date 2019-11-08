# NOTE: If you are looking to implement something similar, be aware that
# Github's API can expose your email address if it is set to public.
# More info can be found here: https://developer.github.com/v3/users/emails/
function set_git_config() {
	# avoids '@', '.com', and '.' searches
	git config --global user.email $(printf "avgch1\x40gmail\x2e\x63om")
	git config --global user.name "Alec Girman"
	echo 'Set git config'
}

function ashe_init_boot() {
	echo '--------------- ASHE Boot Installer ---------------'
	echo '                Made by Alec Girman                '
	echo '---------------------------------------------------'

	# read in the amount of total system memory from /proc/info
	cat /proc/meminfo | read _memtotstr

	# extract numerical size of RAM in kilobytes
	export KBMEMTOTAL=$(echo "$_memtotstr" | egrep -o '[0-9]{8}')

	# after checking the amount of ram, this is the value that its compared against
	local devdetect_mem_threshold=$((17*1024*1024)) #17gb

	# an id that represents the device were on.  0=desktop, 1=laptop, 2=error
	local device_id=2

	echo "Installed System Memory: $KBMEMTOTAL"

	if [ $KBMEMTOTAL -gt $devdetect_mem_threshold ]; then
		# on desktop
		echo 'ASHE has detected Desktop/Server hardware, so wireless config will be skipped.'
		dhcpcd -q # sometimes this needs to be ran so lets run it just in case
		echo "Executed dhcpcd with return code $?"
		swapon /dev/sdb3
		echo "Initialized swap memory"
		$device_id=0
	else
	# on laptop
		wifi-menu

		if [[ $? = 0 ]]; then
			echo "wifi-menu exited with return code $?, connection was successful!"
		elif [[ $? = 1 ]]; then
			echo "wifi-menu exited with return code $?, so ill take it that you didnt need to run it (user aborted)"
		else
			echo "wifi-menu exited with return code $?, indicating likely failure."
			echo 'currently, this script is not designed to run offline, however, you'
			echo 'may still install packages from the cache, and I highly reccomend'
			echo 'updating your package database and system upgrades whenever you get'
			echo 'access to the internet.  If your package cache is empty, this may'
			echo 'take a while to download updates.'

			echo 'If you simply put in the wrowg password, just re-run this script.'
			echo 'Otherwise exiting due to missing dependencies (an internet connection)'
			return 1
		fi

		echo 'It will take up to 10 seconds to resolve DNS'
		echo 'Please hold as we give DNS time to boot up.'
		echo 'If you experience DNS issues on the update that I am about to do, then'
		echo 'cancel the script (Ctrl-C) and launch it when your connection is fixed.'
		sleep 7
		# TODO: this laptop has a 4k screen, lets show an image in the console
		echo 'Almost there!'
		$device_id=1
	fi

	pacman -Sy base git tmux --noconfirm --needed

	# set git config *after* installation
	set_git_config
}

export ashe_init_boot
printf "Successfully loaded function: \033[0;32mashe_init_boot()\033[0m\n"

# Source core.zsh in order to expose ashe_finalize function
# if script is not found, you would need to execute it manually.
# this should help execute scripts locally
cd /fd/ashe/zsh/
source core.zsh $device_id
