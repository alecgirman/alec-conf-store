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
set rtp+=~/.vim/vundle.vim/

" TODO: root needs to source it differently
source ~/.vim/vundle.vim/autoload/vundle.vim
call vundle#begin()

Plug 'VundleVim/Vundle.vim'
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
Plug 'kana/vim-textobj-user'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'vimwiki/vimwiki'
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
Plug 'Shougo/defx.nvim'
Plug 'Shougo/deol.nvim'
Plug 'Shougo/neosnippet.vim'

" Plugin 'coc.nvim-release'}
" Plugin 'neoclide/coc-tabnine'


PluginInstall
call vundle#end()
close
filetype plugin indent on
colorscheme onedark

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets' behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" imap <expr><TAB>
" 			\ pumvisible() ? "\<C-n>" :
" 			\ neosnippet#expandable_or_jumpable() ?
" 			\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" 			\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
	set conceallevel=1 concealcursor=niv
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" BUG: if other users use this config, they cant access /root
let g:neosnippet#snippets_directory='/root/.vim/snippets/'
call g:deoplete#custom#option('auto_complete_delay', 200)
call g:deoplete#custom#option('smart_case', v:true)

call g:deoplete#enable()
let g:airline_powerline_fonts = 1
