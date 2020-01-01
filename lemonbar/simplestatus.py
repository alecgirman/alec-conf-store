#!/usr/bin/python

import sys, time

def main():
    n = 0
    while True:
        print('Hello World ' + str(n))
        sys.stdout.flush()
        n = n + 1
        time.sleep(1)

if __name__ == '__main__':
    main()
