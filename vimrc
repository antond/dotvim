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

"settings while in GUI mode
if has("gui_running")
  set t_Co=256							"set num of terminal colors
  colorscheme railscasts					"set railscasts color scheme
  set lines=46
  set columns=180
  
  "mac-specific GUI settings
  if has("gui_mac") || has("gui_macvim")
    set gfn=Monaco:h12
  endif
endif

set guioptions-=T						"turn off macvim toolbar

"enable jquery.vim
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
