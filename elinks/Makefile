.PHONY: install-desktop

ELINKS_DIR = ~/.elinks

install: elinks.conf bookmarks
	@echo 'Installing elinks config file for desktop (smaller font)'
	mkdir -p ~/.elinks
	cp ${COPY_FLAGS} elinks.conf bookmarks ~/.elinks/

# install-desktop:
# 	$(info 'Installing elinks config file for desktop (smaller font)')
# 	mkdir -p ~/.elinks
# 	cp -iv elinks.conf bookmarks ~/.elinks/
# 	$(info 'Installation complete!')
