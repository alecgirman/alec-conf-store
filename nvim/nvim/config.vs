let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/ashe/nvim/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 init.vim
badd +48 autoload/keybinds.vim
badd +8 autoload/functions.vim
badd +1 after/ftplugin/vim.vim
badd +1 2
badd +0 /usr/share/nvim/runtime/doc/windows.txt
badd +3 system.log
argglobal
%argdel
$argadd init.vim
set stal=2
edit /usr/share/nvim/runtime/doc/windows.txt
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 43 + 44) / 89)
exe '2resize ' . ((&lines * 42 + 44) / 89)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 142 - ((37 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
142
normal! 068|
wincmd w
argglobal
if bufexists("init.vim") | buffer init.vim | else | edit init.vim | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 0
wincmd w
exe '1resize ' . ((&lines * 43 + 44) / 89)
exe '2resize ' . ((&lines * 42 + 44) / 89)
tabedit autoload/keybinds.vim
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 160 + 160) / 320)
exe '2resize ' . ((&lines * 42 + 44) / 89)
exe 'vert 2resize ' . ((&columns * 159 + 160) / 320)
exe '3resize ' . ((&lines * 43 + 44) / 89)
exe 'vert 3resize ' . ((&columns * 159 + 160) / 320)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 51 - ((50 * winheight(0) + 43) / 86)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
51
normal! 04|
wincmd w
argglobal
if bufexists("/usr/share/nvim/runtime/doc/starting.txt") | buffer /usr/share/nvim/runtime/doc/starting.txt | else | edit /usr/share/nvim/runtime/doc/starting.txt | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 808 - ((35 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
808
normal! 059|
wincmd w
argglobal
if bufexists("autoload/functions.vim") | buffer autoload/functions.vim | else | edit autoload/functions.vim | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 11 - ((5 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 054|
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 160 + 160) / 320)
exe '2resize ' . ((&lines * 42 + 44) / 89)
exe 'vert 2resize ' . ((&columns * 159 + 160) / 320)
exe '3resize ' . ((&lines * 43 + 44) / 89)
exe 'vert 3resize ' . ((&columns * 159 + 160) / 320)
tabnext 2
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
