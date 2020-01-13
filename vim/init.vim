" % - current file
" p - full path - REQUIRED see :h filename-modifiers
" h - head of filepath
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
set modeline

" search settings
set ignorecase      " Ignore case in search and seek commands
set smartcase       " ...but only in search commands
set incsearch       " Search as were typing
set hlsearch        " Highlight search matches

set mouse=a             " Enable full mouse support
set ttymouse=urxvt      " Set terminal mouse input mode
set mousemodel=popup_setpos    " Define the mouse model

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

syntax on

source $VIMRUNTIME/menu.vim
source $VIMRUNTIME/synmenu.vim

"ashedir = '~/.vim'

source ~/.vim/plugin/ashe/plugins.vim
source ~/.vim/plugin/ashe/functions.vim
source ~/.vim/plugin/ashe/keybinds.vim
source ~/.vim/plugin/ashe/colors.vim

" TODO: separate colors file?

call ConfigurePluginsPreload()

function! ConfigurePostload()
    call ConfigurePluginsPostload()
    call LoadDefaultKeybinds()
    call ConfigureColors()
endfunction
