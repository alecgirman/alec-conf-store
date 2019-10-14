fx() {
    # function fx
    # args:
    # 	* 'reset': pass 'reset' as the only argument to reset to white on black
    # 	* fg (opt): 0 for foreground (defualt), 1 for background
    # 	* red: red value (0-255)
    # 	* green: green value (0-255)
    # 	* blue: blue value (0-255)
    #
    # If 3 values are passed, fg defaults to 0 (setting foreground/text color)
    # If 4 values are passed, fg is interpreted first, followed by R, G, and B
    # If 5 values are passed, then style is interpreted as the 5th argument.

    # reference
    # \x1b \x5b {bg} ; 2 ; {red} ; {green} ; {blue} m

    echo "Num args: $#"
    echo "0:$0  1:$1  2:$2  3:$3  4:$4  5:$5"

    local csi="\x1b\x5b"
    local fgc=38
    local red=255
    local green=255
    local blue=255
    local style=2

    # handle single args
    if [ $1 = "reset" ] || [ $1 = "RESET" ]; then
	echo '1 arg'
    elif [ $# = 3 ]; then
	red=$1
	green=$2
	blue=$3
    elif [ $# > 2 ] && [ $# < 6 ]; then
	fge=$((($1 * 10) + 38))
	red=$2
	green=$3
	blue=$4
    	if [ $# = 5 ]; then
	    style=$5
	fi
    else
	rgb 255 0 0
	echo 'Incorrect invocation of the fx command.' 
	rgb reset
	echo 'Usage;'
	echo 'function fx()'
	echo 'args:'
	echo '	* `reset`: pass `reset` as the only argument to reset to white on black'
	echo '	* fg (opt): 0 for foreground (defualt), 1 for background'
	echo '	* red: red value (0-255)'
	echo '	* green: green value (0-255)'
	echo '	* blue: blue value (0-255)'
	return
    fi

    # maybe add debugging
    printf "Debug code: %02x %02x %02x %02x %02x\n" $fgc $red $green $blue $style
    
    local rgbansi="%d;%d;%d;%d;%dm"
    printf $csi
    printf "$rgbansi" $fgc $style $red $green $blue
}

zshref() {
    rgb 255 0 0
    printf "\n\n----- ASHE Shell Programming Reference -----\n"
    rgb 255 255 255
    if [ "$1" = 'if' ]; then 
	printf "if [ \"<expr>\" = \"value\" ]; then\n"
	printf "\techo stuff\n"
	printf "fi\n"
	printf "\nwhere <expr> is a variable prefixed with a \'$\'"
	printf "Remember two key thigns:\n"
	printf "\t* the quotes in the variable comparison\n"
	printf "\t* the space between each token\n"
    else
	echo "$1"
    fi
}
