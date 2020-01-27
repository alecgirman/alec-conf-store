tput setaf 10; echo 'Ensuring we have a clean and sanitary environment'
make -C neovim distclean 
tput setaf 10; echo 'Cleaning complete'
tput setaf 10; printf "Building Neovim\n\twith CFLAGS= -O3"
make -C neovim CFLAGS= -O3 -pipe
make -C neovim install
mkdir -p /root/.config /root/.vim
make -C ashe/vim install
make -C ashe/vim install-vimplug
sln /root/.vim /root/.config/nvim
echo 'TODO add intro' > /etc/motd
echo 'If you saw the list of plugins just now, youre in the right place!' >> /etc/motd
echo 'Despite the fact that neovim clearly did something with plugins, none of them were loaded.' >> /etc/motd
echo 'This is very typical, in fact its happened every single time I start neovim.  To fix it' >> /etc/motd
echo 'just run ":FullInit".  I have more instructions for you after you do that!' >> /etc/motd
bash & (sleep 1; nvim /etc/motd)
