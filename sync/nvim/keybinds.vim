" =======================
" K E Y B I N D I N G S
" =======================

" easy escape
imap jj <Esc>l
noremap pp :Unite register<CR>i

" ideas
" -----
" make list title like the line above this with spc-i-l


" Explicit rebinds

" easy marks
noremap <Space>m `
noremap <Space>q @

" Vim operations
"  - Save and Quit
noremap <Space>vq :q<CR>
noremap <Space>vw :w<CR>
noremap <Space>vqq :q!<CR>
noremap <Space>vwq :q<CR>
noremap <Space>vQ :qa<CR>
noremap <Space>vQQ :qa!<CR>

"  - Execute contents of buffers
noremap <Space>vxv :w! ~/.vim/tmp/exec.vim<CR>:source ~/.vim/tmp/exec.vim<CR>
nmap <Space>vxV <Space>vxv:call
noremap <Space>vxp :w! ~/.vim/tmp/exec.py<CR>:py3file ~/.vim/tmp/exec.py<CR>
noremap <Space>vxc :call 

"  - Settings
noremap <Space>vse :set virtualedit=all<CR>
noremap <Space>vsh :noh<CR>

" Insert commands
noremap <Space>ik a_<Esc>r

" Show Unite
noremap <Space>vu :Unite<CR>

" NERDTree
noremap <Space>ff :NERDTreeToggle<CR>

" regex replace
noremap <Space>r :%s/

noremap mm `

noremap J <C-d>
noremap K <C-u>

noremap <Space>hv :help 
noremap <Space>hl :viu<CR>
noremap <Space>hL :exu<CR>
vnoremap <Space>hv y:help <C-R>"<CR>
