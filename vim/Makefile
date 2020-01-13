.PHONY: uninstall install

# can be vim or neovim
TARGET=vim

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

COC_URL = https://github.com/neoclide/coc.nvim/archive/release.tar.gz
PLUG_URL = https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

all: uninstall install

install:
	mkdir -p ${BASE_DIR}/
	${COPYCMD} ${BASE_FILES} ${BASE_DIR}/
	mkdir -p ${BASE_POSTDIR}
	echo "call ConfigurePostload()" > ${BASE_POSTDIR}/ashe.vim

install-coc:
	# verify node is installed
	node --version
	npm --version
	mkdir -p ${TARGET_DIR}/${COC_PATH}
	cd ${TARGET_DIR}/${COC_PATH}
	curl --fail -L ${COC_URL} | tar xzfv -
	mkdir -p ${COC_EXTDIR}
	cp package.json ${COC_EXTDIR}
	cd ${COC_POSTDIR}
	npm install

install-plug:
	mkdir -p ${TARGET_DIR}/autoload
	curl -fLo ${TARGET_DIR}/autoload/plug.vim ${PLUG_URL}

uninstall:
	rm -rv ${BASE_DIR}/

diffs:
	${DIFFCMD} ./ ${BASE_DIR}/ | sed '/Only in/d'
