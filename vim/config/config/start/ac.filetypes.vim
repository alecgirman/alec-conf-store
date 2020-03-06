" BUILD_TARGET: ~/.vim/pack/config/start/

augroup auAGCustom
    " this one is which you're most likely to use?
    autocmd BufRead,BufNewFile *.mk,Makefile call agft#make()
augroup end
