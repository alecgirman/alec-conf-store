#!/usr/bin/env python3

import os
#import sys

echo = print
sh = os.system

def verify_brt():
    '''
    Verfies that a brightness change was successful.  This should be called by the setup script
    but if you are having brightness problems, this function can help a little in fixing it.

    If your brightness is too low and this function returns True, then it is likely a hardware proglem.

    '''
    brt_file = open('/sys/class/backlight/intel_backlight/brightness', 'rt')
    brt = 0

    # is_readable doesnt exist
    # if brt_file.is_readable():
    #     brt = int(brt_file.readline())
    # else:
    #     print('Error reading from brightness file!')

    brt = int(brt_file.readline())
    brt_file.close()

    print(f'verify_brt: value of brt is {brt}')
    return brt == 7500

def max_brightness():
    """
    One of the first things executed when running on the laptop, this function
    sets the brightness to maximum because the default brightness is about 20%.

    The number used for the brightness in this scenario may be significantly
    different than what will work best on your device.  This code will run
    on a Microsoft Surface Book 2 but I'm not sure about other devices.

    Consult with the max_brightness file in the same directory.
    """

    try:
        # change the brightness to max, default brightness is really low
        brt_file = open('/sys/class/backlight/intel_backlight/brightness', 'wt')
        brt_file.write("7500")
        brt_file.close()

        if not verify_brt():
            echo('Unsable to verify that the brightness had changed.')

    except:
       echo('Unable to change the brightness...looks like you have to fix this')
       sh('sleep 1')
       #sh('$EDITOR /fd/init/laptop.py') # on failure, open this file in vim LOL


def wifi_setup():
    """Runs the wifi-menu utility built into Arch Linux.  This step is only
    needed on my laptop.

    This function also handles the output command and responds accordingly.
    It is important to read wifimenu-returncodes.md for details on what is
    going on with the return code.
    """

    exitcode = sh('wifi-menu')
    posixcode = exitcode >> 8

    # 0 - Connection successful|
    # 1 - Cancelled by user (hit Esc)|
    # 2 - Network found but failed to connect|
    # 3 - No networks were found|
    # 4 - Invalid password key length, must be 8-63 cjhars|
    # 255 - see 1|
    # Any other number|Undefined|

    if posixcode == 0:
        print('Connection Successful!')
    elif posixcode == 1 or posixcode == 255:
        print('Exit code indicates user aborted the utility, skipping this.')
    elif posixcode == 2 or posixcode == 4:
        print('Failed to connect, you likely put in the wrong password.')
    elif posixcode == 3:
        print('The wifi connection utility could not find any networks.')
    else:
        print('Undefined return code from wifi-menu')

def main():
    '''
    Begins the initialization process on my laptop.  This code is specific for
    my laptop and may have unintended conseqnences when ran on a different device.
    '''

    print('Setting maximum brightness')
    max_brightness()
    print('Brightness value set, verifying file')

    if verify_brt():
        print('Brightness change verified successfully!')
    else:
        print('Unable to verify brightness change!')

    wifi_setup()


# check if executed by user
if __name__ == '__main__':
    main()
else:
    pass # do nothing if imported


# wifi-menu
#
# if [ $? = 0 ]; then
# 	watch -g ping www.google.com
# elif [ $? = 1 ]; then
# 	echo 'wifi-menu says it was aborted by user.  If you hit <Esc>, then dont worry about this message.'
#
# init-common
