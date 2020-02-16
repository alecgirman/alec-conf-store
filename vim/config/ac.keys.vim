" config file warp-drive: in vim, press gf on a file to jump to it
" Core config: /ashe/vim/config/ac.core.vim
" Keybind config: /ashe/vim/config/ac.keys.vim
" Plugin config: /ashe/vim/config/ac.plugins.vim
" Color config: /ashe/vim/config/ac.colors.vim


     
" Open floating menu
nmap g<Space> :Clap!<CR>

" easy escape
inoremap jj <Esc>

" quicker vertical movement 
noremap J <C-d>
noremap K <C-u>

" select to end of line without copying newline
noremap Y v$hy

noremap y<Space> :echo 'yank >'<CR>:let @"=getchar()<CR>:y <CR>"<CR>

" better jumping to marks
noremap ` '

" default g~ takes a motion but tilde does not.
noremap ~ g~

" Completion utilities
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
nnoremap <Space>gn ]c
nnoremap <Space>gl [c

" L -> K
" K by default is binded to manpages/docs
" and that's too good of a shortcut to lose
" TODO: F1 might do this too, try it too
noremap L K

" Z commands
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

" Terminal mode mappings
tmap <Esc> <C-\><C-n>

" Sidebars
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :UndotreeToggle<CR>
nmap <F4> :TagbarToggle<CR>

" navigating the quickfix list

" next quickfix
noremap <Space>qn :cn<CR>
" previous quickfix
noremap <Space>qp :cp<CR>
" goto quickfix entry N
noremap <Space>qc :cc!<Space>
" Close the quickfix lis
noremap <Space>qx :cclose<CR>

" Unclassified space-leader bindings
noremap <Space>c :call
noremap <Space>r :%s/
noremap <Space><Tab> :Tabularize /
noremap <Space>h :help<Space>
noremap <Space>h y<Esc>:help <C-r>"<CR>
noremap <Space>w :VimwikiUISelect<CR>

" noremap <C-Space>c :call Colorizer#ColorOff()<CR>:call Colorizer#ColorToggle()<CR>
noremap <C-Space>c :windo call Colorizer#ColorOff()<CR>:call Colorizer#ColorToggle()<CR>

" Open a terminal window - keep forgetting this one exists
noremap <Space>! :vs<CR><C-w>l:term<CR>i

" Create new tab
noremap <Space>t :tabnew<CR>

" Insert Mode mappings
" This section can also include abbreviations

" Insert date/time
iab <expr> ict strftime("%T")
iab <expr> icd strftime("%D")
imap icf ict icd

iab isy <C-r>=system('')<Left><Left>
nmap ix i<C-r>=

" Custom tet objects can be created with `omap` (operatoro pending(

" WIP:
cnoremap <C-f> <BS><Home><Del><Del><Del><Del>function
