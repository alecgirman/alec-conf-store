"TODO: add autocommand for filetype enter/leave

if exists('did_avex_Makefile_vim') || &cp || version < 700
    finish
endif
let did_avex_Makefile_vim = 1

echohl Question | echomsg "Makefile filetype vimscript sourced" | echohl None
