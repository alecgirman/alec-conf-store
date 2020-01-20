if [[ $HOSTNAME == 'workstation' ]]; then
    function surfaceboot-default() {
        echo 'Starting wifi'
        ip link set wlp1s0 up
        wpa_supplicant -iwlp1s0 -c/etc/wpa_supplicant.conf &
        sleep 2
        pulseaudio & dhcpcd
        startx /usr/bin/i3
    }
fi
