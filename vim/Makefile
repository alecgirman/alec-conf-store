.PHONY: uninstall install

TARGET ?= neovim
# describe (TARGET) Select the vim client you'd like to install for (vim or neovim)
# describe (TARGET_DIR) The directory of your selected client.  You do not need to set this!

# describe (BASE_DIR) The base install directory, this is where all of the on-load scripts are put.
# describe (BASE_FILES) All original Ashe Vim scripts
# BASE_FTPLUGIN
# describe (BASE_POSTDIR) This refers to 'after' directory, or the directory of scripts that is executed after everything else.
# describe (COC_EXTDIR) The extension directory for Commander of Completion (COC).  This installation also configures all essential COC plugins.
# describe (COPYCMD) Command and arguments used to copy files, in general, should expect any nymber of inputs and one final argument of a folder to put the files into.
# describe (DIFFCMD) Command and arguments used to compare files/folders.  This command produces a list of all differences between the this copy and your local installlation.
# describe (NODE_VERSION) The version of NodeJS that is detected on your system.

ifeq (${TARGET}, vim)
	TARGET_DIR=~/.vim
endif
ifeq (${TARGET}, neovim)
	TARGET_DIR=~/.local/share/nvim/site
endif

BASE_DIR = ${TARGET_DIR}/plugin/ashe
# describe (TARGET_DIR) The directory of your selected client.  You do not need to set this!
BASE_POSTDIR = ${TARGET_DIR}/after/plugin
BASE_FTPLUGIN = ${TARGET_DIR}/ftplugin
BASE_FILES = *.vim
COC_EXTDIR = ~/.config/coc/extensions

NODE_VERSION=''

COPYCMD = cp -rv
DIFFCMD = diff --color -a

PLUG_URL = https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

describe:
	echo $1

# should only be used for testing
all: purge
	make TARGET=vim install
	make TARGET=vim install-coc
	make TARGET=vim install-vimplug
	make TARGET=neovim install
	make TARGET=neovim install-coc
	make TARGET=neovim install-vimplug

install:
	mkdir -p ${BASE_DIR}/
	${COPYCMD} ${BASE_FILES} ${BASE_DIR}/
	mkdir -p ${BASE_POSTDIR}
	${COPYCMD} ./ftplugin/ ${BASE_FTPLUGIN}
	${COPYCMD} ./package.json ${COC_EXTDIR}/

# describe 
install-vimplug:
	mkdir -p ${TARGET_DIR}/autoload
	curl -fLo ${TARGET_DIR}/autoload/plug.vim ${PLUG_URL}

uninstall-extplugins:
	rm -rfv ${TARGET_DIR}/autoload/plug.vim
	rm -rfv ${COC_EXTDIR}

uninstall:
	rm -rfv ${BASE_DIR}/

pull-local-snippets:
	${COPYCMD} ~/.config/coc/ultisnips/ ./
	mv ./ultisnips ./snippets

purge: uninstall uninstall-extplugins
	rm -rf ~/.config/coc
	rm -rf ~/.vim/

diffs:
	${DIFFCMD} ${BASE_DIR}/ ./

check-deps:
	NODE_LOCATION=$(shell which node)
	NPM_VERSION=$(shell npm --version)
	@echo "Automatically detected installed NodeJS"
	@echo "Installed version: ${NODE_VERSION}"
	# TODO: Check for vim/neovim
