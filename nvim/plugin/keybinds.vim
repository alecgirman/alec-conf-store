" =======================
" K E Y B I N D I N G S
" =======================

" easy escape
imap jj <Esc>l

" quicker vertical movement 
noremap J <C-d>
noremap K <C-u>

" quickly turn off highlighting after a search
noremap H :noh<CR>

" K by default is binded to manpages/docs
" and that's too good of a shortcut to lose
" TODO: F1 might do this too, try it too
noremap L K

" New Z commands:
" Z   = Save current file
" ZZZ = Force Quit all
" ZQQ = Save and Close all
" ZS  = Make Session
nmap Z :w!<CR>
nmap Zq :q!<CR>
nmap ZZZ :qa!<CR>
nmap ZZQ :wa!<CR>:qa!<CR>
nmap ZS :mksession! 
nmap ZV :w<CR>:source %<CR>

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :UndotreeToggle<CR>

" noremap <Space>v
nmap <Space>c :call
noremap <Space>r :%s/
noremap <Space><Tab> :Tabularize /
noremap <Space>h :help<Space>
noremap <C-Space>v :set ve=all<CR>

" moved to just H
" noremap <C-Space>h :noh<CR>

echohl Type
echomsg "ASHE: Loaded Default keybindings"
echohl None
