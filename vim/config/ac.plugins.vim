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
let g:neosnippet#snippets_directory='/var/snippets/'

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets' behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
" imap <expr><TAB>
" 			\ pumvisible() ? "\<C-k>" :
" 			\ neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" 
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
	set conceallevel=2 concealcursor=nv
endif

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
	packadd neosnippet-snippets 
	packadd neosnippet.vim      
	packadd nerdtree            
	packadd nvim-yarp           
	         
	packadd supertab            
	packadd svg.vim             
	packadd tabular             
	packadd tagbar              
	packadd UltiSnips           
	packadd undotree            
	packadd unite.vim           
	packadd vim-airline         
	packadd vim-airline-themes  
	packadd vim-clap            
	packadd vim-colorschemes    
	packadd vim-commentary      
	packadd vim-fugitive        
	packadd vim-gitgutter       
	packadd vim-hug-neovim-rpc  
	packadd vim-markdown        
	packadd vim-multiple-cursors
	packadd vim-polyglot        
	packadd vim-signature       
	packadd vim-snippets        
	packadd vim-startify        
	packadd vim-surround        
	packadd vim-taskwarrior     
	packadd vimwiki             
endf
