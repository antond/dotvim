set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Tell Vim to ignore BundleCommand until vundle supports it
com! -nargs=? BundleCommand
Bundle 'gmarik/vundle'

Bundle 'antond/vim-fugitive'
Bundle 'antond/vim-rails'
Bundle 'antond/Command-T'
Bundle 'antond/vim-rooter'
Bundle 'antond/nerdtree'
Bundle 'antond/VIM-Railscasts-Color-Theme'
Bundle 'antond/html5.vim'
Bundle 'antond/scss-syntax.vim'
Bundle 'antond/vim-coffee-script'
Bundle 'antond/vim-ruby'
Bundle 'antond/vim-javascript'
Bundle 'antond/jquery.vim'
Bundle 'antond/sweet-rspec-vim'
Bundle 'antond/vim-cucumber'
Bundle 'antond/vim-slim'
Bundle 'antond/vim-haml'
Bundle 'antond/vim-markdown'
Bundle 'antond/vim-surround'
Bundle 'antond/vim-endwise'
Bundle 'antond/zencoding-vim'
Bundle 'antond/bufexplorer.zip'
Bundle 'antond/snipmate.vim'
Bundle 'antond/vim-rvm'
Bundle 'antond/snipmate-snippets'
Bundle 'antond/tabular'
Bundle 'antond/MatchTag'
Bundle 'antond/jshint.vim'
Bundle 'antond/vim-css3-syntax'
Bundle 'antond/vim-stylus'

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

set t_Co=256							"set num of terminal colors
colorscheme railscasts						"set railscasts color scheme
set gfn=Monaco:h12

"enable jquery.vim
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

"sweet-rspec-vim mappings

map <D-r> :SweetVimRspecRunFile<CR> 				"(CMD-r) or (Apple-r)
map <D-R> :SweetVimRspecRunFocused<CR> 				"(SHIFT-CMD-r)

"tab mappings
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
