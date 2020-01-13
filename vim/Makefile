.PHONY: uninstall install

# can be vim or neovim
TARGET=vim

# When uninstalling, DO NOT REMOVE the $TARGET_DIR
ifeq (${TARGET}, vim)
	TARGET_DIR=~/.vim
endif
ifeq (${TARGET}, neovim)
	TARGET_DIR=~/.local/share/nvim/site
endif

BASE_DIR = ${TARGET_DIR}/plugin/ashe
BASE_POSTDIR = ${TARGET_DIR}/after/plugin
BASE_FILES = *.vim
COC_PATH = pack/coc/start
COC_EXTDIR = ~/.config/coc/extensions

COPYCMD = cp -uv
DIFFCMD = diff --color -a

PLUG_URL = https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

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
	echo "call ConfigurePostload()" > ${BASE_POSTDIR}/ashe.vim

install-coc: check-deps
	# verify node is installed
	mkdir -p ${COC_EXTDIR}
	cp package.json ${COC_EXTDIR}
	cd ${COC_EXTDIR}
	npm install
	#rm -rfv coc.nvim-release node_modules
	#rm -v package-lock.json

install-vimplug:
	mkdir -p ${TARGET_DIR}/autoload
	curl -fLo ${TARGET_DIR}/autoload/plug.vim ${PLUG_URL}

uninstall-vimplug:
	rm -rfv ${TARGET_DIR}/autoload/plug.vim

uninstall-coc:
	rm -rfv ${COC_EXTDIR}

uninstall:
	# must use --force or else directories that are already removed will cause it to fail
	# which could result in files that are 'stuck' there.
	rm -rfv ${BASE_DIR}/

purge: uninstall uninstall-vimplug uninstall-coc
	rm -rfv ${COC_PATH}/

diffs:
	${DIFFCMD} ./ ${BASE_DIR}/ | sed '/Only in/d'

check-deps:
	node --version
	npm --version
