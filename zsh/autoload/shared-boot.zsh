function system-boothook() {
    if [[ $HOST == "workstation" ]]; then
        printf "Should I attempt to connect to a wireless network right now?\n"
        read -rs dowificonnect

        if [[ $dowificonnect == 0 ]]; then
            printf "Connect to\n\n"
            printf "    -  $fg[yellow](E)xisting network$fg[default]\n"
            printf "    -  $fg[green](N)ew network?$fg[default]\n"
            read -rs conntype
        fi
    fi
    echo ''
    ip link set wlp1s0 up
    wpa_supplicant -iwlp1s0 -c/etc/wpa_supplicant.conf &> /dev/null &
    sleep 2
}
