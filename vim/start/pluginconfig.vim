function s:pluginconf()
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
	let g:vimwiki_dir_link=index  " Default .wiki file for new directories
	let g:vimwiki_listsyms = '✗○◐●✓'
	let g:vimwiki_ext2syntax = {'.md': 'markdown',
				\ '.mkd': 'markdown',
				\ '.wiki': 'media'}

	echohl Question | echomsg '[Pre] Configured installed plugins' | echohl None
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
endf

function! s:load_packs()
	packload ale                 
	packload c.vim               
	packload Colorizer           
	packload denite.nvim         
	packload deol.nvim           
	packload emmet-vim           
	packload i3config.vim        
	packload jedi-vim            
	packload neoinclude.vim      
	packload neosnippet-snippets 
	packload neosnippet.vim      
	packload nerdtree            
	packload nvim-yarp           
	packload onedark.vim         
	packload supertab            
	packload svg.vim             
	packload tabular             
	packload tagbar              
	packload UltiSnips           
	packload undotree            
	packload unite.vim           
	packload vim-airline         
	packload vim-airline-themes  
	packload vim-clap            
	packload vim-colorschemes    
	packload vim-commentary      
	packload vim-fugitive        
	packload vim-gitgutter       
	packload vim-hug-neovim-rpc  
	packload vim-markdown        
	packload vim-multiple-cursors
	packload vim-polyglot        
	packload vim-signature       
	packload vim-snippets        
	packload vim-startify        
	packload vim-surround        
	packload vim-taskwarrior     
	packload vimwiki             
endf
