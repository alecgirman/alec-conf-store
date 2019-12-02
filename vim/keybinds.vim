" =======================
" K E Y B I N D I N G S
" =======================

" easy escape
imap jj <Esc>l
imap jk <C-x><C-o>

" quicker vertical movement 
noremap J <C-d>
noremap K <C-u>

noremap Y ^v$hy

" quickly turn off highlighting after a search
noremap H :noh<CR>

" K by default is binded to manpages/docs
" and that's too good of a shortcut to lose
" TODO: F1 might do this too, try it too
noremap L K

" Easy window navigation
" credit goes to nvim_terminal_emulator.txt
" starting on line 62 in the neovim help docs 
" because I just copied and pasted the whole thing
:tnoremap h <C-\><C-N><C-w>h
:tnoremap j <C-\><C-N><C-w>j
:tnoremap k <C-\><C-N><C-w>k
:tnoremap l <C-\><C-N><C-w>l
:inoremap h <C-\><C-N><C-w>h
:inoremap j <C-\><C-N><C-w>j
:inoremap k <C-\><C-N><C-w>k
:inoremap l <C-\><C-N><C-w>l
:nnoremap h <C-w>h
:nnoremap j <C-w>j
:nnoremap k <C-w>k
:nnoremap l <C-w>l

" moved to just H
" noremap <C-Space>h :noh<CR>

" New Z commands:
" Z   = Save current file
" ZZZ = Force Quit all
" ZQQ = Save and Close all
" ZS  = Make Session
nmap Z :w!<CR>
nmap QQ :q!<CR>
nmap ZZZ :qa!<CR>
nmap ZZQ :wa!<CR>:qa!<CR>
nmap ZS :mksession! 
nmap ZV :w<CR>:source %<CR>

" Open a terminal window
noremap <Space>! :vs<CR><C-w>l:term<CR>i

" Terminal mode mappings
" tmap <Esc> <C-\><C-n>

" Addon windows
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :UndotreeToggle<CR>

" noremap <Space>v
nmap <Space>c :call 
noremap <Space>r :%s//g<Left><Left>
noremap <Space><Tab> :Tabularize /
noremap <Space>h :help<Space>
noremap <Space>w :VimwikiUISelect<CR>
noremap <C-Space>v :call AsheToggleVirtualEdit()<CR>
"noremap <C-Space>c :call Colorizer#ColorToggle()<CR>

echohl String
echomsg "ASHE: Loaded Default keybindings"
echohl None
