if exists('did_asheinit_vim') || &cp || version < 700
    finish
endif
let did_asheinit_vim = 1



function! InitCore()
    " this gets set by m4 prior to being copied
    let update_directory="{{ashedir}}" 
    set showmode
    set showcmd
    set showmatch
    set hidden
    set autowrite
    set autoread
    set number
    set relativenumber
    set laststatus=2
    set showtabline=2
    set scrolloff=10
    set nowrap
    set completeopt=longest,menuone,preview
    set wildmode=list:longest
    set modeline
    set noswapfile

    " search settings
    set ignorecase      " Ignore case in search and seek commands
    set smartcase       " ...but only in search commands
    set incsearch       " Search as were typing
    set hlsearch        " Highlight search matches

    set mouse=a             " Enable full mouse support
    set mousemodel=popup  " Define the mouse model

    if !has ('nvim')		" only works in vim
        set ttymouse=sgr      " Set terminal mouse input mode
    endif

    " Editor tab settings
    set tabstop=4
    set shiftwidth=4
    set autoindent
    set expandtab
    set smarttab

    " Misc settings
    set wildmenu
    set history=250

    " in neovim this would be set shada but its
    " backwards compatible with set viminfo
    set viminfo='1000,<500,s100   
    set timeoutlen=300              " set key timeout

    " set diffopt=                    " clear diff settings
    set diffopt+=iwhite,iblank      " ignore whitespace and blank lines when evaluating diff

    syntax on
endfunction

function! ConfigurePostload()
    call ashe#postloader#ConfigurePluginsPostload()
    call ashe#postloader#ConfigureColors()
endfunction

function! EarlyInit()
    call ashe#postloader#SourceInternals()
    call ashe#postloader#InitCore()
    call ashe#postloader#ConfigurePluginsPreload()
endfunction

function! LateInit()
    call ashe#postloader#InstallThirdPartyPlugins()
    call ConfigurePostload()
    call ashe#keybinds#LoadDefaultKeybinds()
endfunction

function! FullInit()
    call InitCore()
    call EarlyInit()
    call LateInit()
endfunction

command! -nargs=0 FullInit :call FullInit()
command! -nargs=0 EditInitScript :e /ashe/vim/plugin/init.vim
command! -nargs=0 EditPostLoadScript :e /ashe/vim/autoload/postloader.vim
command! -nargs=0 EditKeybinds :e /ashe/vim/autoload/keybinds.vim

let did_asheinit_vim=2 " init complete indicator
