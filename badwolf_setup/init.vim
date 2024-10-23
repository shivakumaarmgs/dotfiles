"automated installation of vimplug if not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin()

" -----------------------------------------------------------------------------
" Quick Jumps
" -----------------------------------------------------------------------------
" Lightning fast left-right movement in Vim
Plug 'unblevable/quick-scope'

" Better motion
Plug 'justinmk/vim-sneak'
let g:sneak#label = 1

Plug 'bkad/CamelCaseMotion'
Plug 'junegunn/vim-easy-align'

" File finder - CtrlP
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-yano/fzf-preview.vim'
Plug 'zackhsi/fzf-tags'

Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" AutoComplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [ 'coc-solargraph', 'coc-json', 'coc-snippets', 'coc-pyright', 'coc-yaml', 'coc-html', 'coc-css', 'coc-git', 'coc-tsserver', 'coc-go', 'coc-lists', 'coc-docker' ]

Plug 'honza/vim-snippets'

" Search(and Replace) related
Plug 'haya14busa/is.vim'
Plug 'haya14busa/vim-asterisk'
let g:asterisk#keeppos = 1

Plug 'mhinz/vim-grepper'

" FileExplorer
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'

" Rails related
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-bundler'

" Code acitons and Git
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'Raimondi/delimitMate'

Plug 'hashivim/vim-terraform'
Plug 'leafgarland/typescript-vim'

Plug 'dense-analysis/ale'

" Appearance
Plug 'sjl/badwolf'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mhinz/vim-startify'
Plug 'Konfekt/FastFold'

Plug 'folke/tokyonight.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'

Plug 'morhetz/gruvbox'

Plug 'srcery-colors/srcery-vim'

call plug#end()

runtime! macros/matchit.vim

syntax enable
syntax on
set clipboard+=unnamedplus
set noswapfile

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save
set foldmethod=indent
set foldignore=
set nofoldenable
set completeopt=longest,menuone
set number
" set relativenumber
set cmdheight=2

" making vim fast
set re=1
set ttyfast
set lazyredraw

" Tabs and Indents
" set textwidth=80  " Text width maximum chars before wrapping
set expandtab     " Don't expand tabs to spaces.
set tabstop=2     " The number of spaces a tab is
set softtabstop=2 " While performing editing operations
set shiftwidth=2  " Number of spaces to use in auto(indent)
set smarttab      " Tab insert blanks according to 'shiftwidth'
set autoindent    " Use same indenting on new lines
set smartindent   " Smart autoindenting on new lines
set shiftround    " Round indent to multiple of 'shiftwidth'
set cursorline    " Hilight cursor line
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2

set history=1000
set title
set hidden
set hlsearch " highlight all its matches
set ignorecase " Ignore case in search patterns
set showmatch
set incsearch " highlight while searching
set shortmess+=c
set mouse="a" " enable mouse in all mode"

"https://robots.thoughtbot.com/wrap-existing-text-at-80-characters-in-vim
highlight ColorColumn ctermbg=gray
set colorcolumn=80
au BufRead,BufNewFile *.md setlocal textwidth=80

" ----------------------------------------------------------------
" Leader
" ----------------------------------------------------------------

let mapleader=' '

" ----------------------------------------------------------------
" custom mappings
" ----------------------------------------------------------------

nnoremap <leader>] :tabnext<CR>
nnoremap <leader>[ :tabprevious<CR>
nnoremap <C-n> :tabe<CR>

nnoremap <leader>. :bn<CR>
nnoremap <leader>, :bp<CR>
nnoremap <leader>bp :b#<CR>
nnoremap <C-t> :e<CR>

" From Vysakh0 dotfiles
" exit vim with :Q.
cnoreabbrev W w
cnoreabbrev X x
cnoreabbrev Q q
cnoreabbrev q bd

" Copy Paste Delete
map <C-a> ggVG
vmap <C-c> "+y
vmap <C-x> dd
" nnoremap <C-v> p

nnoremap <leader>= :vsplit<CR>
nnoremap <leader>- :split<CR>

" ----------------------------------------------------------------
" basic mappings from https://github.com/nickjj/dotfiles
" ----------------------------------------------------------------

" Seamlessly treat visual lines as actual lines when moving around.
noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file.
nnoremap <leader>rc :%s///gc<Left><Left><Left>

" The same as above but instead of acting on the whole file it will be
" restricted to the previously visually selected range. You can do that by
" pressing *, visually selecting the range you want it to apply to and then
" press a key below to replace all instances of it in the current selection.
xnoremap <leader>rc :s///gc<Left><Left><Left>

" Type a replacement term and press . to repeat the replacement again. Useful
" for replacing a few instances of the term (comparable to multiple cursors).
nnoremap <silent> s* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
xnoremap <silent> s* "sy:let @/=@s<CR>cgn

" Clear search highlights.
map <leader>cs :let @/=''<CR>

" format json
nnoremap <leader>fj :.! python3 -m json.tool<cr>
nnoremap <leader>fJ :%! python3 -m json.tool<cr>

let g:python3_host_prog = '/usr/bin/python3'

" Toggle quickfix window.
function! QuickFix_toggle()
  for i in range(1, winnr('$'))
    let bnum = winbufnr(i)
    if getbufvar(bnum, '&buftype') == 'quickfix'
      cclose
      return
    endif
  endfor

  copen
endfunction
nnoremap <silent> <Leader>c :call QuickFix_toggle()<CR>

" Convert the selected text's title case using the external tcc script.
"   Requires: https://github.com/nickjj/title-case-converter
vnoremap <Leader>tc c<C-r>=system('tcc', getreg('"'))[:-2]<CR>

" Navigate the complete menu items like CTRL+n / CTRL+p would.
inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would.
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
" conflict with endwise
" inoremap <expr> <CR> pumvisible() ? "<C-y>" : "<CR>"

" Cancel the complete menu item like CTRL+e would.
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"

" .............................................................................
" junegunn/fzf.vim
" .............................................................................

" File finder - CtrlP
nnoremap <C-p> :Files<Cr>
let g:fzf_layout = { 'down': '40%' }

" .............................................................................
" mhinz/vim-grepper
" .............................................................................

command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0) 

