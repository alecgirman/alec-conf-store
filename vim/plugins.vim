if exists('g:ashe_did_plugins_vim') || &cp || version < 700
    finish
endif
let g:ashe_did_plugins_vim = 1

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
    Plug 'Shougo/deol.nvim'
    Plug 'Shougo/neosnippet.vim'
    Plug 'dense-analysis/ale'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'hiphish/info.vim'
    Plug 'SirVer/UltiSnips'
    Plug 'kien/ctrlp.vim'
    Plug 'mileszs/ack.vim'
    PlugInstall!
endfunction

function! ConfigurePluginsPreload()
    let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
    let g:airline_powerline_fonts=1
    let g:airline#extensions#tabline#enabled=1
    let g:airline#extensions#tabline#show_close_button=1
    let g:miniBufExplAutoStart=0

    let g:UltiSnipsExpandTrigger="<C-k>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"
    let g:UltiSnipsEditSplit="vertical"

    let g:vimwiki_list = [{'path': '~/my_site/', 'path_html': '~/public_html/'}]
    let g:vimwiki_wikidir = /var/wiki
    let g:vimwiki_use_mouse=1
    let g:vimwiki_dir_link=index  " Default .wiki file for new directories
    let g:vimwiki_listsyms = '✗○◐●✓'

	" I'm not sure if I'll need to reinstall the plugins agaian but they
	" are listed in the coc-packagelist.txt file.
	CocEnable | CocStart
    echohl Question | echomsg '[Pre] Configured installed plugins' | echohl None
endfunction

function! ConfigureSnippets()
    let g:neosnippet#snippets_directory='/var/snippets/'

    " Plugin key-mappings.
    " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
    imap <C-k>     <Plug>(neosnippet_expand_or_jump)
    smap <C-k>     <Plug>(neosnippet_expand_or_jump)
    xmap <C-k>     <Plug>(neosnippet_expand_target)

    " SuperTab like snippets' behavior.
    " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
    imap <expr><TAB>
                \ pumvisible() ? "\<C-n>" :
                \ neosnippet#expandable_or_jumpable() ?
                \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
                \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

    " For conceal markers.
    if has('conceal')
        set conceallevel=2 concealcursor=niv
    endif

    " Enable snipMate compatibility feature.
    let g:neosnippet#enable_snipmate_compatibility = 1

    " Expand the completed snippet trigger by <CR>.
    imap <expr><CR>
                \ (pumvisible() && neosnippet#expandable()) ?
                \ "\<Plug>(neosnippet_expand)" : "\<CR>"

    call deoplete#enable()
endfunction

function! ConfigurePluginsPostload()
    if exists('did_asheinit_vim')
        " colo impactjs
        AirlineTheme powerlineish
        AirlineToggleWhitespace
        echohl Question | echomsg '[Post] Configured installed plugins' | echohl None
    endif
endfunction

let did_plugins_vim = 2
echohl Function | echomsg 'Loaded script file: plugins.vim' | echohl None
