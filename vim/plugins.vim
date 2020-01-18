if exists('did_plugins_vim') || &cp || version < 700
    finish
endif
let did_plugins_vim = 1

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)
" 
" if has('conceal')
" 	set conceallevel=1 concealcursor=niv
" endif
" 
" " Enable snipMate compatibility feature.
" let g:neosnippet#enable_snipmate_compatibility = 1
" 
" " BUG: if other users use this config, they cant access /root
" " TODO: Move into /usr/share/vim/vimfiles
" let g:neosnippet#snippets_directory='/root/.vim/snippets/'
" call g:deoplete#custom#option('auto_complete_delay', 200)
" call g:deoplete#custom#option('smart_case', v:true)
" 
" call g:deoplete#enable()

function! InstallThirdPartyPlugins()
    call plug#begin('~/.vim/plugged')
    Plug 'Shougo/neoinclude.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'roxma/vim-hug-neovim-rpc'
    Plug 'roxma/nvim-yarp'
    Plug 'flazz/vim-colorschemes'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'gmarik/snipmate.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'kshenoy/vim-signature'
    Plug 'sheerun/vim-polyglot'
    Plug 'davidhalter/jedi-vim'
    Plug 'mhinz/vim-startify'
    Plug 'majutsushi/tagbar'
    Plug 'godlygeek/tabular'
    Plug 'ervandew/supertab'
    Plug 'plasticboy/vim-markdown'
    Plug 'mboughaba/i3config.vim'
    Plug 'kana/vim-textobj-user'
    Plug 'xolox/vim-misc'
    Plug 'xolox/vim-notes'
    Plug 'vim-scripts/c.vim'
    Plug 'vimwiki/vimwiki'
    Plug 'blindFS/vim-taskwarrior' 
    Plug 'mattn/emmet-vim'
    Plug 'Shougo/unite.vim'
    Plug 'joshdick/onedark.vim'
    Plug 'mbbill/undotree'
    Plug 'vim-scripts/svg.vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'airblade/vim-gitgutter'
    Plug 'python-mode/python-mode'
    Plug 'chrisbra/Colorizer'
    Plug 'honza/vim-snippets'
    Plug 'Shougo/neosnippet-snippets'
    Plug 'Shougo/deoplete.nvim'
    Plug 'Shougo/denite.nvim'
    Plug 'Shougo/deoppet.nvim'
    Plug 'Shougo/deol.nvim'
    Plug 'Shougo/neosnippet.vim'
    Plug 'dense-analysis/ale'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'hiphish/info.vim'
    Plug 'reconquest/vim-pythonx'
    Plug 'SirVer/UltiSnips'
    Plug 'kien/ctrlp.vim'
    PlugInstall!
endfunction

function! ConfigurePluginsPreload()
    let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
    let g:airline_powerline_fonts=1
    let g:airline#extensions#tabline#enabled=1
    let g:airline#extensions#tabline#show_close_button=1
    let g:miniBufExplAutoStart=0
    " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
    let g:UltiSnipsExpandTrigger="<C-k>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"

    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"
    
    let g:vimwiki_use_mouse=1
    let g:vimwiki_dir_link=index
    " optional
    let g:vimwiki_listsyms = '✗○◐●✓'
    echohl Question | echo '[Pre] Configured installed plugins' | echohl None
endfunction

function! ConfigurePluginsPostload()
    if exists('did_asheinit_vim')
        " set fallback theme"
        colo onedark
        colo impactjs
        AirlineTheme powerlineish
        AirlineToggleWhitespace
        echohl Question | echo '[Post] Configured installed plugins' | echohl None
    endif
endfunction

let did_plugins_vim = 2
echohl Function | echo 'Loaded script file: plugins.vim' | echohl None
