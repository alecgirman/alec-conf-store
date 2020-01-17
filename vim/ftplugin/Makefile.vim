<<<<<<< HEAD
augroup FTSwapHandlers
    " this one is which you're most likely to use?
    autocmd BufRead,BufNewFile Makefile, *.mk s:swapactive
    autocmd BufLeave,BufWinLeave Makefile, *.mk s:swapinactive
augroup end




if exists('did_avex_Makefile_vim') || &cp || version < 700
    finish
endif
let did_avex_Makefile_vim = 1

echohl Title | echomsg "Makefile filetype vimscript sourced" | echohl None
