install-auto:
	ifeq (${HOSTNAME}, tux)
		 make install-desktop
	else
		 make install-surface
	endif

install-blocks:
	mkdir -p ~/.config/i3blocks/
	cp -uv ./i3blocks.config ~/.config/i3blocks/config

install-surface: install-blocks
	mkdir -p ~/.config/i3
	cp -uv surface.config ~/.config/i3/config

install-desktop: install-blocks
	mkdir -p ~/.config/i3
	cp -uv desktop.config ~/.config/i3/config
