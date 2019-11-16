#001

##Xinit crash on startup or major glitches



Description: 

* What works?

    * After starting, startup windows are visible and interactive

    * after a delay, krunner works

* What doesn't work?

    * No background or access to any KDE UI
        
    * Ctrl-Alt-T does not work either.

##Possible causes:

* Installing python 3.8 over 3.7

* installing kde-applications before booting into UI

* Unicode library out of date, could be a dependency issue



##Steps to fix

1. Reproduce

    * Try using the possible causes to reproduce the issue.  If successfull, then save all logs.

2. Fix

    * If a clean reboot fixes the problem, then its likely an issue due to interrupinting pacman.

    * If it is caused by python 3.8, then use the default version and make a venv

    * If it is the unicode library, do some research into this one then
