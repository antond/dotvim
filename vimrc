set nocompatible

source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim		"use pathogen as a submodule
call pathogen#infect()						"invoke pathogen
call pathogen#helptags()					"generate docs automatically
call pathogen#runtime_append_all_bundles()			"load all the bundles
filetype off							"prevent pathogen from failing to load
syntax on							"enable syntax highlighting
filetype plugin indent on					"turn on ftplugins and indents
set showcmd							"display incomplete commands
set showmode							"show current mode
set backspace=indent,eol,start    				"intuitive backspace
set hidden                        				"better multibuffer handling
set wildmenu                      				"better command line completion
set wildmode=list:longest         				"shell-style filename completion
set ignorecase                    				"case-insensitive searching
set smartcase                     				"case-sensitive when expression contains a capital letter
set number                        				"show line numbers
set ruler                         				"show curpos
set incsearch                     				"highlight as you type
set hlsearch                      				"highlight matches
set wrap                          				"turn on on line wrap
set scrolloff=3                   				"show 3 lines around the cursor
set title                         				"set the terminal's title
set visualbell                    				"no beeps
set nobackup                      				"don't make a backup before overwriting a file
set nowritebackup                 				"and again don't
set directory=$HOME/.vim/tmp//,.  				"keep swap files in one location; git-ignored

set laststatus=2                  				"always show status-line
"better status info
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

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

"sweet-rspec-vim mappings

set macmeta 							"required for the <M-D-r> mapping bellow
map <D-r> :SweetVimRspecRunFile<CR> 				"(CMD-r) or (Apple-r)
map <D-R> :SweetVimRspecRunFocused<CR> 				"(SHIFT-CMD-r)
map <M-D-r> :SweetVimRspecRunPrevious<CR> 			"(OPT-CMD-r)
