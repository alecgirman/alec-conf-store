PHONY: install

PREFIX = ${HOME}

install:
	cp -uv zshrc ${PREFIX}/.zsh/ashe-zshloader.zsh
	mkdir -p ${PREFIX}/.zsh/autoload/ashe
	cp -uv components/ ${PREFIX}/.zsh/plugins -r
	cp -uv autoload/ ${PREFIX}/.zsh/autoload/ashe/ -r
	cp -uv functions.zsh ${PREFIX}/.zsh/autoload/ashe/
	cp -uv alias.zsh ${PREFIX}/.zsh/autoload/ashe/

	@echo 'Installation complete!'
	@echo 'In addition, any scripts you put into ~/.zsh/autoload/ will be automatically loaded with ZSH!'

source-from-zshrc:
	echo "source ${PREFIX}/.zsh/ashe-zshloader.zsh" >> ${PREFIX}/.zshrc

uninstall:
	rm -rv ${PREFIX}/.zsh/autoload/ashe
	rm -v ${PREFIX}/.zsh/ashe-zshloader.zsh
	echo 'Remember to remove the line at the bottom of your zshrc file that loads this plugin.'
