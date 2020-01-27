# git clone https://github.com/alecgirman/ashe
# docker build ashe/ -t neovim-srcbuilud
# mkdir /tmp/dockertmp
# docker run -c 12 -h neovim -it --rm -t neovim-srcbuild neovim
# Once in neovim, you need to type this (substitute entries in <carets>!): <Colon>FullInit<Enter>

# TODO: install x-ctags from sf, reqd by tagbar

FROM archlinux
COPY docker.sh /docker.sh
RUN pacman -Sy git make --noconfirm
RUN git clone https://github.com/alecgirman/ashe
RUN pacman -S archlinux-keyring --noconfirm --needed
RUN pacman -Sy base-devel unzip cmake python-pynvim nodejs npm --noconfirm --needed
RUN git clone 'https://github.com/neovim/neovim'
CMD [ "sh", "docker.sh" ]
