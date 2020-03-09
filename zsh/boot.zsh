cd /root
source .zsh/compiled.zsh

# Perform said check and only execute the fragile commands if we are truly starting up
# for the first time.
if [[ ! -f /tmp/.host-did-init ]]; then
	# make a temporary file so anytime we open the terminal, it doesn't try to start gnome again.
	# This is because if it does, then everything crashes.
	touch /tmp/.host-did-init
	echo "single boot check evaluated again"
	nm-online
fi

printf "Select a Window Manager:\n"
printf "G: Gnome\n"
printf "K: KDE Plasma\n"
printf "i: i3\n"
printf "n: None: Stay in virtual console\n"
read -rsk 1 wm_sel

if [[ "$wm_sel" == "g" ]]; then;
	startx
elif [[ "$wm_sel" == "k" ]]; then;
	startx /usr/bin/startplasma-x11
elif [[ "$wm_sel" == "i" ]]; then;
	startx /usr/bin/i3
else
	echo 0 > /dev/null
fi
