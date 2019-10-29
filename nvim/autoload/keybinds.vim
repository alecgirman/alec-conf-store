" =======================
" K E Y B I N D I N G S
" =======================

func! AsheEnableBasicKeybinds()
    " easy escape
    imap jj <Esc>l
	
    " Very useful quicker movement keys
    noremap J <C-d>
    noremap K <C-u>
endf

func! AsheEnableZKeys()
    " New Z commands:
    " Z = Save current file
    " ZZZ = Force Quit all
    " ZQQ = Save and Close all

    nmap Z :w!<CR>
    nmap ZZZ :qa!<CR>
    nmap ZQQ :wa!<CR>:qa!<CR>
    nmap ZS :mksession! vimsession<CR>
endf

func! AsheEnableSpaceKeys()
    noremap <Space>vxv :w! /tmp/exec.vim<CR>:source /tmp/exec.vim<CR>
    nmap <Space>vxV <Space>vxv:call
    noremap <Space>vxp :w! /tmp/exec.py<CR>:py3file /tmp/exec.py<CR>
    noremap <Space>vse :set ve=all<CR>
    noremap <Space>vsh :noh<CR>
    noremap <Space>r :%s/
    noremap <Space>h :help 
endf

func! AsheLoadDefaultKeybinds()
	call AsheEnableBasicKeybinds()
	call AsheEnableZKeys()
	call AsheEnableSpaceKeys()
	
    echohl Type
    echomsg "ASHE: Loaded Default keybindings"
    echohl None
endfunction
