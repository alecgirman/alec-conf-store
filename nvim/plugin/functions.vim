function! Ashe_cdb()
    let s:bufpath = expand("%:p:h")
    call system('cd ' . s:bufpath)
endfunction
