if exists('did_keybinds_vim') || &cp || version < 700
    finish
endif
let did_keybinds_vim = 1

function! LoadDefaultKeybinds()
    " =======================
    " K E Y B I N D I N G S
    " =======================

    " easy escape
    inoremap jj <Esc>l

    " quicker vertical movement 
    noremap J <C-d>
    noremap K <C-u>

    noremap Y ^v$hy

    noremap gl :CocList 
    noremap glc :CocList colors<CR>
    noremap gls :CocList snippets<CR>
    noremap glv :CocList tags<CR>

    " quickly turn off highlighting after a search
    noremap H :noh<CR>

    nnoremap gl :CocList --list<CR>
    nnoremap gls :CocList snippets<CR>

    nnoremap bls :ls<CR>:b 

    " K by default is binded to manpages/docs
    " and that's too good of a shortcut to lose
    " TODO: F1 might do this too, try it too
    noremap L K
    noremap oo 2ojj

    " nnoremap <Up> <C-w>+
    " nnoremap <Down> <C-w>-
    " nnoremap <Right> <C-w>>
    " nnoremap <Left> <C-w><

    " nnoremap <S-Up> 5<C-w>+
    " nnoremap <S-Down> 5<C-w>-
    " nnoremap <S-Right> 5<C-w>>
    " nnoremap <S-Left> 5<C-w><

    " Z   = Save current file
    " ZZZ = Force Quit all
    " ZQQ = Save and Close all
    " ZS  = Make Session
    nmap Z :w!<CR>
    nmap QQ :q!<CR>
    nmap ZZZ :qa!<CR>
    nmap ZZQ :wa!<CR>:qa!<CR>
    nmap ZS :mksession! 
    nmap ZV :w<CR>:source %<CR>
    nmap ZT :tabclose!<CR>

    " Open a terminal window
    noremap <Space>! :vs<CR><C-w>l:term<CR>i

    " Terminal mode mappings
    tmap <Esc> <C-\><C-n>

    " Addon windows
    nmap <F2> :NERDTreeToggle<CR>
    nmap <F3> :UndotreeToggle<CR>
    nmap <F4> :TagbarToggle<CR>

    nmap <Space>c :call
    nnoremap <Space>s :%s//g<Left><Left>
    nnoremap <Space>r :r 
    noremap <Space><Tab> :Tabularize /
    noremap <Space>h :help<Space>
    vnoremap <Space>h :help <C-r>"<CR>
    noremap <Space>w :VimwikiUISelect<CR>
    noremap <C-Space>v :call AsheToggleVirtualEdit()<CR>
    noremap <C-Space>c :call Colorizer#ColorOff()<CR>:call Colorizer#ColorToggle()<CR>
    noremap <C-Space>C :windo call Colorizer#ColorOff()<CR>:call Colorizer#ColorToggle()<CR>
    noremap <C-Space>cc :call Colorizer#ColorToggle()<CR>
    noremap <C-Space>CC :windo call Colorizer#ColorToggle()<CR>

    " I just need a shortcut for making tabs.
    " See above for a shortcut on closing tabs.
    noremap <Space>t :tabnew<CR>

    echohl Question
    echomsg "ASHE: Loaded Default keybindings"
    echohl None
endfunction

if exists('g:is_debugging')
    call LoadDefaultKeybinds()
endif
    
let did_keybinds_vim = 2
echohl Function | echo 'Loaded script file: keybinds.vim' | echohl None
