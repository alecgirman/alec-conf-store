zshref() {
    printf "\n\n----- ASHE Shell Programming Reference -----\n"
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
