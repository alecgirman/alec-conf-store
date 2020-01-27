command! -nargs=0 FullInit :call ashe#loader#orchestrate()
command! -nargs=0 EditInitScript :e /ashe/vim/plugin/init.vim
command! -nargs=0 EditPostLoadScript :e /ashe/vim/autoload/loader.vim
command! -nargs=0 EditKeybinds :e /ashe/vim/autoload/keybinds.vim
map <F5> :unmap <C-v><F5><CR>:FullInit<CR>
call ashe#loader#orchestrate()
