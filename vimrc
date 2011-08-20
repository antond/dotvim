source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim		"use pathogen as a submodule
call pathogen#infect()						"invoke pathogen
call pathogen#helptags()					"generate docs automatically
call pathogen#runtime_append_all_bundles()			"load all the bundles
filetype off							"prevent pathogen from failing to load
syntax on							"enable syntax highlighting
filetype plugin indent on					"turn on ftplugins and indents

"set NERDTree mappings
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :call FindInNERDTree()<CR>
