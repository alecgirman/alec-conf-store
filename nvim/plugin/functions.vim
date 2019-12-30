function! AvXCDToCurrentBuf()
    let s:bufpath = expand("%:p")
    call system('cd ' . s:bufpath)
endfunction

function! AvXToggleVirtualEdit()
    if &virtualedit == 'all'
        echo 'virtualedit is now off'
        set ve=
    else
        echo 'virtualedit is now on'
        set ve=all
    endif
endfunction
