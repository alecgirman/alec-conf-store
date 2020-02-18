MKDIR = mkdir -p
DELFILE = rm -fv
DELDIR = rm -rfv
SYMLINK = ln -s 

CSTART = ~/.vim/pack/config
PLUGINS = ~/.vim/pack/pluginpack

install-config:
	$ $(MKDIR) $(CSTART)
	sln $(PWD)/config/start $(CSTART)/start

install-plugins:
	# $(MKDIR) $(PLUGINS) $(PLUGINS)
	# $(MAKE) plugins.mk
	sln $(PWD)/plugins/start $(PLUGINS)/start 
	sln $(PWD)/plugins/opt $(PLUGINS)/opt

purge:
	rm -rf ~/.vim
