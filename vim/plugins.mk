all:
	mkdir -p plugins/
	cd plugins/opt && git clone https://github.com/dense-analysis/ale.git
	cd plugins/opt && git clone https://github.com/vim-scripts/c.vim.git
	cd plugins/opt && git clone https://github.com/Shougo/denite.nvim.git
	cd plugins/opt && git clone https://github.com/Shougo/deol.nvim.git
	cd plugins/opt && git clone https://github.com/mattn/emmet-vim
	cd plugins/opt && git clone https://github.com/mboughaba/i3config.vim.git
	cd plugins/opt && git clone https://github.com/davidhalter/jedi-vim.git
	cd plugins/opt && git clone https://github.com/davidhalter/parso.git
	cd plugins/opt && git clone https://github.com/scrooloose/nerdtree.git
	cd plugins/opt && git clone https://github.com/roxma/nvim-yarp.git
	cd plugins/opt && git clone https://github.com/ervandew/supertab.git
	cd plugins/opt && git clone https://github.com/vim-scripts/svg.vim.git
	cd plugins/opt && git clone https://github.com/godlygeek/tabular.git
	cd plugins/opt && git clone https://github.com/majutsushi/tagbar.git
	cd plugins/opt && git clone https://github.com/SirVer/UltiSnips.git
	cd plugins/opt && git clone https://github.com/mbbill/undotree.git
	cd plugins/opt && git clone https://github.com/Shougo/unite.vim.git
	cd plugins/opt && git clone https://github.com/vim-airline/vim-airline.git
	cd plugins/opt && git clone https://github.com/vim-airline/vim-airline-themes.git
	cd plugins/opt && git clone https://github.com/liuchengxu/vim-clap.git
	cd plugins/opt && git clone https://github.com/flazz/vim-colorschemes
	cd plugins/opt && git clone https://github.com/tpope/vim-commentary.git
	cd plugins/opt && git clone https://github.com/tpope/vim-fugitive.git
	cd plugins/opt && git clone https://github.com/airblade/vim-gitgutter.git
	cd plugins/opt && git clone https://github.com/roxma/vim-hug-neovim-rpc.git
	cd plugins/opt && git clone https://github.com/plasticboy/vim-markdown.git
	cd plugins/opt && git clone https://github.com/terryma/vim-multiple-cursors.git
	cd plugins/opt && git clone https://github.com/sheerun/vim-polyglot.git
	cd plugins/opt && git clone https://github.com/kshenoy/vim-signature.git
	cd plugins/opt && git clone https://github.com/honza/vim-snippets.git
	cd plugins/opt && git clone https://github.com/mhinz/vim-startify.git
	cd plugins/opt && git clone https://github.com/tpope/vim-surround.git
	cd plugins/opt && git clone https://github.com/blindFS/vim-taskwarrior.git
	cd plugins/opt && git clone https://github.com/vimwiki/vimwiki.git
	cd plugins/opt && git clone https://github.com/neoclide/coc.nvim
	cd plugins/opt && git clone https://github.com/aserebryakov/vim-todo-lists.git
	rm -v vim-colorschemes/colors/onedark.vim
	mv opt/coc.nvim start/
	cd start/coc.nvim && sh install.sh 

dist:
	mkdir -p plugins/opt
	mkdir -p plugins/start
	cd plugins/opt && git clone https://github.com/dense-analysis/ale.git
	cd plugins/opt && git clone https://github.com/mattn/emmet-vim
	cd plugins/opt && git clone https://github.com/scrooloose/nerdtree.git
	cd plugins/opt && git clone https://github.com/godlygeek/tabular.git
	cd plugins/opt && git clone https://github.com/majutsushi/tagbar.git
	cd plugins/opt && git clone https://github.com/SirVer/UltiSnips.git
	cd plugins/opt && git clone https://github.com/mbbill/undotree.git
	cd plugins/opt && git clone https://github.com/vim-airline/vim-airline.git
	cd plugins/opt && git clone https://github.com/vim-airline/vim-airline-themes.git
	cd plugins/opt && git clone https://github.com/liuchengxu/vim-clap.git
	cd plugins/opt && git clone https://github.com/flazz/vim-colorschemes
	cd plugins/opt && git clone https://github.com/tpope/vim-commentary.git
	cd plugins/opt && git clone https://github.com/tpope/vim-fugitive.git
	cd plugins/opt && git clone https://github.com/airblade/vim-gitgutter.git
	cd plugins/opt && git clone https://github.com/plasticboy/vim-markdown.git
	cd plugins/opt && git clone https://github.com/terryma/vim-multiple-cursors.git
	cd plugins/opt && git clone https://github.com/sheerun/vim-polyglot.git
	cd plugins/opt && git clone https://github.com/honza/vim-snippets.git
	cd plugins/opt && git clone https://github.com/neoclide/coc.nvim
	cd plugins/opt && git clone https://github.com/aserebryakov/vim-todo-lists.git
	rm -v vim-colorschemes/colors/onedark.vim
	mv opt/coc.nvim start/
	cd start/coc.nvim && sh install.sh 
