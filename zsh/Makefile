.PHONY: install

install:
	@echo 'Warning: this will overwrite your .zshrc.'
	@echo 'Press Ctrl-C within the next three seconds to cancel...'
	@sleep 3
	cp -iuv desktop.zshrc ~/.zshrc
	mkdir -p ~/.zsh
	cp -iuv components/ ~/.zsh/plugins -r
	cp -iuv functions.zsh ~/.zsh/
	cp -iuv vars.zsh ~/.zsh/
	cp -iuv alias.zsh ~/.zsh/
	cp -iuv autoload/ ~/.zsh/autoload -r
	@echo 'Installation complete!'

# same as install just without warnings.
# IT WILL OVERRIDE YOUR CONFIG
dotsync:
	cp -u desktop.zshrc ~/.zshrc
	mkdir -p ~/.zsh
	cp -u components/ ~/.zsh/plugins -r
	cp -u functions.zsh ~/.zsh/
	cp -u vars.zsh ~/.zsh/
	cp -u alias.zsh ~/.zsh/
	cp -u autoload/ ~/.zsh/autoload -r
	@echo 'Installation complete!'
