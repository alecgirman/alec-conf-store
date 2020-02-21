# Exit codes of wifi-menu

### Purpose: To allow scripts to detect the output of wifi-menu and be able to respond accordingly.

I know how to do most things in linux...except for connecting to a wireless network (I've had to do
it a few times but I'd hvae to look it up if I had to do it manually.  Luckily, arch has a wifi-menu
tool which is as simple as every OS wifi connection utility.  This is a separate script , which is
written in bash and is located in /usr/bin/wifi-menu.  At the bottom of the file, you will find
the code that gose over return values, as shown below.  With most text editors, while viewing this
file, yoo can open the wifi-menu file by using your editor's 'go to definition' or 'go to file'.  In
vim and neovim, `gf` opens the file under the cursor or use `300gF` to go to the lines shown below.

### Source

```bash
case $RETURN in
    0|2)  # Connected | Connecting failed
        ;;
    1)  # Canceled
        clear
        ;;
    3)  # No networks found
        report_error "No networks found"
        ;;
    4)  # Invalid passphrase length (WEP keys have tighter restrictions)
        clear
        report_error "Passphrase must be 8..63 characters"
        ;;
    255)  # ESC or error
        clear
        report_error "Aborted"
        ;;
    *)  # Should not happen
        report_error "Unexpected return code from dialog: $RETURN"
        RETURN=7
        ;;
esac
exit $RETURN

```

### Reference Table


|Exit Code|Description|
|---------|-----------|
|0|Connection successful|
|1|Cancelled by user (hit Esc)|
|2|Network found but failed to connect|
|3|No networks were found|
|4|Invalid password key length, must be 8-63 chars|
|255|See 1|
|Any other number|Undefined|

**Note: The source code it a bit confusing in that 1 is returned if user cancels it but 255 if the
user inputs ESC.  In times where I abort wifi-menu due to already being connected, it returns 1 when
I hit Escape.  I'll look into this more sometime but my guess is that 255 is returned from doing
Ctrl-Z or Ctrl-D in your terminal, which suspends the process and sends EOF char, respectively.**

# Exit Codes and Python

The easiest way to invoke another process in python is with `os.system`, and in my code, you will
see that abbreviated to `sh()` (this has nothing to do with /usr/bin/sh).  During development, I
wanted to use this function to launch`wifi-menu` and check its status with the return value of
`os.system`, which is a number.  After executing `ret = os.system('echo test')`, then `ret` will
be equal to 0 as opposed to None.  If you try to store a function's return value in a variable and
the function does not return anything, just like JavaScript's `undefined`, the variable will be 
equal to `None`, so clearly they intended to return a value.  The statement given above is expected
to return 0 because 0 is the global exit code for success.  

Howver, when given a statement that does not return 0, the value returned from `os.system` was 
always 256 regardless of the return code.  I was able to figure this out because I wanted to be
sure that `os.system`'s behavior was similar to C/C++ `system()` as defined in `stdlib.h` as such:

```cpp

/* Execute the given line as a shell command.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int system (const char *__command) __wur;

```

So as you can see, the system function **in C** returns an int (32-bit signed integer).  It's actual
documentation can be found in Linux manual pages with `man 3 system`.  Alternatively, it can be found
[online](http://man7.org/linux/man-paages/man3/system.3.html).  

After spending awhlie trying to fugure out what the problem is, it turns out that there's a big difference
between how Windows (what I used prior to Linux) and the POSIX 7 Standards, which Linux overall is mostly
compliant with.  

* Windows - 32 bit return code where 0 typically represnts success, but there is no standard on
    what the other numbers should reprsent.  Understanding return codes is application-independent.
* Linux (POSIX): Return codes are also 32-bit, but the user-defined value can only be 8-bits.
    * Many error codes are standardized and should not be used in cases that dont meet their criteria.
    * Unlike Windows, Linux has standards on error codes, with the special ones shown in the table below.
    * Every other number in the 0-255 range that is not in the table is application-dependent.

### Linux Special Error Code Meanings

|Exit Code|Meaning|
|--------|--------|
|0|Success or No error occurred.|
|1|General application error|
|2|Syntax or runtime error in a script|
|126|Error invoking executable, the file likely isn't executable or is missing a shebang.|
|127|Command not found|
|128|Invalid user-requested return code (such as attempting to return a float or string)|
|128+n|Application terminated from receiving signal *n*.|
|130|Application terminated by user (Ctrl-C), this fits in with the previous listing because SIGINT=2|
|255|The requested error code was out of bounds (replaced with 255)|

Some additional error codes built mainly for C/C++ Developers when checking the status of an operation, have
a small set of additional error codes defined in /usr/include/sysexits.h.  These error code defines are shown
below, however, the header file has more in-depth explanations preceding the preprocessor defines.
These codes conform with the special code standard so there are no error code collisions.  However, this leaves
script develoeprs with less 'custom' codes, but there are many other ways in linux for processes to communicate
so for me, this shouldn't be too much of an issue.

```cpp

#define EX_OK		0	/* successful termination */

#define EX__BASE	64	/* base value for error messages */

#define EX_USAGE	64	/* command line usage error */
#define EX_DATAERR	65	/* data format error */
#define EX_NOINPUT	66	/* cannot open input */
#define EX_NOUSER	67	/* addressee unknown */
#define EX_NOHOST	68	/* host name unknown */
#define EX_UNAVAILABLE	69	/* service unavailable */
#define EX_SOFTWARE	70	/* internal software error */
#define EX_OSERR	71	/* system error (e.g., can't fork) */
#define EX_OSFILE	72	/* critical OS file missing */
#define EX_CANTCREAT	73	/* can't create (user) output file */
#define EX_IOERR	74	/* input/output error */
#define EX_TEMPFAIL	75	/* temp failure; user is invited to retry */
#define EX_PROTOCOL	76	/* remote error in protocol */
#define EX_NOPERM	77	/* permission denied */
#define EX_CONFIG	78	/* configuration error */

#define EX__MAX	78	/* maximum listed value */

```
