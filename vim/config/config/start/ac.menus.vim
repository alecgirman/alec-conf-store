" BUILD_TARGET: ~/.vim/pack/config/start/

noremap <RightMouse> :popup! MenuSelector<CR>
noremap <RightMouse> :popup! MenuSelector<CR>
noremap gm :popup! MenuSelector<CR>

nmenu MenuSelector.File :popup! File<CR>
" nmenu MenuSelector.Options :popup! Options<CR>
nmenu MenuSelector.EditConfig :popup! EditConfig<CR>
nmenu MenuSelector.Surface :popup! Surface<CR>
" nmenu MenuSelector.Insert :popup! Insert<CR>
nmenu MenuSelector.Navigation :popup! Navigation<CR>
" TODO; find out how to make buffer-local menus
" nmenu MenuSelector.Surround :popup! Surround<CR>
nmenu MenuSelector.Vim :popup! Vim<CR>

nmenu EditConfig.Colors             :e  /ashe/vim/config/ac.colors.vim<CR>
nmenu EditConfig.Core               :e  /ashe/vim/config/ac.core.vim<CR>
nmenu EditConfig.Ftplugins.Make     :e  /ashe/vim/config/ac.ftplugins.make.vim<CR>
nmenu EditConfig.Keys               :e  /ashe/vim/config/ac.keys.vim<CR>
nmenu EditConfig.Menus              :e  /ashe/vim/config/ac.menus.vim<CR>
nmenu EditConfig.Plugins            :e  /ashe/vim/config/ac.plugins.vim<CR>

nmenu FIle.New :new<CR>
nmenu File.Open :Clap files<CR>
nmenu File.Save :w!<CR>
nmenu File.Close :q<CR>
nmenu File.Quit :q!<CR>

function! CreateTodoIfMissing() abort
    if !exists('g:todo_filename')
        let g:todo_filename = 'todo.txt'
    endif
    
    new expand(g:todo_filename)
endfunction

amenu Todo.Create\ TODO :new TODO<CR>:call ActivateTodoMenu()<CR>
amenu Todo.Create\ todo.txt :new todo.txt<CR>:call ActivateTodoMenu()<CR>

" Check power levels
nmenu Surface.BatteryReport :tabnew<CR>:r !upower -d<CR>
nmenu Surface.PacmanPackages :tabnew<CR>:r !pacman -Q<CR>
nmenu Surface.BrightnessMax :!echo 7500 > /sys/class/backlight/intel_backlight/brightness<CR>
nmenu Surface.BrightnessMedium :!echo 5000 > /sys/class/backlight/intel_backlight/brightness<CR>
nmenu Surface.BrightnessLow :!echo 2000 > /sys/class/backlight/intel_backlight/brightness<CR>

vmenu Surround.Parenthesees S)
vmenu Surround.Double-Quotes S"
vmenu Surround.Single-Quotes S'

nmenu Navigation.Back <C-o>
nmenu Navigation.Forward <C-i>

nmenu Vim.Source :w!<CR>:so %<CR>
