" BUILD_TARGET: ~/.vim/pack/config/start/


echohl Question ;| echomsg '[Pre] Plugin configuration set, ready to packadd.' | echohl None
f;unc! AfterPackLoad()

	call airline#extensions#whitespace#disable()
endf

func! BeforePackLoad()
	" Concealed text is specially formatted text to be 'expanded' into diferernt
	" text within your buffer.  For example, if you make something bold in
	" markdown, you surround it like **this**.  The concealer then changes the
	" text and any new highlighting applied to it and shows that instead.  So the
	" markdown conceler would hide the asterisks.  Thats about as much as I know
	" about text concealing, 

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
	if has('conceal')
		" Show concealed symbols ininsert mode, otherwise it becomes difficult to
		" edit files because you have no clue where your cursor is.
		set conceallevel=2 concealcursor=nv
	endif
	let g:vimwiki_ext2syntax={}
endf

func! LoadAllPlugins()
	call BeforePackLoad()

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

	" Legacy plugin list (keeping in case theyre needed)
	" packadd vim-hug-neovim-rpc  
	packadd neosnippet-snippets
	packadd supertab            
	" packadd neosnippet.vim
	" packadd nvim-yarp           
	packadd deoplete.nvim
	" call deoplete#enable()

	call AfterPackLoad()
endf
