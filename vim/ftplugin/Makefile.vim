augroup FTSwapHandlers
    " this one is which you're most likely to use?
    autocmd BufRead,BufNewFile Makefile, *.mk s:swapactive
    autocmd BufLeave,BufWinLeave Makefile, *.mk s:swapinactive
augroup end



func! s:swapactive()
    echo "Youre on a makefile"
endf


func! s:swapinactive()
    echo "Youre not on a makefile anymore!"
endf
