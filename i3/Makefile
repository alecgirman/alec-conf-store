install-blocks:
	mkdir -p ~/.config/i3blocks/
	cp -uv ./i3blocks.config ~/.config/i3blocks/config

FONTSIZE=11

install: install-blocks
	mkdir -p ~/.config/i3
	echo ${HOST}
	cp -uv config ~/.config/i3/config
	cat fontadjust.txt | sed 's/SIZE/${FONTSIZE}/' >> ~/.config/i3/config
