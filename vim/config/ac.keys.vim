" easy escape
inoremap jj <Esc>l

" quicker vertical movement 
noremap J <C-d>
noremap K <C-u>

" select to end of line without copying newline
noremap Y v$hy

" better jumping to marks
noremap ` '

noremap gl :CocList --normal<CR>
noremap gll :CocList 
noremap glc :CocList colors<CR>
noremap gls :CocList snippets<CR>
noremap glv :CocList tags<CR>
noremap gla :CocList actions<CR>

" quickly turn off highlighting after a search
noremap H :noh<CR>

" git commands
nnoremap <Space>gp :CocCommand git.chunkInfo<CR>
nnoremap <Space>gs :CocCommand git.chunkStage<CR>
nnoremap <Space>gu :CocCommand git.chunkUndo<CR>

" K by default is binded to manpages/docs
" and that's too good of a shortcut to lose
" TODO: F1 might do this too, try it too
noremap L K

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

" Open a terminal window - keep forgetting this one exists
noremap <Space>! :vs<CR><C-w>l:term<CR>i

" Terminal mode mappings
tmap <Esc> <C-\><C-n>

" Addon windows
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :UndotreeToggle<CR>
nmap <F4> :TagbarToggle<CR>

nmap g<Space> :Clap!<CR>

" noremap <Space>
nmap <Space>c :call
noremap <Space>r :%s/
noremap <Space><Tab> :Tabularize /
noremap <Space>h :help<Space>
vnoremap <Space>h y<Esc>:help <C-r>"<CR>
noremap <Space>w :VimwikiUISelect<CR>

" noremap <C-Space>c :call Colorizer#ColorOff()<CR>:call Colorizer#ColorToggle()<CR>
noremap <C-Space>c :windo call Colorizer#ColorOff()<CR>:call Colorizer#ColorToggle()<CR>

" I just need a shortcut for making tabs.
" See above for a shortcut on closing tabs.
noremap <Space>t :tabnew<CR>

echohl Question
echomsg "ASHE: Loaded Default keybindings"
echohl None
