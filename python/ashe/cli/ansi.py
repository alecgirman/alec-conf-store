import os
import sys

ansi_csi = "\x1b["
ansi_reset = ansi_csi + '0m'

# there are 7 other colors... just gonna find out which one is which
colors = {
    'red': '31m',
    'green': '32m',
    'yellow': '33m',
    'blue': '34m',
    'purple': '35m',
    'cyan': '36m',
}

bright_colors = {
    'red': '91m',
    'green': '92m',
    'yellow': '99m',
    'blue': '94m',
    'purple': '95m',
    'cyan': '96m',
}


colbegin = ansi_csi + bright_colors['red']
colend = ansi_reset

def colorprint(color, msg, *args, **kwargs):
    """Prints any given arguments in color.

    ### colorprint(color, msg, *args, **kwargs)

    Arguments
    ----------

    * color (str): The color to print in
    * msg: The content that you'd like to print
    * args and kwargs: For builtin print compat.  args and kwargs is passed
    directly to print so this is where you put special print args.

    Setting the color
    -----------------
    The color paramater is a string that you can take from either the colors
    dict or the bright_colors dict.

    Note
    ------
    * This function works like C's printf instead of python's print
    meaning that there is NO new line added after `msg`.  In order to add
    a new line, you must put a newline character (\n)at the end of `msg`.

    """

    # make print not print an extra line if it wasnt specified
    if not 'end' in kwargs:
        kwargs['end'] = ''

    print(ansi_csi + color + msg + ansi_reset, *args, **kwargs)

for color in colors.values():
    colorprint(color, 'COLORED TEXT IN PYTHON\n')

# its not bright...but ill call it a day
for color in bright_colors.values():
    colorprint(color, 'BRIGHT COLORED TEXT IN PYTHON\n')


# Last Modified: 2019-11-14T06:30:50
