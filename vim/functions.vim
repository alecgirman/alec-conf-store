function! AsheCDToCurrentBuf()
    let s:bufpath = expand("%:p")
    call system('cd ' . s:bufpath)
    cd s:bufpath
endfunction

function! AsheToggleVirtualEdit()
    if &virtualedit == 'all'
        echo 'virtualedit is now off'
        set ve=
    else
        echo 'virtualedit is now on'
        set ve=all
    endif
endfunction
