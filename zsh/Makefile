.PHONY: install

install:
	@echo 'Warning: this will overwrite your .zshrc.'
	@echo 'Press Ctrl-C within the next three seconds to cancel...'
	@sleep 3
	cp -iv desktop.zshrc ~/.zshrc
	mkdir -p ~/.zsh
	cp -iv components/ ~/.zsh/plugins -r
	cp -iv functions.zsh vars.zsh alias.zsh ~/.zsh/
	@echo 'Installation complete!'
