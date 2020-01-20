if exists('did_ashecolors_vim') 
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
    let s:ashe_colormode = 0
    if system('echo $TERM') == 'linux'
        echomsg 'Detected limited color support (TERM=linux)'
        " colo default
        let s:ashe_colormode = 1
        set bg=dark notgc
    else
        echomsg 'Detected full color support (TERM=linux)'
        set t_AB=[48;5;%dm
        set t_AF=[38;5;%dm
        " colo impactjs
        let s:ashe_colormode = 2
        set bg=dark t_Co=256 tgc
    endif

    hi VertSplit gui=NONE cterm=NONE term=NONE guifg=#202020
    hi TabLineFill gui=NONE cterm=NONE term=NONE guibg=#404040


    :hi VimwikiHeader1 guifg=#FF0000
    :hi VimwikiHeader2 guifg=#00FF00
    :hi VimwikiHeader3 guifg=#0000FF
    :hi VimwikiHeader4 guifg=#FF00FF
    :hi VimwikiHeader5 guifg=#00FFFF
    :hi VimwikiHeader6 guifg=#FFFF00
endfunction

let did_ashecolors_vim = 2
echohl Function | echomsg 'Loaded script file: colors.vim' | echohl None
