install-blocks:
	mkdir -p ~/.config/i3blocks/
	cp -uv ./i3blocks.config ~/.config/i3blocks/config

FONTSIZE=11

install: clean install-blocks
	mkdir -p ~/.config/i3
	echo ${HOST}
	cp -uv config ~/.config/i3/config
	sed -i 's/FONTSIZE/${FONTSIZE}/g' ~/.config/i3/config

clean: uninstall

uninstall:
	rm -rv ~/.config/i3/ ~/.config/i3blocks/
