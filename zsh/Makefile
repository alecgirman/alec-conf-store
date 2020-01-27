PHONY: install-firsttime install

PREFIX = ${HOME}/.zsh
AUTOLOAD = ${PREFIX}/autoload
COPYFILE = cp -v
COPYDIR = cp -rv
MACROPROC= m4
STARTFILE=ashe-zshloader.zsh

install: clean
	mkdir -p ${PREFIX}/
	cat /ashe/zsh/autoload/*.zsh > ${PREFIX}/compiled.zsh
	${COPYDIR} plugins/ ${PREFIX}/
	${COPYFILE} zshrc ${PREFIX}/${STARTFILE}

oldinstall: clean
	mkdir -p ${PREFIX}/
	${COPYDIR} autoload/ ${PREFIX}/
	${COPYDIR} plugins/ ${AUTOLOAD}/
	${COPYFILE} zshrc ${PREFIX}/${STARTFILE}

install-firsttime: install
	echo "source ${PREFIX}/ashe-zshloader.zsh" >> ${PREFIX}/.zshrc

clean:
	rm -rfv ${AUTOLOAD}
	rm -fv ${PREFIX}/${STARTFILE}
	@echo 'Remember to remove the line at the bottom of your zshrc file that loads this plugin.'
