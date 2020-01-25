PHONY: install-firsttime install

PREFIX = ${HOME}/.zsh
AUTOLOAD = ${PREFIX}/autoload
COPYFILE = cp -v
COPYDIR = cp -rv
MACROPROC= m4
STARTFILE=ashe-zshloader.zsh

install: clean
	mkdir -p ${PREFIX}/
	${COPYDIR} autoload/ ${PREFIX}/ -r
	${COPYDIR} plugins/ ${AUTOLOAD}/ -r
	${COPYFILE} zshrc ${PREFIX}/${STARTFILE}
	@echo 'Installation complete!'
	@echo 'In addition, any scripts you put into ~/autoload/ will be automatically loaded with ZSH!'

install-firsttime: install
	echo "source ${PREFIX}/ashe-zshloader.zsh" >> ${PREFIX}/.zshrc

clean:
	rm -rfv ${AUTOLOAD}
	rm -fv ${PREFIX}/${STARTFILE}
	@echo 'Remember to remove the line at the bottom of your zshrc file that loads this plugin.'
