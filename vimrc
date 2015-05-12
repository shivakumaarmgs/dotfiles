if has('vim_starting')
  set nocompatible               " Be iMproved
  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

source ~/dotfiles/bundles.vim

" Required:
"filetype plugin on

" From anandraj02/dotfiles 
syntax on
set number
set relativenumber
filetype plugin on
filetype indent on
set noswapfile
set incsearch
set ignorecase
set showmatch
set history=1000
set title
set expandtab
set smarttab
set autoindent
set smartindent
set mouse=a
" set spell
set cursorline
set clipboard=unnamed
set backspace=indent,eol,start " Make backspace behave normally.
set wildmode=list:longest,full
set wildmenu
set tabstop=2 shiftwidth=2 softtabstop=2
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save

" From Vysakh0 dotfiles
" exit vim with :Q. 
cnoreabbrev Wq w
cnoreabbrev W w
cnoreabbrev WQ wq
cnoreabbrev X x
cnoreabbrev Q q

"if $COLORTERM == 'gnome-terminal'
set t_Co=256
"endif

syntax enable
set background=dark
colorscheme badwolf
let g:badwolf_darkgutter = 1

" NERDTree settings
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p  "placing cursor in file window instead for nerdtree
autocmd vimenter * if !argc() | NERDTree | endif
let  g:nerdtree_tabs_smart_startup_focus = 1
let  g:nerdtree_tabs_open_on_console_startup=1

" Airline Settings
set laststatus=2
set encoding=utf-8
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled= 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme= 'badwolf'

"Patched Powerline fonts not seem to be working for me
"I have this which give you clean airline \m/
"let g:airline_left_sep          = '▶'
"let g:airline_left_alt_sep      = '⮁'
"let g:airline_right_sep         = '⮂'
"let g:airline_right_alt_sep     = '⮃'
"let g:airline_symbols.linenr = '¶'
"let g:airline_branch_prefix     = '⭠'
""let g:airline_branch_prefix   = "☁"
"let g:airline_readonly_symbol   = '⭤'
"let g:airline_linecolumn_prefix = '⭡'
"let g:airline_symbols.whitespace = 'Ξ'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
"let g:airline_branch_prefix   = "☁"
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☁'

" DelimitMate ERB settings
let delimitMate_matchpairs = '(:),[:],{:},<:>'
let delimitMate_quotes = "\" ' ` | %"

" Gist Vim settings
let g:gist_show_privates = 1
let g:gist_post_private = 1
let g:gist_detect_filetype = 1

 "Rabl as ruby
au BufRead,BufNewFile *.rabl setf ruby
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
au BufRead,BufNewFile *.html.erb set ft=eruby.html

source ~/dotfiles/keybindings.vim
