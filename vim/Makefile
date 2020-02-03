PACKDIR='~/.vim/pack'
PACKNAME='config'

MAKEDIR = mkdir -p
COPYFILE = cp -v
COPYDIR = cp -rv
DIFF = git diff --color --minimal -a
DELETE = rm -fv
DELETEDIR = rm -rfv
ROOTPACKDIR=~/.vim/pack
CONFIGPACKDIR=$(ROOTPACKDIR)/config/start/config/plugin
PLUGINPACKDIR=$(ROOTPACKDIR)/plugins/opt
COCEXTDIR=~/.config/coc
PKGREFRESH=apt update && apt upgrade
PKGINSTALL=apt install
PKGAUTOCONFIRM=-y

all: purge install

# Installing

install-manualload:
	$(MAKEDIR) $(CONFIGPACKDIR)
	cp config/* $(CONFIGPACKDIR)
	sln ~/.vim ~/.config/nvim # neovim compatibility

install-autoload: install-manualload install-plugins
	make $(PLUGINTARGET)
	echo "call LoadAllPlugins()" >> $(CONFIGPACKDIR)/ac.plugins.vim

install-plugins:
	$(MAKEDIR) $(PLUGINPACKDIR)
	cp cloneplugins.mk $(PLUGINPACKDIR)/Makefile
	make -C $(PLUGINPACKDIR) install
	$(PKGREFRESH)
	$(PKGINSTALL) nodejs npm $(PKGAUTOCONFIRM)
	$(MAKEDIR) $(COCEXTDIR)
	cp cocplugins.mk $(COCEXTDIR)/Makefile
	make -C $(COCEXTDIR) install

devdebugmake:
	make install-autoload PKGINSTALL='pacman --needed -S' PKGREFRESH='pacman -Sy' PKGAUTOCONFIRM='--noconfirm'

uninstall:
	$(DELETEDIR) $(ROOTPACKDIR)
	$(DELETE) ~/.config/nvim # only delete if symlink, otherwise throw error
	echo 'Config files have been uninstalled, but plugins have not.'
	echo 'In order to remove plugins, run make uninstall-plugins'
	
# Extras

# 	$(DIFF) /ashe/vim

# build-image:
# 	docker build -t neovim-srcbuild ./

# run-docker: build-image
# 	docker run -c 12 -h neovim -it --rm neovim-srcbuild

# help explain:
# 	@echo -e '--- Makefile targets ---\n'
# 	@echo 'help/explain: Show this information again.'
# 	@echo 'all: Completes a full uninstall then installs all components.'
# 	@echo 'install-core: Installs just my plugin files, assuming vimplug is installed'
# 	@echo 'install-vimplug: Installs the Plug plugin manager for Neovim'
# 	@echo 'install: Shortcut to install core and vimplug'
# 	@echo 'uninstall-core: Removes my script files, leaving vimplug behind.'
# 	@echo 'uninstall-vimplug: Uninstalls the Plug plugin manager'
# 	@echo 'uninstall: Shortcut to remove both core and vimplug components'
# 	@echo 'gitdiff: Displays a diff between the local tracking directory and the latest remote commit'
# TODO: DOCKER FILES MOVED INTO TESTS FOLDER
