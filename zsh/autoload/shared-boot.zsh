function system-boothook() {
    if [[ "$HOST" = "workstation" ]]; then
        echo 'Starting wifi'
        ip link set wlp1s0 up
        wpa_supplicant -iwlp1s0 -c/etc/wpa_supplicant.conf &> /dev/null &
        sleep 2

        echo 'Starting dhcpcd...'
        dhcpcd &> /dev/null &
        sleep 2

        startx /usr/bin/i3
    else
        echo 'Starting dhcpcd...'
        dhcpcd &> /dev/null &
        sleep 2

        echo 'Starting pulseaudio...'
        pulseaudio &> /dev/null &
        sleep 2

        # TODO: a console ascii transition to white
        # then a high-mid gamma fade would look awesome!
        
        echo 'Starting docker daemon...'
        dockerd &> /dev/null &
        sleep 1
        neofetch
        sleep 1

        startx /usr/bin/i3
    fi
}
