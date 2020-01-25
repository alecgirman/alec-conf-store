TARGET_DIR=~/.vim
LOADER_DIR = ${TARGET_DIR}/plugin/
# BASE_FILES = *.vim
BASEDIRS = autoload/ ftplugin/ plugin/

COPYFILE = cp -v
COPYDIR = cp -rv
DIFFCMD = diff --color -a

PLUG_URL = https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

install: install-core

install-core:
	# install the rest of the files into the autoload/ashe directory
	mkdir -p ${TARGET_DIR}/autoload/ashe
	${COPYDIR} ${BASEDIRS} ${TARGET_DIR}/
	mkdir -p ${TARGET_DIR}/after/plugin
	echo "FullInit" > ${TARGET_DIR}/after/plugin/ashe.vim
	
install-vimplug:
	mkdir -p ${TARGET_DIR}/autoload
	curl -fLo ${TARGET_DIR}/autoload/plug.vim ${PLUG_URL}

uninstall-extplugins:
	rm -rfv ${TARGET_DIR}/autoload/plug.vim

uninstall:
	rm -rfv ${LOADER_DIR}/
