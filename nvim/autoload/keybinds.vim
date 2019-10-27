" =======================
" K E Y B I N D I N G S
" =======================

" easy escape
imap jj <Esc>l

" Vim operations
" Save and Quit - extending Z commands
" New Z commands:
" --------------------
" Z = Save current file
" ZZZ = Force Quit all
" ZQQ = Save and Close all

nmap Z :w!<CR>
nmap ZZZ :qa!<CR>
nmap ZQQ :wa!<CR>:qa!<CR>
nmap ZS :mksession! vimsession<CR>

"  - Execute contents of buffers
"  TODO: Confusing
"  Idea: Make one command that saves and runs a command of our choice on the file
"       * %f = their saved filename
"       * %t = temporary file
noremap <Space>vxv :w! /tmp/exec.vim<CR>:source /tmp/exec.vim<CR>
nmap <Space>vxV <Space>vxv:call
noremap <Space>vxp :w! /tmp/exec.py<CR>:py3file /tmp/exec.py<CR>
noremap <Space>vxc :call 

"  - Settings
"  TODO: Both of these settings need quicker toggles
noremap <Space>vse :set ve=all<CR>
noremap <Space>vsh :noh<CR>

" regex replace - absolutely perfect shortcut 10/10
noremap <Space>r :%s/

" Very useful quicker movement keys
noremap J <C-d>
noremap K <C-u>

" Open help input dialog at bottom of screen, completion available!
noremap <Space>h :help 
echo "ASHE: autoload/keybinds.vim loaded!"
