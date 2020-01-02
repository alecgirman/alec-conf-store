#!/usr/bin/python
# ITS 2020, PYTHON 2 IS DEAD,
# /usr/bin/python now refers to python3.8

import sys, time

def main():
    n = 0

    # works in dzen2 and lemonbar...
    # TODO: see if polybar handles ipc like this
    while True:
        print('Hello World ' + str(n))

        # VERY IMPORTANT DO NOT REMOVE THIS LINE
        #     - MANAGEMENT
        sys.stdout.flush()
        n = n + 1
        time.sleep(1)

if __name__ == '__main__':
    main()
