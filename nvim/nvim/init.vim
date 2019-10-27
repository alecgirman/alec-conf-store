echo 'Loading initial Vim configuration...'

"set options
echo 'Setting basic options'

set showmode
set showcmd
set showmatch
set hidden
set autowrite
set number
set relativenumber
set noswapfile
set laststatus=2

" search settings
echo 'Configuring search settings'
set ignorecase
set smartcase
set incsearch
set hlsearch

" restrict screen movement from cursor
set scrolloff=4

" Editor tab settings
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set smarttab

" Misc settings
set wildmenu
set history=250
set viminfo='1000,<500,s100
set timeoutlen=200

" Configure true color terminal output with vim 
" set t_Co=256
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

if &term =~ '256color'
  set t_ut=
endif

" Syntax highlighting
" must be set AFTER background!
set background=dark
if has("syntax")
  syntax on
endif

source autoload/keybinds.vim
source autoload/functions.vim
