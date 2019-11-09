" =======================
" K E Y B I N D I N G S
" =======================

" easy escape
imap jj <Esc>l

" Very useful quicker movement keys
noremap J <C-d>
noremap K <C-u>
noremap H :noh<CR>

" New Z commands:
" Z = Save current file
" ZZZ = Force Quit all
" ZQQ = Save and Close all

nmap Z :w!<CR>
nmap ZZZ :qa!<CR>
nmap ZQQ :wa!<CR>:qa!<CR>
nmap ZS :mksession!

noremap <Space>vxv :w! /tmp/exec.vim<CR>:source /tmp/exec.vim<CR>
nmap <Space>vxV <Space>vxv:call
noremap <Space>vxp :w! /tmp/exec.py<CR>:py3file /tmp/exec.py<CR>
noremap <Space>r :%s/
noremap <Space>h :help 

noremap <C-Space>v :set ve=all<CR>

" moved to just H
" noremap <C-Space>h :noh<CR>

echohl Type
echomsg "ASHE: Loaded Default keybindings"
echohl None
