TARGET=~/.vim
BASEDIRS = autoload/ plugin/

COPYFILE = cp -v
COPYDIR = cp -rv
DIFF = git diff --color --minimal -a
DELETE = rm -fv
DELETEDIR = rm -rfv
DOWNLOAD = curl -fLo

PLUG_URL = https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

all: purge install

# Installing

install-core:
	$(COPYDIR) $(BASEDIRS) $(TARGET)/
	mkdir -p $(TARGET)/after/plugin
	echo "normal FullInit" > $(TARGET)/after/plugin/ashe.vim
	sln $(TARGET) ~/.config/nvim
	
install-vimplug:
	mkdir -p $(TARGET)/autoload
	$(DOWNLOAD) $(TARGET)/autoload/plug.vim $(PLUG_URL)

install: install-vimplug install-core

# Removal

uninstall-core:
	$(DELETE) $(TARGET)/plugin/init.vim

uninstall-vimplug:
	$(DELETE) $(TARGET)/autoload/plug.vim

purge: uninstall-core uninstall-vimplug
	echo 'Purging local cache if it exists'
	$(DELETEDIR) ~/.local/share/nvim/site/ftplugin
	$(DELETEDIR) ~/.local/share/nvim/site/autoload
	$(DELETEDIR) ~/.local/share/nvim/site/after

# Extras

gitdiff:
	$(DIFF) /ashe/vim

build-image:
	docker build -t neovim-srcbuild ./

run-docker: build-image
	docker run -c 12 -h neovim -it --rm neovim-srcbuild

help explain:
	@echo -e '--- Makefile targets ---\n'
	@echo 'help/explain: Show this information again.'
	@echo 'all: Completes a full uninstall then installs all components.'
	@echo 'install-core: Installs just my plugin files, assuming vimplug is installed'
	@echo 'install-vimplug: Installs the Plug plugin manager for Neovim'
	@echo 'install: Shortcut to install core and vimplug'
	@echo 'uninstall-core: Removes my script files, leaving vimplug behind.'
	@echo 'uninstall-vimplug: Uninstalls the Plug plugin manager'
	@echo 'uninstall: Shortcut to remove both core and vimplug components'
	@echo 'gitdiff: Displays a diff between the local tracking directory and the latest remote commit'
