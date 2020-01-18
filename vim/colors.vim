if exists('did_ashecolors_vim') || &cp || version < 700
    finish
endif
let did_ashecolors_vim = 1

" MISC COLOR SETTINGS
" let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
" set t_AB="<Esc>[48;5;%dm"
" set t_AF="<Esc>[38;5;%dm"
" set t_ut=
" set t_Co=256

function! ConfigureColors()

    " In the system console, very limited color support
    if system('echo $TERM') == 'linux'
        colo default
        set bg=dark notgc
    else
        set t_AB=[48;5;%dm
        set t_AF=[38;5;%dm
        colo onedark
        set bg=dark t_Co=256 tgc
    endif

    hi VertSplit gui=NONE cterm=NONE term=NONE guifg=#202020
    hi TabLineFill gui=NONE cterm=NONE term=NONE guibg=#404040
endfunction

let did_ashecolors_vim = 2
echohl Function | echo 'Loaded script file: colors.vim' | echohl None
