## (1) Small Bug: Xinit no longer works as usual, crashes on startup

Description: xinit crashes on startup after a typical fullboot script.  Error output (see below)
	The report asserts that it can't load libicu18n.so.*, (* = version) which is used for unicode.

* Upgradding .64 -> .65 fixes this crash, howwever, KDE plasma does not work correctly.
* I do not know if these issues are corellated, but I'm going to assume they are

TODO: add log output from xinit

 

## (2) Critical Bug: plasmashell crashes on start

Description: This is part 1 of this bug, because I think they're related.  When libicu is installed, KDE and
	X11 boot up as normal but plasmashell crashes (part 2)

* What works?

    * After starting, any programs used within the last activity will open and work (for the most part)

    * after a delay, krunner works (alt-f2)

* What doesn't work?

>    * No background or access to any KDE UI
        
>    * Ctrl-Alt-T does not work so I'll safely assume that plasmashell is responsible for that.

	* It seems Both of these side effects are believed to be linked to `plasmashell` crashing.  KRunner
	Dolphin can still open Konsole.  These issues appear to be clearly bound to `plasmashell`.

## Possible causes:

* Installing python 3.8 over 3.7 (11/16 update: this doesn't seem to be the cause, but there's
no way to confirm that, especially since KDE uses Python quite alot.

* installing kde-applications before booting into UI

	* Installing/launching kmix **before** launching `plasmashell`

* Unicode library libicu out of date as indicated by the error error message **(Pt. 1)**

## Steps to reproduce

    * Try using the possible causes to reproduce the issue.  If successfull, then save all logs.

## Resolution ideas

    * ~If it is caused by python 3.8, then use the default version and make a venv~

    * If it is the unicode library, ~do some research into this one then~.  

	* **Seems that a required dependency, libicu is not being installed automatically**

	* Installing this library fixes the initial problem of xinit not booting, but now plasmashell wont start.
	This means that I can run GUI software in KDE, but I have no desktop, start button, menu, or widgets.
	Only way to launch programs is 'Open terminal here' in Dolphin or by running it in krunner.

	* **Problem has to do with plasmashell**

	* **Problem Resolved**: It is still unknown what caused it, but refreshing packages and **doing a system upgrade** solved the problem.


