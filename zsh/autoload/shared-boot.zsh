function shared-default() {
    if [[ "$HOST" = "workstation" ; then
        echo 'Starting wifi'
        ip link set wlp1s0 up
        wpa_supplicant -iwlp1s0 -c/etc/wpa_supplicant.conf &> /dev/null &
        sleep 2

    else
        echo 'Starting dhcpcd'
        dhcpcd
        sleep 2

        echo 'Starting pulseaudio'
        pulseaudio &> /dev/null &
        sleep 2

        # TODO: a console ascii transition to white
        # then a high-mid gamma fade would look awesome!

        startx /usr/bin/i3
        # dockerd &> /dev/null &
    fi
}
