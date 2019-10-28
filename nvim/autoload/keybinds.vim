" =======================
" K E Y B I N D I N G S
" =======================

func! AsheMessageLoadKeybindsed()
    echohl Type
    echo "I can access keybinds.vim"
    echohl None
endf

func! AsheConfigEnable_BasicKeybinds()
    " easy escape
    imap jj <Esc>l
endf

func! AsheConfigEnable_VimExecKeys()
    "  - Execute contents of buffers
    "  TODO: Confusing
    "  Idea: Make one command that saves and runs a command of our choice on the file
    "       * %f = their saved filename
    "       * %t = temporary file
    noremap <Space>vxv :w! /tmp/exec.vim<CR>:source /tmp/exec.vim<CR>
    nmap <Space>vxV <Space>vxv:call
    noremap <Space>vxp :w! /tmp/exec.py<CR>:py3file /tmp/exec.py<CR>
endf

func! AsheConfigEnable_ZKeys()
    " New Z commands:
    " Z = Save current file
    " ZZZ = Force Quit all
    " ZQQ = Save and Close all

    nmap Z :w!<CR>
    nmap ZZZ :qa!<CR>
    nmap ZQQ :wa!<CR>:qa!<CR>
    nmap ZS :mksession! vimsession<CR>
endf

func! AsheConfigEnable_SettingKeys()
    "  - Settings
    "  TODO: Both of these settings need quicker toggles
    noremap <Space>vse :set ve=all<CR>
    noremap <Space>vsh :noh<CR>
endf

func! AsheConfigEnable_RegexReplaceKeys()
    " regex replace - absolutely perfect shortcut 10/10
    noremap <Space>r :%s/
endf

func! AsheConfigEnable_HalfPageSkipKeys()
    " Very useful quicker movement keys
    noremap J <C-d>
    noremap K <C-u>
endf

func! AsheConfigEnable_HelpKeybind()
    " Open help input dialog at bottom of screen, completion available!
    noremap <Space>h :help 
endf

func! AsheLoadDefaultKeybinds()
    call AsheConfigEnable_BasicKeybinds()
    call AsheConfigEnable_VimExecKeys()
    call AsheConfigEnable_ZKeys()
    call AsheConfigEnable_SettingKeys()
    call AsheConfigEnable_RegexReplaceKeys()
    call AsheConfigEnable_HalfPageSkipKeys()
    call AsheConfigEnable_HelpKeybind()

    
    echohl Type
    echomsg "ASHE: Loaded Default keybindings"
    echohl None
endfunction
