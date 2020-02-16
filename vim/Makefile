:ACKDIR='~/.vim/pack'
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

all: purge install-autoload

ARCHIVECREATE = tar -cf
EXTRACT = tar -xf
COMPRESS = xz -ze -T 12
DECOMPRESS = xz -ze -T 12

ROOTPACKDIR=~/.vim/pack
CONFIGPACKDIR=$(ROOTPACKDIR)/config/start/config/plugin
PLUGINPACKDIR=$(ROOTPACKDIR)/plugins/opt
COCEXTDIR=~/.config/coc
PKGREFRESH=apt update && apt upgrade
PKGINSTALL=apt install
PKGAUTOCONFIRM=-y

all: purge install-autoload

install-config:
	$(MAKEDIR) $(CONFIGPACKDIR)
	cp config/* $(CONFIGPACKDIR)
	ln -s ~/.vim ~/.config/nvim # neovim compatibility

install-autoload: install-config install-plugins
	echo "call LoadAllPlugins()" > $(CONFIGPACKDIR)/init.vim

install-plugins:
	$(MAKEDIR) $(PLUGINPACKDIR)
	cp cloneplugins.mk $(PLUGINPACKDIR)/Makefile
	make -C $(PLUGINPACKDIR) all
	echo "call LoadAllPlugins()" > $(CONFIGPACKDIR)/init.vim
	$(PKGREFRESH)
	$(PKGINSTALL) nodejs npm $(PKGAUTOCONFIRM)
	$(MAKEDIR) $(COCEXTDIR)

freeze:
	echo 'This may take a little while... if you are using xzip (default)'
	rm -rv pack/
	rm -rv coc/
	mv $(ROOTPACKDIR)/ ./
	mv $(COCEXTDIR)/ ./
	$(ARCHIVECREATE) coc.tar coc/
	$(ARCHIVECREATE) pack.tar pack/
	$(COMPRESS) coc.tar 
	$(COMPRESS) pack.tar

unfreeze:
	$(DECOMPRESS) pack.tar.xz
	$(DECOMPRESS) coc.tar.xz
	$(EXTRACT) pack.tar $(ROOTPACKDIR)/
	$(EXTRACT) coc.tar $(COCEXTDIR)/

archlinux-install: purge
	make install-autoload PKGINSTALL='pacman --needed -S' PKGREFRESH='pacman -Sy' PKGAUTOCONFIRM='--noconfirm'

uninstall:
	$(DELETEDIR) $(ROOTPACKDIR)
	$(DELETE) ~/.config/nvim # only delete if symlink, otherwise throw error
	echo 'Config files have been uninstalled, but plugins have not.'
	echo 'In order to remove plugins, run make uninstall-plugins'

uninstall-plugins:
	$(DELETEDIR) $(PLUGINPACKDIR)
	$(DELETEDIR) ~/.config/coc

purge: uninstall uninstall-plugins
	
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

