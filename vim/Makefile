# I will be rebuilding this from scratch

CSTART = ~/.vim/pack/config
PLUGINS = ~/.vim/pack/pluginpack

install-config:
	$(MKDIR) $(CSTART)
	sln $(PWD)/config/start $(CSTART)/start
	sln $(PWD)/config/opt $(CSTART)/start

install-plugins:
	$(MKDIR) $(PLUGINS)/ 
	sln $(PWD)/plugins/start $(PLUGINS)/start 
	sln $(PWD)/plugins/opt $(PLUGINS)/opt
	cp plugins.mk plugins/populateplugins.mk 
	@echo "NOw, in order to download all of the plugins (takes about a minute on decent internet)"
	@echo "you must do make -C plugins/":

purge:
	rm -rf ~/.vim
