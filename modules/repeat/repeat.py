##!/usr/bin/env python3

import os, sys



def cmd_help(infotype: str):
    '''
    Prints the help or ussage info that is invoked with <cmd> --help or help cmd (and --usage)

    @param infotype: either 'help' or 'usage', basically the help request command line arg without the dashes.o

    If infotype is invalid, nothing is printed and this invocation is ignored.
    '''
    print('repeat is a tiny utility to repeat command execution at any interval of your choice, with no limit unlike watch.')

    if infotype == 'help':
        print('repeat is designed to be very flexible in how delays are set.  You can either just state the delay')
        print('directly trailing the command or by using the standard unix/posix argument conventions.')
        print('The -d or --delay option lets you specify the delay in which to repeat execution, meaning the')
        print('following two calls are identical:\n\n\trepeat -d 200ms echo hi\n\n\trepeat 200ms echo hi')
        print('\n\nOnly the delay argument may be specified without a keyword but all arguments are listed below.')
        print('-a --async\ - Execute the command asynchronous') 
        print('-c --cmd=[cmd] - Specify the command to run.  Quotes around the command are optional but quotes within the command will remain.') 
        print('-d --delay=[milliseconds] - Specify delay in milliseconds to execute command')
        print('-f --file=[filename]\t\t- Repeat reading a file.  Outputs the entire file each iteration.')
    elif infotype == 'usage':
        pass
    else:
        pass # when string is unknown, default behavior is just nothing.


if __name__ == '__main__':
    print(f'function invoked with {sys.argv}')
else:
    print(f'__name__ was detected as {__name__}')
