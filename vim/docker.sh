pacman -Sy git make
git clone https://github.com/alecgirman/ashe
pacman -S archlinux-keyring --noconfirm --needed
pacman -Syu base-devel unzip cmake python-pynvim nodejs npm --noconfirm --needed
git clone 'https://github.com/neovim/neovim'
make -C neovim distclean 
make -C neovim
make -C neovim install
mkdir -p ~/.config
make install
sln /root/.vim /root/.config/nvim
nvim --cmd ':FullInit'
