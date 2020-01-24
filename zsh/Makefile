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

	# This avoids spamming the users zshrc with the load function.
	sourcelineexists := $(shell grep "ashe" ~/.zshrc)
	ifeq ($(.SHELLSTATUS), 1)
		echo "source ${PREFIX}/.zsh/ashe-zshloader.zsh" >> ${PREFIX}/.zshrc
	endif

	@echo 'Installation complete!'
