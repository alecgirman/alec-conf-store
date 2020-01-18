function! CDToCurrentBuf()

    call system("cd %:p:h")
    let s:cwd = system("pwd")
    cd s:cwd
endfunction

function! ToggleVirtualEdit()
    if &virtualedit == 'all'
        echo 'virtualedit is now off'
        set ve=
    else
        echo 'virtualedit is now on'
        set ve=all
    endif
endfunction

function SL_date()
    return system('date +%T')
endfunction
