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
	pacman -S archlinux-keyring --noconfirm --needed
	pacman -Syu base-devel cmake python-pynvim nodejs npm --noconfirm --needed
	git clone 'https://github.com/neovim/neovim'
	make -C neovim distclean 
	make -C neovim
	make -C neovim install
	mkdir -p ~/.config
	make install
	sln /root/.vim /root/.config/nvim
	nvim --cmd ':FullInit'

uninstall:
	$(DELETE) $(LOADER_DIR)/

uninstall-vimplug:
	$(DELETE) $(TARGET_DIR)/autoload/plug.vim
