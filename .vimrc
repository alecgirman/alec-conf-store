" Alec's Vim Config Script
" Install with :source .vimrc

" Todo: Script to ask to save on exit
" Todo: Show all mappings for any given combo
"   * run all map commands and save all outputs

echo 'Loading Vim configuration...'
" silent !rm -r -f ~/.vim

"set options
echo 'Setting basic options'
set nocompatible
set showmode
set showcmd
set showmatch
set hidden
set autowrite
set number
set relativenumber
set noswapfile

" search settings
echo 'Configuring search settings'
set ignorecase
set smartcase
set incsearch
set hlsearch

set history=250
set viminfo='1000,<500,s100

" restrict screen movement from cursor
set scrolloff=4

" tab settings
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set smarttab

set wildmenu

" 24 bit color
set background=dark
" set t_Co=256
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Fixes black background issue with themes
if &term =~ '256color'
  set t_ut=
endif

" Syntax highlighting
" must be set AFTER background!
if has("syntax")
  syntax on
endif

" =======================
" K E Y B I N D I N G S
" =======================

" easy escape
imap jj <Esc><Right>

" ideas
" -----
" make list title like the line above this with spc-i-l


" easy marks
noremap <Space>m `
noremap <Space>q @

" Insert commands
"   

noremap <Space>ik a_<Esc>r

noremap <Space>

noremap mm `

noremap J <C-d>
noremap K <C-u>

noremap <Space>hv viwy:help <C-R>"<CR>


" =======================
"   F U N C T I O N S
" =======================

" TODO: FileExists

" =======================
"   P L U G I N S ! ! !
" =======================

" function installVundle {
"   "silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"   set rtp+=~/.vim/bundle/Vundle.vim
"   source VundleVim/Vundle.vim
"}

" start loading plugins

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

PluginInstall! 'VundleVim/Vundle.vim'
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
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhinz/vim-startify'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'kana/vim-textobj-user'
Plugin 'xolox/vim-notes'
Plugin 'vimwiki/vimwiki'
Plugin 'Shougo/unite.vim'
" Plugin 'ycm-core/YouCompleteMe'

call vundle#end()
colorscheme gruvbox
filetype plugin indent on

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
call feedkeys("\<Esc>")
