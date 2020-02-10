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
set noswapfile		" Forces files to exist only in memory and not to be cached to disk.  For me, when set to 'swapfile', trying to openA
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
    call setenv('VIMRUNTIME', '/usr/share/vim/vim82')
    syntax on
else
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
set history=10000		" Amount of history to save.  
set undofile			" Store undo history in a file 

" in neovim this would be set shada but its
" backwards compatible with set viminfo
set viminfo='1000,<500,s100   
set timeoutlen=300              " shorten the key timeout from the default of 500ms

" set diffopt=                    " clear diff settings
set diffopt+=iwhite,iblank      " ignore whitespace and blank lines when evaluating diff

filetype plugin indent on
