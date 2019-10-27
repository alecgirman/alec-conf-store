" Get our current directory, which is the core path of ashe.  This is returned
" as an ABSOLUTE FILE PATH to this directory.  This is important for sourcing.
" % expands relative path
" p expands full path
" h narrows t down to the head (directory)
let g:ashe_root=expand("%:p:h") . "/"

set showmode
set showcmd
set showmatch
set hidden
set autowrite
set autoread
set number
set relativenumber
set noswapfile
set laststatus=2
set scrolloff=10
set nowrap
set completeopt=longest,menuone
set wildmode=list:longest

" search settings
set ignorecase
set smartcase
set incsearch
set hlsearch

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

" gruvbox github: morhetz/gruvbox
