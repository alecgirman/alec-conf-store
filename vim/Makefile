ifeq (${TARGET}, vim)
	TARGET_DIR=~/.vim
endif
ifeq (${TARGET}, neovim)
	TARGET_DIR=~/.local/share/nvim/site
endif

BASE_DIR = ${TARGET_DIR}/plugin/ashe
BASE_POSTDIR = ${TARGET_DIR}/after/plugin
BASE_FTPLUGIN = ${TARGET_DIR}/ftplugin
BASE_FILES = *.vim

COPYCMD = cp -rv
DIFFCMD = diff --color -a

PLUG_URL = https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

# NOTE: No need to do anything fancy with the local wiki, like moving it or sort of sync tasks.
# Just add the list of active wikis.  While there is a variable that you can set PRIOR to loading
# that will preconfigure the wiki engine, it may also be opened POST load by opening one of the
# .wiki files in it.  When Starting up, we havae many options, but here are the simplest and
# most efficient: We either a) :edit /var/wiki/index.wiki followed by a :q, or b) :e /var/wiki/home.wiki
# whre home.wiki is a well made 'home screen' for each new vim session.  For the sake of time, It
# will start with using option a.
# should only be used for testing

all: purge
	kdialog --msgbox "Make all called"

install:
	mkdir -p ${BASE_DIR}/
	${COPYCMD} ${BASE_FILES} ${BASE_DIR}/
	mkdir -p ${BASE_POSTDIR}
	${COPYCMD} ./ftplugin/ ${BASE_FTPLUGIN}
	npm install

# describe 
install-vimplug:
	mkdir -p ${TARGET_DIR}/autoload
	curl -fLo ${TARGET_DIR}/autoload/plug.vim ${PLUG_URL}

uninstall-extplugins:
	rm -rfv ${TARGET_DIR}/autoload/plug.vim

uninstall:
	rm -rfv ${BASE_DIR}/
