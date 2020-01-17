
vim:
	cd vim;
	@echo "this ones complicated, you do it yourself!"
all: tmux termite i3 elinks
	echo "Please make vim separately."
tmux:
	make -C tmux/Makefile install
termite:
	make -C termite/Makefile make-auto
i3:
	make -C i3/Makefile make-auto
elinks:
	make -C elinks/Makefile make-desktop
