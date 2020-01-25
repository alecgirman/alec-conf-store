augroup ASHE_MakefileFT_Handler
    " this one is which you're most likely to use?
    autocmd BufRead,BufNewFile Makefile, *.mk MakefileEnter
    autocmd BufLeave,BufWinLeave Makefile, *.mk MakefileLeave
augroup end


" Script activation
function! MakefileEnter()
    
endfunction

" Script deactivation
function! MakefileLeave()

endfunction