let g:grepper={}
let g:grepper.tools=["rg"]

xmap gr <plug>(GrepperOperator)
" Search for text in all files
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>g :Rg<cr>
" Search for text under the cursor in all files
nnoremap <leader>* :Grepper -tool rg -cword<cr>

" After searching for text, press this mapping to do a project wide find and
" replace. It's similar to <leader>r except this one applies to all matches
" across all files instead of just the current file.
nnoremap <Leader>R
      \ :let @s='\<'.expand('<cword>').'\>'<CR>
      \ :Grepper -cword -noprompt<CR>
      \ :cfdo %s/<C-r>s//g \| update
      \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" The same as above except it works with a visual selection.
xmap <Leader>R
      \ "sy
      \ gvgr
      \ :cfdo %s/<C-r>s//g \| update
      \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" .............................................................................
" lambdalisue/fern.vim
" .............................................................................

" Disable netrw.
let g:loaded_netrw  = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

augroup my-fern-hijack
  autocmd!
  autocmd BufEnter * ++nested call s:hijack_directory()
augroup END

function! s:hijack_directory() abort
  let path = expand('%:p')
  if !isdirectory(path)
    return
  endif
  bwipeout %
  execute printf('Fern %s', fnameescape(path))
endfunction

" Custom settings and mappings.
" let g:fern#disable_default_mappings = 1
let g:fern#default_hidden = 1
let g:fern#renderer = "nerdfont"

noremap <silent> <Leader>f :Fern . -drawer -reveal=% -toggle -width=35<CR>

function! FernInit() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:select)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )
  nmap <buffer> d <Plug>(fern-action-remove)
  nmap <buffer> <CR> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> <2-LeftMouse> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer><nowait> < <Plug>(fern-action-leave)
  nmap <buffer><nowait> > <Plug>(fern-action-enter)
endfunction

" Fern file explorer with icons
augroup FernGroup
  autocmd!
  autocmd FileType fern call FernInit()
augroup END

" Fern file explorer with icon colored
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

" .............................................................................
" neoclide/coc.nvim
" .............................................................................
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

" from https://stackoverflow.com/a/63391962
" You have to remap <cr> to make it confirms completion.
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

"Use <Tab> and <S-Tab> to navigate the completion list:

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<S-tab>'

" https://github.com/tpope/vim-endwise/issues/22#issuecomment-554685904
let g:endwise_no_mappings = v:true

" .............................................................................
" Raimondi/delimitMate
" .............................................................................
let delimitMate_matchpairs = '(:),[:],{:},<:>'
let delimitMate_quotes = "\" ' ` | %"

" .............................................................................
" Themes
" .............................................................................

" clear background color in vim
set t_ut=
" set term=screen-256color
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

set background=dark

colorscheme badwolf
let g:badwolf_darkgutter = 0

" colorscheme tokyonight-night

" set background=dark
" colorscheme gruvbox

" colorscheme srcery

" .............................................................................
" vim-airline/vim-airline
" .............................................................................
" let g:airline_theme= 'badwolf'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#coc#enabled = 1
" let g:airline#extensions#fern#enabled = 1

" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" " let g:airline_symbols.colnr = ' :'
" let g:airline_symbols.colnr = ''
" let g:airline_symbols.readonly = ''
" " let g:airline_symbols.linenr = ':'
" let g:airline_symbols.linenr = '|'
" " let g:airline_symbols.maxlinenr = '☰ '
" let g:airline_symbols.maxlinenr = '|'
" let g:airline_symbols.dirty='⚡'

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX) && getenv('TERM_PROGRAM') != 'Apple_Terminal')
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:fzf_tags_command='ctags -R -o tags --exclude=../*'

set tags=~/.cache/tags

" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

let g:ale_linters = {'python': ['pyright']}

source ~/dotfiles/lualine/lualine.lua
