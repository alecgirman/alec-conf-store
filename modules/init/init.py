#!/usr/bin/env python3

import os
import sys

echo = print

stdout = sys.stdout
stdin = sys.stdin
stderr = sys.stderr
sh = os.system

log = stdout.write
logln = lambda x: stdout.write(x + '\n')
error = stderr.write


############################
#  HARDWARE CONFIGURATION  #
############################

def set_brightness(brightness: int):
    """
    Set the display's brightness.  This was built to work on the Microsoft
    Surface Book 2, so your numbers may vary.

    Arguments
    ------------
    **brightness (int)**: the brightness value to set to.  See below for more info
    on how to obtain these values for your PC.

    In my case, the default was something around 1300 (*_backlight/brightness)
    while the maximum was 7500 (*_backlight/max_brightness)

    Check your max_brightness file before changing anything
    """

    try:
        # change the brightness to max, default brightness is really low
        brt_file = open('/sys/class/backlight/intel_backlight/brightness', 'wt')
        brt_file.write(str(brightness))
        brt_file.close()

    except:
       echo('Unable to write to brightness file, make sure you have perrmission!')
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
    # 4 - Invalid password key length, must be 8-63 chars|
    # 255 - see 1|
    # Any other number|Undefined|

    if posixcode == 0:
        logln('Connection Successful!')
    elif posixcode == 1 or posixcode == 255:
        logln('Exit code indicates user aborted the utility, skipping this.')
    elif posixcode == 2 or posixcode == 4:
        logln('Failed to connect, you likely put in the wrong password.')
    elif posixcode == 3:
        logln('The wifi connection utility could not find any networks.')
    else:
        logln('Undefined return code from wifi-menu')

def configure_internet(pref_default: int):
    logln('----- Networking Utilities ------')
    logln('Select a utility by its number or letter from the list below.')
    logln('0. (Q)uit/(N)one.  This is the default option for unknown input.')
    logln('1. (d)hcpcd - Automatic DHCP configuration')
    logln('2. (w)ifi-(m)enu - Manage wireless network connections')
    logln('Enter your selection and press enter.')
    log(f'Configuration (default={pref_default}) > ')
    stdout.flush()
    choice = stdin.readline()[:-1].lower()
    # everything up to here is confirmed to work

    if len(choice) == 0:
        choice = str(pref_default)
        logln('No option selected so default will be used')

    if '1' in choice or 'd' in choice:
        sh('dhcpcd')
    elif 'w' in choice or 'm' in choice or '2' in choice:
        wifi_setup()
    elif '0' in choice or 'q' in choice or 'n' in choice:
        pass
    else:
        logln('Error, unknown option for network config.')



############################
#  SOFTWARE CONFIGURATION  #
############################





if __name__ == '__main__':
    # detect device and run appropriate init function
    # this is much easier with python than zsh tbh
    ncpus = os.cpu_count()
    logln(f'Determining system, I count {ncpus} CPUs.')
    if ncpus == 12:
        configure_internet(pref_default=1)
    elif ncpus == 8:
        set_brightness(7500)
        configure_internet(pref_default=2)
    else:
        logln('FATAL ERROR: Unknown Device!')
        exit(1)

    configure_python()
else:
    pass # do nothing if imported
