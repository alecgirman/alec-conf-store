#!/usr/bin/env python3

import os

os.system(

mkdir = lambda path: os.system(f'mkdir {path}')
cp = lambda src, dst: os.system(f'cp {src} {dst}')

mkdir('/root/.vim')
mkdir('/root/.vim/ashe')

cp('/ashe/vim/vimrc', '/root/.vimrc')
cp('/ashe/vim/keybinds.vim', '/root/.vim/ashe/keybinds.vim')
cp('/ashe/vim/functions.vim', '/root/.vim/ashe/functions')
cp('/ashe/vim/pav.vim', '/root/.vim/ashe/pav.vim')

print('Installed vim config!')

# echo 'Installing vim config'
# cp vimrc /root/.vimrc
# cp keybinds.vim /root/keybinds.vim
# echo 'Done installing vim config!'
