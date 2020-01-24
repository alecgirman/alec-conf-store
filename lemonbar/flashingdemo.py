outfile = open('/tmp/menutest', mode='w+')

from math import sin
from time import sleep

def rgb2int(r, g, b):
    """ rgba2int: Converts an RGB value into an integer

    :param r The red value (0-255)
    :param g The green value (0-255)
    :param b The blue value (0-255)

    :returns: The RGB value compact into a 24 byte integer.
    """
    r, g, b = int(abs(r)), int(abs(g)), int(abs(b))
    return (r << 16) + (g << 8) + b

def rgba2int(r, g, b, a):
    """ rgba2int: Converts an RGBA value into an integer

    :param r The red value (0-255)
    :param g The green value (0-255)
    :param b The blue value (0-255)
    :param a The alpha value (0-255)

    :returns: The RGBA value compact into a 4 byte integer.
    """

    return (r << 24) + (g << 16) + (b << 8) + a

def rgb2hexstr(r, g, b):
    """ rgb2hexstr: converts rgb values into an HTML like color string

    :r: The red value
    :g: The green value
    :b: The blue value
    :returns: the hex string

    """

    return '{val:06X}'.format(val=rgb2int(r, g, b))

counter = 0.01
multiplier = lambda: sin(counter)
brightness = lambda: 255 * multiplier()

outputfmt = '%{{F#{val}}} Hello World!\n'
while counter < 20:
    outfile.write(outputfmt.format(val=rgb2hexstr(brightness(), 0, 0)))
    outfile.flush()
    counter += 0.3
    sleep(0.1)
