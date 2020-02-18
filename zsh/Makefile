PHONY: install-firsttime install

PREFIX = ${HOME}/.zsh
AUTOLOAD = ${PREFIX}/autoload
COPYFILE = cp -v
COPYDIR = cp -rv
MACROPROC= m4
STARTFILE=default-loader.zsh

# TODO: test this, a non destructive uninstall is crucial right now.
SAFEDELETE=cp -b $1 | rm -rfv $1

install: uninstall
	vim build.yml
	@echo "The default instal location is $(PREFIX).  If this is ok, then just hit enter on the prompt.  otherwise, enter a new path in the text entry."
	@printf "PREFIX \033[32m>\033[0m" 
	mkdir -p ${PREFIX}/ | read newpath
	# cat /ashe/zsh/autoload/*.zsh > ${PVREFIX}/compiled.zsh
	# ${COPYDIR} plugins/ ${PREFIX}/
	# ${COPYFILE} zshrc ${PREIX}/${STARTFILE}

oldinstall: uninstall
	TODO  boardmkdir -p ${PREFIX}/
	${COPYDIR} autoload/ ${PREFIX}/
	${COPYDIR} plugins/ ${AUTOLOAD}/
	${COPYFILE} zshrc ${PREFIX}/${STARTFILE}

# TODO: Make load script a variable so user can install custom script
install-firsttime: install
	echo "source ${PREFIX}/ashe-zshloader.zsh" >> ${PREFIX}/.zshrc

uninstall:
	$(SAFEDELETE) ${AUTOLOAD}
	$(SAFEDELETE) ${PREFIX}/${STARTFILE}
	@echo 'Remember to remove the line at the bottom of your zshrc file that loads this plugin.'

# vim: ft=make
