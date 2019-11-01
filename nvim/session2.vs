let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /ext/ashe/zsh
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 zshref.zsh
badd +1 shit.vim
badd +70 /ext/ashe/nvim/plugin/init.vim
badd +32 /ext/ashe/nvim/plugin/keybinds.vim
argglobal
%argdel
$argadd zshref.zsh
set stal=2
edit zshref.zsh
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
exe '1resize ' . ((&lines * 32 + 33) / 66)
exe 'vert 1resize ' . ((&columns * 100 + 101) / 202)
exe '2resize ' . ((&lines * 30 + 33) / 66)
exe 'vert 2resize ' . ((&columns * 100 + 101) / 202)
exe 'vert 3resize ' . ((&columns * 101 + 101) / 202)
argglobal
if bufexists("/usr/share/nvim/runtime/doc/options.txt") | buffer /usr/share/nvim/runtime/doc/options.txt | else | edit /usr/share/nvim/runtime/doc/options.txt | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 6275 - ((31 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6275
normal! 0
wincmd w
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
let s:l = 20 - ((15 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 010|
wincmd w
argglobal
if bufexists("shit.vim") | buffer shit.vim | else | edit shit.vim | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 35 - ((32 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 08|
wincmd w
exe '1resize ' . ((&lines * 32 + 33) / 66)
exe 'vert 1resize ' . ((&columns * 100 + 101) / 202)
exe '2resize ' . ((&lines * 30 + 33) / 66)
exe 'vert 2resize ' . ((&columns * 100 + 101) / 202)
exe 'vert 3resize ' . ((&columns * 101 + 101) / 202)
tabedit /ext/ashe/nvim/plugin/init.vim
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
exe '1resize ' . ((&lines * 31 + 33) / 66)
exe 'vert 1resize ' . ((&columns * 101 + 101) / 202)
exe '2resize ' . ((&lines * 31 + 33) / 66)
exe 'vert 2resize ' . ((&columns * 101 + 101) / 202)
exe 'vert 3resize ' . ((&columns * 100 + 101) / 202)
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd /ext/ashe/zsh
wincmd w
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
let s:l = 36 - ((12 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 02|
lcd /ext/ashe/zsh
wincmd w
argglobal
if bufexists("/ext/ashe/nvim/plugin/init.vim") | buffer /ext/ashe/nvim/plugin/init.vim | else | edit /ext/ashe/nvim/plugin/init.vim | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 45 - ((15 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
45
normal! 0
lcd /ext/ashe/zsh
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 31 + 33) / 66)
exe 'vert 1resize ' . ((&columns * 101 + 101) / 202)
exe '2resize ' . ((&lines * 31 + 33) / 66)
exe 'vert 2resize ' . ((&columns * 101 + 101) / 202)
exe 'vert 3resize ' . ((&columns * 100 + 101) / 202)
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
