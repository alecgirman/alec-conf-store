let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/ashe/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +13 ~/ashe/zsh/boot.zsh
badd +0 ~/ashe/zsh/core.zsh
badd +1 ~/ashe/zsh/:term
badd +0 term://.//6125:/usr/bin/zsh
badd +1 cfg.nvs
badd +0 ashe/ashe.vim
badd +0 ashe/keybinds.vim
badd +0 term://.//53808:/usr/bin/zsh
argglobal
%argdel
$argadd ~/ashe/zsh/boot.zsh
$argadd ~/ashe/zsh/core.zsh
set stal=2
edit ~/ashe/zsh/boot.zsh
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
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
exe '1resize ' . ((&lines * 43 + 45) / 90)
exe 'vert 1resize ' . ((&columns * 213 + 160) / 320)
exe '2resize ' . ((&lines * 43 + 45) / 90)
exe 'vert 2resize ' . ((&columns * 106 + 160) / 320)
exe '3resize ' . ((&lines * 43 + 45) / 90)
exe 'vert 3resize ' . ((&columns * 106 + 160) / 320)
exe '4resize ' . ((&lines * 43 + 45) / 90)
exe 'vert 4resize ' . ((&columns * 106 + 160) / 320)
exe '5resize ' . ((&lines * 43 + 45) / 90)
exe 'vert 5resize ' . ((&columns * 106 + 160) / 320)
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
let s:l = 51 - ((42 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
51
normal! 0
wincmd w
argglobal
if bufexists("term://.//6125:/usr/bin/zsh") | buffer term://.//6125:/usr/bin/zsh | else | edit term://.//6125:/usr/bin/zsh | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 040|
wincmd w
argglobal
if bufexists("~/ashe/zsh/boot.zsh") | buffer ~/ashe/zsh/boot.zsh | else | edit ~/ashe/zsh/boot.zsh | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((6 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
wincmd w
argglobal
2argu
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 42 - ((20 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
42
normal! 0
wincmd w
argglobal
2argu
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 55 - ((42 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
55
normal! 0
wincmd w
exe '1resize ' . ((&lines * 43 + 45) / 90)
exe 'vert 1resize ' . ((&columns * 213 + 160) / 320)
exe '2resize ' . ((&lines * 43 + 45) / 90)
exe 'vert 2resize ' . ((&columns * 106 + 160) / 320)
exe '3resize ' . ((&lines * 43 + 45) / 90)
exe 'vert 3resize ' . ((&columns * 106 + 160) / 320)
exe '4resize ' . ((&lines * 43 + 45) / 90)
exe 'vert 4resize ' . ((&columns * 106 + 160) / 320)
exe '5resize ' . ((&lines * 43 + 45) / 90)
exe 'vert 5resize ' . ((&columns * 106 + 160) / 320)
tabedit ashe/ashe.vim
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 43 + 45) / 90)
exe 'vert 1resize ' . ((&columns * 209 + 160) / 320)
exe '2resize ' . ((&lines * 43 + 45) / 90)
exe 'vert 2resize ' . ((&columns * 209 + 160) / 320)
exe 'vert 3resize ' . ((&columns * 110 + 160) / 320)
argglobal
if bufexists("ashe/ashe.vim") | buffer ashe/ashe.vim | else | edit ashe/ashe.vim | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 27 - ((13 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 0
wincmd w
argglobal
if bufexists("ashe/keybinds.vim") | buffer ashe/keybinds.vim | else | edit ashe/keybinds.vim | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3 - ((1 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 025|
wincmd w
argglobal
if bufexists("term://.//53808:/usr/bin/zsh") | buffer term://.//53808:/usr/bin/zsh | else | edit term://.//53808:/usr/bin/zsh | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 43) / 87)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 044|
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 43 + 45) / 90)
exe 'vert 1resize ' . ((&columns * 209 + 160) / 320)
exe '2resize ' . ((&lines * 43 + 45) / 90)
exe 'vert 2resize ' . ((&columns * 209 + 160) / 320)
exe 'vert 3resize ' . ((&columns * 110 + 160) / 320)
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
