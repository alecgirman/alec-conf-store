# NOTE: If you are looking to implement something similar, be aware that
# Github's API can expose your email address if it is set to public.
# More info can be found here: https://developer.github.com/v3/users/emails/
function set_git_config() {
	# avoids '@', '.com', and '.' searches
	git config --global user.email $(printf "avgch1\x40gmail\x2e\x63om")
	git config --global user.name "Alec Girman"
	echo 'Set git config'
}

function init_core() {
	echo '--------------- ASHE Boot Installer ---------------'
	echo 'Made by Alec Girman'
	echo '---------------------------------------------------'

	# First, I'm going to determine which computer I am using.  Problem is that
	# they both boot into this same ISO so they have nearly the smae
	# information.  To solve this, I'm just going to check the base specs.  My
	# laptop has 16G and desktop has 32G (maybe 64 soon).  It is important for
	# me to check which machine because my desktop does NOT have to run
	# wifi-setup as it is already connected via ethernet.  Info read from
	# /proc/meminfo on my desktop looks like this when 32G is active.
	# MemTotal:       32825668 kB

	# TODO (in C): add arguments like --nosleep

	# read in the amount of total system memory from /proc/info
	cat /proc/meminfo | read _memtotstr

	# extract numerical size of RAM in kilobytes
	export KBMEMTOTAL=$(echo "$_memtotstr" | egrep -o '[0-9]{8}')

	# after checking the amount of ram, this is the value that its compared against
	local devdetect_mem_threshold=$((17*1024*1024)) #17gb

	# an id that represents the device were on.  0=desktop, 1=laptop, 2=error
	export devid=2

	echo "Installed System Memory: $KBMEMTOTAL"

	if [ $KBMEMTOTAL -gt $devdetect_mem_threshold ]; then
		# on desktop
		echo 'ASHE has detected Desktop/Server hardware, will NOT run wifi-setup.'
		dhcpcd # sometimes this needs to be ran so lets run it just in case
		swapon /dev/sdb3
		devid=0
	else
		# on laptop
		wifi-menu
		echo 'wifi-menu exited, assuming success.'
		# echo "Return code: $#" TODO
		echo 'It will take up to 10 seconds to resolve DNS'
		echo 'Please hold as we give DNS time to boot up.'
		echo 'If you experience DNS issues on the update that I am about to do, then'
		echo 'cancel the script (Ctrl-C) and launch it when your connection is fixed.'
		sleep 7
		# TODO: this laptop has a 4k screen, lets show an image in the console
		echo 'Almost there!'
		devid=1
		sleep 3
	fi

	# pre-update message
	echo 'Performing system update, this will take a bit.'
	echo 'If prompted for installation, please confirm (press y)'

	echo 'analyzing existing cache...'
	# ls /fdp/pkgcache
	cp /fdp/pkgcache/* /var/cache/pacman/pkg/ -vun
	
	# TODO: system upgrade prompt

	# install tmux
	pacman --color=always -Sy base git tmux --noconfirm --needed

	# install git
	set_git_config

	# Call core.zsh using it's absolute path so that it is more likely to find the script
	# if script is not found, you would need to execute it manually.
	zsh "/fdp/ashe/zsh/boot/core.zsh" $devid
}

export init_core
