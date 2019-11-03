" =======================
"   P L U G I N S ! ! !
" =======================

function InstallVundle()
   silent !git clone https://github.com/VundleVim/Vundle.vim.git ./Vundle.vim
   set rtp+=./Vundle.vim
   source vundle.vim
endfunction

" start loading plugins

"call InstallVundle()
filetype off
"set rtp+=/home/alec/ashe/nvim/after/
"source %
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'roxma/nvim-yarp'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
" Plugin 'gmarik/snipmate.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kshenoy/vim-signature'
Plugin 'sheerun/vim-polyglot'
" Plugin 'SirVer/ultisnips'
Plugin 'davidhalter/jedi-vim'
Plugin 'mhinz/vim-startify'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'kana/vim-textobj-user'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'vimwiki/vimwiki'
" Plugin 'Shougo/unite.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'mbbill/undotree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" Plugin '../'

Plugin 'honza/vim-snippets'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/deoplete.nvim'
Plugin 'Shougo/denite.nvim'
Plugin 'Shougo/deoppet.nvim'
Plugin 'Shougo/defx.nvim'
Plugin 'Shougo/deol.nvim'
Plugin 'Shougo/neosnippet.vim'

PluginInstall
call vundle#end()

colorscheme onedark
filetype plugin indent on




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
