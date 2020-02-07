FROM archlinux
COPY docker.sh /docker.sh
# download only, well install when the container starts
RUN pacman -Sy git archlinux-keyring --noconfirm
RUN pacman -Sw make gcc pkgconf ctags unzip cmake python-pynvim --noconfirm --needed
RUN git clone https://github.com/alecgirman/ashe
RUN git clone https://github.com/neovim/neovim
CMD [ "sh", "docker.sh" ]
