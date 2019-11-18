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
set laststatus=2
set showtabline=2
set scrolloff=10
set nowrap
set completeopt=longest,menuone,preview
set wildmode=list:longest
set mouse=a

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
set timeoutlen=500

" Configure true color terminal output with vim 
" Read somewhere this shouldnt be set by you
" set t_Co=256

" let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

" Set by nvim automatically and should not be assumed otherwise.
set termguicolors

syntax on
source keybinds.vim

call AsheConfig()

echohl String
echomsg "AsheInit.vim: Loaded!"
echohl None

call AsheInit()
