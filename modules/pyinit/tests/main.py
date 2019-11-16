

def test_get_brightness(expected_value, verbose=False):
    '''
    Verfies that a brightness change was successful.  This should be called by the setup script
    but if you are having brightness problems, this function can help a little in fixing it.

    If your brightness is too low and this function returns True, then it is likely a hardware proglem.

    '''
    brt_file = open('/sys/class/backlight/intel_backlight/brightness', 'rt')
    brt = 0

    brt = int(brt_file.readline())
    brt_file.close()

    print(f'verify_brt: value of brt is {brt}')
    return brt == expected_value

# -*- coding: utf-8 -*-

def test_set_brightness(value, verbose=False):
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
        bytes_written = brt_file.write(str(value))
        brt_file.close()
        assert bytes_written > 0

    except:
        raise IOError()
