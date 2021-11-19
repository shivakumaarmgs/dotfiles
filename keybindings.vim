let mapleader = ' ' "something one wont use

nnoremap <leader>vr :source ~/.vimrc<cr>

nnoremap <leader>2t :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<cr>
nnoremap <leader>8t :set noexpandtab tabstop=8 shiftwidth=8 softtabstop=0<cr>

" Format json in vim
nnoremap <leader>fj :%! python -m json.tool<cr>

" Vim Shell Keybindings
nnoremap <leader>sh :VimShellPop<CR>
nnoremap <leader>csh :VimShellClose<CR>

" Quick open file aliases
nnoremap <leader>ovc :tabe ~/.vimrc<cr> 
nnoremap <Leader>ozc :tabe ~/.zshrc<cr>
nnoremap <leader>okb :tabe ~/dotfiles/keybindings.vim<cr>

nnoremap <leader>osdfc :tabe ~/bin_shivakumaar/configs/sdf_config.yml<cr>
nnoremap <leader>orgw :tabe ~/bin_shivakumaar/sdf_god/god_commands/production/<cr>
nnoremap <leader>orqf :tabe ~/bin_shivakumaar/CI_IGNORE/common_code/config/queue_names_env_variables.yml<cr>
nnoremap <leader>orev :tabe ~/bin_shivakumaar/CI_IGNORE/common_code/config/environment_variables.yml<cr>

" Navigating through tabs Keybindings
nnoremap <leader>. :tabnext<CR>
nnoremap <leader>, :tabprevious<CR>

" Copy Paste Delete
map <C-a> ggVG
vmap <C-c> "+y
vmap <C-x> dd

" comment banner
" from https://stackoverflow.com/questions/5085892/textmate-comment-banner-in-vim
autocmd FileType javascript,php,c,cpp,css map <leader>ccb I/*     <ESC>A     */<ESC>yyp0llv$r-$hc$*/<ESC>yykPjj
autocmd FileType python,perl,ruby,sh,zsh,conf,yaml  map <leader>ccb I#     <ESC>A     #<ESC>yyp0lv$hhr-yykPjj

" Unite Settings
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " Overwrite settings.
  imap <silent><buffer><expr> <C-t>     unite#do_action('tabopen')
endfunction

" Ctrl-p behaviour {{{
nnoremap <Leader><Leader> :Unite -start-insert file_rec/async<CR>

let g:unite_source_grep_command = 'ag'
let g:unite_prompt = '▶▶ '
let g:unite_winheight = 15
let g:unite_update_time = 200
let g:unite_split_rule = 'botright'
let g:unite_data_directory = $HOME.'/.vim/tmp/unite'

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings() "{{{
  " Overwrite settings.
  nmap <buffer> <ESC> <Plug>(unite_exit)
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  imap <silent><buffer><expr> <C-s> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')
endfunction "}}}
" End: Unite.ctrl-p }}}

if executable('ag')
  " Use ag (the silver searcher)
  " https://github.com/ggreer/the_silver_searcher
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts =
        \ '-i --vimgrep --hidden --ignore ' .
        \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
  let g:unite_source_grep_recursive_opt = ''
endif

" search in the whole folder
nnoremap <leader>/ :Unite grep:.<cr>

" Unite and CtrlP Keybindings
nnoremap <C-u> :Unite file_rec/async<cr>
nnoremap <leader><C-u> :tabe<cr>:Unite file_rec/async<cr>
nnoremap <leader><C-p> :tabe<cr>:CtrlP<cr>

" nerd tree
map <leader>f :NERDTreeToggle<CR>

" Keybindings to migrate within Rails Project
nnoremap <leader>rm :Tmodel<space> 
nnoremap <leader>rc :Tcontroller<space>
nnoremap <leader>rs :Tstylesheet<space>
nnoremap <leader>rj :Tjavascript<space>
nnoremap <Leader>rt :Tspec<space>

" Keybindings to run test
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>n :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Buffer Navigation
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bn :bnext<cr>

" Neo Complete Keybindings
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y> neocomplete#close_popup()
"inoremap <expr><C-e> neocomplete#cancel_popup()
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#manual_complete()
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction"}}}


" Neo Snippets Keybindings
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><C-n> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: pumvisible() ? "\<TAB>" : "\<C-n>"
smap <expr><C-n> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: "\<C-n>"


" Fugitive Key maps
"nnoremap <leader>gst :Gstatus<cr>
"nnoremap <leader>gc :Gcommit<cr>
"nnoremap <leader>ga :Gwrite<cr>
"nnoremap <leader>go :Gread<cr>

" Flog Keys
nnoremap <leader>fc :!flog % -d<cr>
nnoremap <leader>rc :!rubocop --format fuubar %<cr>
nnoremap <leader>rk :RunReek

" Vim Dispatch Keymaps
nnoremap <leader>bi :Dispatch bundle install<CR>

" Pane Keymaps
map <leader>vs :vs<cr>:CtrlP<cr>
map <leader>hs :sp<cr>:CtrlP<cr>
map <C-l> :wincmd l<cr>
map <C-h> :wincmd h<cr>
map <C-k> :wincmd k<cr>
map <C-j> :wincmd j<cr>
