TARGET_DIR=~/.vim
LOADER_DIR = ${TARGET_DIR}/plugin/ashe
BASE_FILES = *.vim

COPYCMD = cp -rv
DIFFCMD = diff --color -a

PLUG_URL = https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

install: install-loader install-core

install-loader:
	# install init.vim
	mkdir -p ${LOADER_DIR}/
	${COPYCMD} init.vim ${LOADER_DIR}}/

install-core:
	# install the rest of the files into the autoload directory
	${COPYCMD} ${BASE_FILES} ${TARGET_DIR}/autoload/
	rm -fv ${TARGET_DIR}/autoload/init.vim
	
install-vimplug:
	mkdir -p ${TARGET_DIR}/autoload
	curl -fLo ${TARGET_DIR}/autoload/plug.vim ${PLUG_URL}

uninstall-extplugins:
	rm -rfv ${TARGET_DIR}/autoload/plug.vim

uninstall:
	rm -rfv ${LOADER_DIR}/
