MKDIR = mkdir -p
DELFILE = rm -fv
DELDIR = rm -rfv
SYMLINK = ln -s 

CSTART = ~/.vim/pack/config
PLUGINS = ~/.vim/pack/pluginpack

install-config:
<<<<<<< HEAD
	$(MKDIR) $(CSTART)
	sln $(PWD)/config/start $(CSTART)/start
	sln $(PWD)/config/opt $(CSTART)/start
=======
	$ $(MKDIR) $(CSTART)/start/
	sln $(PWD)/config/start $(CSTART)/start/plugin
>>>>>>> 2a8f866e60534a41570875e0fb349db125ba4540

install-plugins:
	$(MKDIR) $(PLUGINS)/ 
	sln $(PWD)/plugins/start $(PLUGINS)/start 
	sln $(PWD)/plugins/opt $(PLUGINS)/opt
	cp plugins.mk plugins/populateplugins.mk 
	@echo "NOw, in order to download all of the plugins (takes about a minute on decent internet)"
	@echo "you must do make -C plugins/":

purge:
	rm -rf ~/.vim
