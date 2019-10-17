" =======================
"   P L U G I N S ! ! !
" =======================

function InstallVundle()
   " silent !git clone https://github.com/VundleVim/Vundle.vim.git ./Vundle.vim
   set rtp+=./Vundle.vim
   source vundle.vim
endfunction

" start loading plugins

call InstallVundle()
filetype off
set rtp+=/home/alec/ashe/nvim/after/
source %
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'roxma/nvim-yarp'
Plugin 'flazz/vim-colorschemes'
Plugin 'ColorSchemeMenuMaker'
Plugin 'tpope/vim-surround'
Plugin 'gmarik/snipmate.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kshenoy/vim-signature'
Plugin 'sheerun/vim-polyglot'
Plugin 'benmills/vimux'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'davidhalter/jedi-vim'
Plugin 'mhinz/vim-startify'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'kana/vim-textobj-user'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'vimwiki/vimwiki'
Plugin 'Shougo/unite.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'mbbill/undotree'
Plugin 'terryma/vim-multiple-cursors'
Plugin '../'

PluginInstall
call vundle#end()

colorscheme onedark
filetype plugin indent on

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<C-tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
" call feedkeys("\<Esc>")
