.PHONY: install-desktop

# TODO: Install fonts


install-auto:
	ifeq (${HOSTNAME}, tux)
		 make install-desktop
	else
		 make install-surface
	endif

install-desktop:
	@echo 'Installing termite config file for desktop (smaller font)'
	mkdir -p ~/.config/termite
	cp -v desktop.config ~/.config/termite/config
	@echo 'Installation complete!'
	
install-surface:
	@echo 'Installing termite config file for MS Surface (larger font)'
	mkdir -p ~/.config/termite
	cp -v surface.config ~/.config/termite/config
	@echo 'Installation complete!'
