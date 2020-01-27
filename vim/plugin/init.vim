if exists('did_asheinit_vim')
    finish
endif
let did_asheinit_vim = 1

command! -nargs=0 FullInit :call ashe#loader#orchestrate()
command! -nargs=0 EditInitScript :e /ashe/vim/plugin/init.vim
command! -nargs=0 EditPostLoadScript :e /ashe/vim/autoload/loader.vim
command! -nargs=0 EditKeybinds :e /ashe/vim/autoload/keybinds.vim

call ashe#loader#orchestrate()

let did_asheinit_vim=2 " init complete indicator
