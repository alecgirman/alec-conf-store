let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_close_button=1
let g:airline#theme = 'powerlineish'
let g:miniBufExplAutoStart=0

let g:UltiSnipsExpandTrigger="<C-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

let g:vimwiki_list = [{'path': '/var/wiki'}] 
let g:vimwiki_use_mouse=1
let g:vimwiki_dir_link='index'  " Default .wiki file for new directories
let g:vimwiki_listsyms = '✗○◐●✓'
let g:vimwiki_ext2syntax = {'.md': 'markdown',
			\ '.mkd': 'markdown',
			\ '.wiki': 'media'}

echohl Question | echomsg '[Pre] Plugin configuration set, ready to packadd.' | echohl None

" if has('conceal')
" 	set conceallevel=2 concealcursor=nv
" endif

" Enable snipMate compatibility feature.
" let g:neosnippet#enable_snipmate_compatibility = 1

func! LoadAllPlugins()
	packadd ale                 
	packadd c.vim               
	packadd Colorizer           
	packadd denite.nvim         
	packadd deol.nvim           
	packadd emmet-vim           
	packadd i3config.vim        
	packadd jedi-vim            
	packadd neoinclude.vim      
	packadd nerdtree            
	packadd vim-colorschemes         
	packadd svg.vim             
	packadd tabular             
	packadd tagbar              
	packadd undotree            
	packadd unite.vim           
	packadd vim-airline         
	packadd vim-airline-themes  
	packadd vim-clap            
	packadd vim-colorschemes    
	packadd vim-commentary      
	packadd vim-fugitive        
	packadd vim-gitgutter       
	packadd vim-markdown        
	packadd vim-multiple-cursors
	packadd vim-polyglot        
	packadd vim-signature       
	packadd vim-snippets        
	packadd vim-startify        
	packadd vim-surround        
	packadd vim-taskwarrior     
	packadd vimwiki             

    " Handle plugin incompatibilities.
    if has('nvim')
        packadd UltiSnips           
    endif

    " Legacy plugin list (keeping in case theyre needed)
    " packadd vim-hug-neovim-rpc  
	" packadd neosnippet-snippets
    " packadd supertab            
	" packadd neosnippet.vim
    " packadd nvim-yarp           


    call AfterPackLoad()
endf
