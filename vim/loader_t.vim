
" MISC COLOR SETTINGS
" let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
" set t_AB="<Esc>[48;5;%dm"
" set t_AF="<Esc>[38;5;%dm"
" set t_ut=
" set t_Co=256

func! ashe#loader#source()
	call ashe#loader#orchestrate()
endf

function! ashe#loader#orchestrate()
	function! s:plugins()
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
		" Plug 'gmarik/snipmate.vim'
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
		" Plug 'Shougo/unite.vim'
		Plug 'joshdick/onedark.vim'
		Plug 'mbbill/undotree'
		Plug 'vim-scripts/svg.vim'
		Plug 'terryma/vim-multiple-cursors'
		Plug 'airblade/vim-gitgutter'
		" Plug 'python-mode/python-mode'
		Plug 'chrisbra/Colorizer'
		Plug 'honza/vim-snippets'
		Plug 'Shougo/neosnippet-snippets'
		" Plug 'Shougo/deoplete.nvim'
		Plug 'Shougo/deol.nvim'
		Plug 'Shougo/neosnippet.vim'
		Plug 'dense-analysis/ale'
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'SirVer/UltiSnips'
		Plug 'liuchengxu/vim-clap'
        Plug 'LucHermitte/local_vimrc'
		PlugInstall
	endfunction

	function! s:basicConfig()
		set showmode		" Display the mode in the statusbar.  I don't know why you'd have this off.
		set showcmd			" Has nothing to do with showing the comand, but shows the visual selection dimensions.
		set showmatch		" Show matching pairs when your cursor is on one.
		set hidden			" Allows modified buffers to be closed without losing their content.  Will prompt to save on exit.
		set autowrite		" Automatically save ONLY when executing commands that involve processing that file (like :make)
		set autoread		" Supposed to update the file when changed elsewhere but that doesnt seem to work.
		set number			" When this comes before relativenumber, all line numbers are relative excxept the current line.
		set relativenumber	" lines are numbered based on their distance from the cursor.
		set laststatus=2	" Always show a status bar on each window.
		set showtabline=2	" Always show the tab bar.  Alternatively, it can be set to 1 to only show when theres more than one tab.
		set scrolloff=10	" A 'scroll padding', makes scrolling in vim feel a little more like other text edfitors and more natural.
		set nowrap			" Disable text wrapping, even when it heavily limits your view.  I just hate line wrapping anywhere
		set completeopt=longest,menuone,preview
		" set wildmode=list:longest
		set wildmode=full	" Neovim default, shows beautiful popup (when its not that ugly magenta one)
		set modeline 		" Evaluate modelines, allowing you to set per-file vim options from within the file itself.
		set noswapfile		" Forces files to exist only in memory and not to be cached to disk.  For me, when set to 'swapfile', trying to open
							" any file results in it warning me about an existing swap file which is annoying as shit.

		" search settings
		set ignorecase      " Ignore case in search and seek commands
		set smartcase       " ...but only in search commands
		set incsearch       " Perform searches and highlight matches as you're typing your search
		set hlsearch        " Highlight search matches

		set mouse=a             " Enable full mouse support
		set mousemodel=popup  " Define the mouse model

		if !has ('nvim')		" only works in vim
			set ttymouse=sgr      " Set terminal mouse input mode
            set icm=nosplit     " Perform searches and highlight substitutions as you're typing substitution commands 
		endif

		" Editor tab settings
		set tabstop=4           " This should always be 8.  To change the number of spaces for each tab, use softtabstop
		set shiftwidth=4        " The number of spaces that any shift operators push you by.  Should be set to your softabstop unless you have any other reason to do so.
		set autoindent          " Automatically indent on new line, a standard feature in basically every text editor
		set expandtab           " Expand tabs to spaces 
		set smarttab            " When on, tabs per spaces is defined by shiftwidth.  Otherwise, it uses (soft)tabstop.  Its confusing so I might be wrong.

		" Misc settings
		set wildmenu			" Show popup menu for autocompletions
		set history=25000		" Amount of history to save.  
		set undofile			" Store undo history in a file 

		" in neovim this would be set shada but its
		" backwards compatible with set viminfo
		set viminfo='1000,<500,s100   
		set timeoutlen=300              " shorten the key timeout from the default of 500ms

		" set diffopt=                    " clear diff settings
		set diffopt+=iwhite,iblank      " ignore whitespace and blank lines when evaluating diff

		filetype plugin indent on
		syntax on
	endfunction

	function! s:initcolors()
		" In the system console, very limited color support
		let s:ashe_colormode = 0
		if system('echo $TERM') == 'linux'
			echomsg 'Detected limited color support (TERM=linux)'
			" <<m4:lo-colorscheme>>
			let s:ashe_colormode = 1
			set bg=dark t_Co=16 notgc
		else
			echomsg 'Detected full color support'
			let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
			let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
			" <<m4:hi-colorscheme>>
			let s:ashe_colormode = 2
			set bg=dark t_Co=256gk tgc
		endif

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
		let g:airline#theme = 'powerlineish'
		let g:miniBufExplAutoStart=0

		let g:UltiSnipsExpandTrigger="<C-k>"
		let g:UltiSnipsJumpForwardTrigger="<c-b>"
		let g:UltiSnipsJumpBackwardTrigger="<c-z>"
		let g:UltiSnipsEditSplit="vertical"

		let g:vimwiki_list = [{'path': <<CONFIGGET(WIKIDIR)>>}] 
		let g:vimwiki_use_mouse=1
		let g:vimwiki_dir_link=index  " Default .wiki file for new directories
		let g:vimwiki_listsyms = '✗○◐●✓'
		let g:vimwiki_ext2syntax = {'.md': 'markdown',
					\ '.mkd': 'markdown',
					\ '.wiki': 'media'}

		echohl Question | echomsg '[Pre] Configured installed plugins' | echohl None
		let g:neosnippet#snippets_directory='/var/snippets/'

		imap <C-k>     <Plug>(neosnippet_expand_or_jump)
		smap <C-k>     <Plug>(neosnippet_expand_or_jump)
		xmap <C-k>     <Plug>(neosnippet_expand_target)

		" SuperTab like snippets' behavior.
		" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
		" imap <expr><TAB>
		" 			\ pumvisible() ? "\<C-k>" :
		" 			\ neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
        " 
		" smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

		" For conceal markers.
		if has('conceal')
			set conceallevel=2 concealcursor=nv
		endif

		" Enable snipMate compatibility feature.
		" let g:neosnippet#enable_snipmate_compatibility = 1
	endf

	call s:basicConfig()
	call s:pluginconf()
	call s:plugins()
	call plug#end()
	call s:initcolors()

endfunction

