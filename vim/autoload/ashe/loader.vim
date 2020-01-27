
" MISC COLOR SETTINGS
" let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
" set t_AB="<Esc>[48;5;%dm"
" set t_AF="<Esc>[38;5;%dm"
" set t_ut=
" set t_Co=256


function! ashe#loader#orchestrate()

	function s:plugins()
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
	
	function s:basicConfig()
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
	    set incsearch       " Perform searches and highlight matches as you're typing your search
	    set icm=nosplit     " Perform searches and highlight substitutions as you're typing substitution commands 
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
	    set undofile

	    " in neovim this would be set shada but its
	    " backwards compatible with set viminfo
	    set shada='1000,<500,s100   
	    set timeoutlen=300              " set key timeout

	    " set diffopt=                    " clear diff settings
	    set diffopt+=iwhite,iblank      " ignore whitespace and blank lines when evaluating diff

	    syntax on
	endfunction

	function s:initcolors()

	    " In the system console, very limited color support
	    let s:ashe_colormode = 0
	    if system('echo $TERM') == 'linux'
		echomsg 'Detected limited color support (TERM=linux)'
		colo Dim
		let s:ashe_colormode = 1
		set bg=dark t_Co=16 notgc
	    else
		echomsg 'Detected full color support'
		let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
		let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
		colo impactjs
		let s:ashe_colormode = 2
		set bg=dark t_Co=256 tgc
	    endif

        let g:airline#theme = 'powerlineish'
        let g:airline#init#vim_async=1
        call airline#extensions#whitespace#disable()

	    hi VimwikiHeader1 ctermbg=red guifg=#FF0000
	    hi VimwikiHeader2 ctermbg=green guifg=#00FF00
	    hi VimwikiHeader3 ctermbg=blue guifg=#0000FF
	    hi VimwikiHeader4 ctermbg=magenta guifg=#FF00FF
	    hi VimwikiHeader5 ctermbg=cyan guifg=#00FFFF
	    hi VimwikiHeader6 ctermbg=yellow guifg=#FFFF00


	    " Now we are responsible for finishing initialization
	    call ashe#keybinds#LoadDefaultKeybinds()
	endfunction

	function s:pluginconf()
	    let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
	    let g:airline_powerline_fonts=1
	    let g:airline#extensions#tabline#enabled=1
	    let g:airline#extensions#tabline#show_close_button=1
	    let g:miniBufExplAutoStart=0

	    let g:UltiSnipsExpandTrigger="<C-k>"
	    let g:UltiSnipsJumpForwardTrigger="<c-b>"
	    let g:UltiSnipsJumpBackwardTrigger="<c-z>"
	    let g:UltiSnipsEditSplit="vertical"

	    " let g:vimwiki_list = [{'path': '~/my_site/', 'path_html': '~/public_html/'}]
	    let g:vimwiki_list = [{'path': '/var/wiki'}]
	    let g:vimwiki_use_mouse=1
	    let g:vimwiki_dir_link=index  " Default .wiki file for new directories
	    let g:vimwiki_listsyms = '✗○◐●✓'
	    let g:vimwiki_ext2syntax = {'.md': 'markdown',
			  \ '.mkd': 'markdown',
			  \ '.wiki': 'media'}

		" I'm not sure if I'll need to reinstall the plugins agaian but they
		" are listed in the coc-packagelist.txt file.
		" CocEnable | CocStart
	    call deoplete#enable()
	    echohl Question | echomsg '[Pre] Configured installed plugins' | echohl None
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
			\ neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

	    smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

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
	endfunction

	call s:basicConfig()
	call s:pluginconf()
	call s:plugins()
    call plug#end()
    PlugInstall
	call s:initcolors()

endfunction

