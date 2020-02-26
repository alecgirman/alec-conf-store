" BUILD_TARGET: ~/.vim/pack/config/start/

" In the system console, very limited color support
if system('echo $TERM') == 'linux'
	echomsg 'Detected limited color support (TERM=linux)'
    colo dimensions
	set bg=dark t_Co=16 notgc
else
	echomsg 'Detected full color support'
	let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
	colo deus
    set t_ut=
	set bg=dark t_Co=256gk tgc
endif

hi VimwikiHeader1 ctermbg=red guifg=#FF0000
hi VimwikiHeader2 ctermbg=green guifg=#00FF00
hi VimwikiHeader3 ctermbg=blue guifg=#0000FF
hi VimwikiHeader4 ctermbg=magenta guifg=#FF00FF
hi VimwikiHeader5 ctermbg=cyan guifg=#00FFFF
hi VimwikiHeader6 ctermbg=yellow guifg=#FFFF00

