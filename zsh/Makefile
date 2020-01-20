PHONY: install

PREFIX = ${HOME}

install:
	cp -uv zshrc ${PREFIX}/.zsh/ashe-zshloader.zsh
	mkdir -p ${PREFIX}/.zsh/
	cp -uv components/ ${PREFIX}/.zsh/plugins -r
	cp -uv functions.zsh ${PREFIX}/.zsh/
	cp -uv vars.zsh ${PREFIX}/.zsh/
	cp -uv alias.zsh ${PREFIX}/.zsh/
	cp -uv autoload/ ${PREFIX}/.zsh/autoload -r
	echo "source ${PREFIX}/.zsh/ashe-zshloader.zsh" >> ${PREFIX}/.zshrc
	@echo 'Installation complete!'
