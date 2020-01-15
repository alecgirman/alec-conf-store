
" Warning: the line below this changes frequently and is subject to change
" at any moments notice, be cautions when using it in your code :)
" colorscheme wombat256mod

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
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
    Plug 'SirVer/ultisnips'
    Plug 'davidhalter/jedi-vim'
    Plug 'mhinz/vim-startify'
    Plug 'majutsushi/tagbar'
    Plug 'godlygeek/tabular'
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
    PlugInstall!
endfunction

function! ConfigurePluginsPreload()
    let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
    let g:airline_powerline_fonts=1
    let g:airline#extensions#tabline#enabled=1
    let g:airline#extensions#tabline#show_close_button=1
    let g:miniBufExplAutoStart=0
    call InstallThirdPartyPlugins()
    echohl Question | echo '[Pre] Configured installed plugins' | echohl None
endfunction

function! ConfigurePluginsPostload()
    AirlineToggleWhitespace
    AirlineTheme powerlineish
    colo onedark
    echohl Question | echo '[Post] Configured installed plugins' | echohl None
endfunction

echohl Function | echo 'Loaded script file: plugins.vim' | echohl None
