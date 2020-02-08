COPY_FLAGS := '-v'

TARGETS = elinks tmux termite vim zsh 

install: 
	$(MAKE) -C elinks install
	$(MAKE) -C tmux install
	$(MAKE) -C termite install
ifeq($(DEBUG), 1)
	$(MAKE) -C vim archlinux-install
else

	$(MAKE) -C zsh install
	$(MAKE) -C i3 install
start:
	clear
