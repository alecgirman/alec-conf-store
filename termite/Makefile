PREFIX = ${HOME}/.config/termite

TARGETCONFIG=/dev/null

ifeq (${HOSTNAME}, 'workstation')
	TARGET_CONFIG=surface.config
else
	TARGET_CONFIG=desktop.config
endif

install:
	echo 'Installing termite config file for desktop (smaller font)'
	mkdir -p ${PREFIX}
	cp -v ${TARGET_CONFIG} ${PREFIX}/config
	echo 'Installation complete!'
