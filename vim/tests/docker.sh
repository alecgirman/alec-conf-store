# tput setaf 3; echo 'Finishing dependency installation'
pacman -U /var/cache/pacman/pkg/*
# tput setaf 6; echo 'Ensuring we have a clean and sanitary environment'; tput reset;
# make -C neovim distclean 
make -C neovim -j 12 CFLAGS='-O0 -pipe'
make -C neovim install PREFIX=/usr/local

mkdir export
make -C neovim -j 12 CFLAGS='-O0 -pipe'
make -C neovim install PREFIX=export/
tar -cf neovim.tar export/

mkdir -p /root/.config /root/.vim
sln /root/.vim /root/.config/nvim
make -C /ashe/vim all
bash & (sleep 1; nvim)
