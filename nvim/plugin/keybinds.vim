" =======================
" K E Y B I N D I N G S
" =======================

" easy escape
inoremap jj <Esc>l

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
:tnoremap <A-h> <C-\><C-N><C-w>h
:tnoremap <A-j> <C-\><C-N><C-w>j
:tnoremap <A-k> <C-\><C-N><C-w>k
:tnoremap <A-l> <C-\><C-N><C-w>l
:inoremap <A-h> <C-\><C-N><C-w>h
:inoremap <A-j> <C-\><C-N><C-w>j
:inoremap <A-k> <C-\><C-N><C-w>k
:inoremap <A-l> <C-\><C-N><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

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
nmap ZT :tabclose!<CR>

" Open a terminal window
noremap <Space>! :vs<CR><C-w>l:term<CR>i

" Terminal mode mappings
tmap <Esc> <C-\><C-n>

" Addon windows
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :UndotreeToggle<CR>

" noremap <Space>
nmap <Space>c :call 
noremap <Space>r :%s//g<Left><Left>
noremap <Space><Tab> :Tabularize /
noremap <Space>h :help<Space>
noremap <Space>w :VimwikiUISelect<CR>
noremap <C-Space>v :call AsheToggleVirtualEdit()<CR>
noremap <C-Space>c :call Colorizer#ColorToggle()<CR>

" I just new shortcut for making tabs.  See above for a shortcut on closing
" tabs.
noremap <Space>t :tabnew<CR>

echohl String
echomsg "ASHE: Loaded Default keybindings"
echohl None
