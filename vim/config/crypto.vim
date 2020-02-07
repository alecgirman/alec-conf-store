function! SHA512(text)
    let cmd = 'openssl sha512 <(echo ' . a:text . ')'
    let sysresp = systemlist(cmd)
    vnew
    put sysresp
    let @/="\x\{128}"
    exe normal jj
    return sysresp 
endfunction
