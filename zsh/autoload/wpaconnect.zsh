function wpa_prompt() {
    local debugging=true

    # check if wpa_supplicant is installed
    # https://stackoverflow.com/questions/7522712/how-to-check-if-command-exists-in-a-shell-script
    if ! type "wpa_supplicant" > /dev/null; then
        echo 'You must have wpa_supplicant installed to use this.'
        echo "$(tput setaf 5)You mjsth have wpa_supplicant installed in order to use these WPA utilities.$(tput setaf 0)"
        echo ''h
        echo ''
        echo ''
        echo ''
        echo ''
        echo ''
        echo ''
        echo ''
        echo ''

    ip link set up wlp1s0

    # TODO: instead of checking return value, check the output of ip link
    if [[ $? -ge 0 ]]; then
        echo 'Failed to find wifi adapter (ip link returned non-zero)  Make sure wireless firmware is installed.'
        echo "Surface Book 2 Users: This means you probably dont have jakeday/qzeds kernel patches installed."

        # Even if link fails, give them the option to continue with the setup
        # On the Surface Book 2, wpa_supplicant does this for you so this may
        # happen on some SB2 devices, hence why it is implemented.
        echo 'Would you like to continue anyway?  Only continue if you know what youre doing.'
        read -q 'wificontinue?Continue (y/N): '

        if [[ "$wificontinue" = "y" ]]; then
            echo 'Continuing without configuring adapter.'
        else
            echo 'Exiting: Failed to confiugre adapter.'
            exit 1 # We were unable to find the adapter and the user does not wish to continue, return 1 indicating"
        fi
    fi

    # prompt if user is connecting to a new network
    read -q 'newnetwork?Are you connecting to a new network? (y/N): '

    # in most cases, we are not, so attempt connection after prompt)

    if [[ "$newnetwork" = "n" ]]; then
        wpa_supplicant -iwlp1s0 -c/etc/wpa_supplicant.conf
    else
        read 'ssid?Input network SSID: '
        printf "\n"
        read 'pass?Input network password: '
        printf "\033[2K"

        # Get SSID and pass from user.  AT this point, we don't know if this information
        # is correct, so we wont append it to the main config, but instead, store it in a
        # temporary file and if it is correc, then well go from there.
        let wpa_temp=/tmp/wpa.tmp
        wpa_passphrase $ssid $pass > $wpa_temp

        # for security reasons, these should NEVER be left set
        unset pass
        unset ssid
    fi
}


# otherwise if a new connection needs to be made
# prompt for usernamae and password
# DEBUG: print out wpa_passphrase config output
# append wpa_passphrase output to existing wpa_supplicant.conf 
