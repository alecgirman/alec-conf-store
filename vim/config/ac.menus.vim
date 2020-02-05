/var/git/ashe/vim/config
noremap <RightMouse> :popup! MenuSelector<CR>
noremap gm :popup! MenuSelector<CR>

nmenu MenuSelector.Quick :popup! Quick<CR>
nmenu MenuSelector.File :popup! File<CR>
nmenu MenuSelector.Options :popup! Options<CR>
nmenu MenuSelector.EditConfig :popup! EditConfig<CR>
nmenu MenuSelector.Surface :popup! Surface<CR>
nmenu MenuSelector.Insert :popup Insert<CR>


nmenu EditConfig.Colors             :e  /data/git/ashe/vim/config/ac.colors.vim<CR>
nmenu EditConfig.Core               :e  /data/git/ashe/vim/config/ac.core.vim<CR>
nmenu EditConfig.Ftplugins.Make     :e  /data/git/ashe/vim/config/ac.ftplugins.make.vim<CR>
nmenu EditConfig.Keys               :e  /data/git/ashe/vim/config/ac.keys.vim<CR>
nmenu EditConfig.Menus              :e  /data/git/ashe/vim/config/ac.menus.vim<CR>
nmenu EditConfig.Plugins            :e  /data/git/ashe/vim/config/ac.plugins.vim<CR>

nmenu FIle.New :new<CR>
nmenu File.Open :Clap files<CR>
nmenu File.Save :w!<CR>
nmenu File.Close :q<CR>
nmenu File.Quit :q!<CR>

" Check power levels
nmenu Surface.BatteryReport :tabnew<CR>:r !upower -d<CR>
nmenu Surface.PacmanPackages :tabnew<CR>:r !pacman -Q<CR>
nmenu Surface.BrightnessMax :!echo 7500 > /sys/class/backlight/intel_brightness/brightness<CR>
nmenu Surface.BrightnessMedium :!echo 5000 > /sys/class/backlight/intel_brightness/brightness<CR>
nmenu Surface.BrightnessLow :!echo 2000 > /sys/class/backlight/intel_brightness/brightness<CR>

nmenu Insert.Date <C-r>=strftime()
