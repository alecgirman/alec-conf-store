TARGET_DIR=~/.vim
LOADER_DIR = $(TARGET_DIR)/plugin/
# BASE_FILES = *.vim
BASEDIRS = autoload/ plugin/

COPYFILE = cp -v
COPYDIR = cp -rv
DIFFCMD = diff --color -a

PLUG_URL = https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

install: install-core

install-core:
	# install the rest of the files into the autoload/ashe directory
	mkdir -p $(TARGET_DIR)/autoload/ashe
	$(COPYDIR) $(BASEDIRS) $(TARGET_DIR)/
	mkdir -p $(TARGET_DIR)/after/plugin
	echo "FullInit" > $(TARGET_DIR)/after/plugin/ashe.vim
	
install-vimplug:
	mkdir -p $(TARGET_DIR)/autoload
	curl -fLo $(TARGET_DIR)/autoload/plug.vim $(PLUG_URL)

deps:
	# Run before: pacman -Sy git make --noconfirm; git clone https://git.io/JvqDX; cd ashe/vim;
	pacman -S archlinux-keyring curl --noconfirm --needed
	pacman -Syu --noconfirm --needed
	pacman -S base-devel cmake python-pynvim nodejs npm --noconfirm --needed
	mkdir -p /var/git
	cd /var/git/
	pwd
	git clone 'https://github.com/neovim/neovim'
	cd neovim
	make distclean
	make
	make install
	cd /ashe/vim
	make install
	nvim --cmd ':FullInit'

uninstall:
	$(DELETE) $(LOADER_DIR)/

uninstall-vimplug:
	$(DELETE) $(TARGET_DIR)/autoload/plug.vim
