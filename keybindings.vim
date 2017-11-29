let mapleader = ' ' "something one wont use

" Format json in vim
nnoremap <leader>fj :%! python -m json.tool<cr>

" Vim Shell Keybindings
nnoremap <leader>sh :VimShellPop<CR>
nnoremap <leader>csh :VimShellClose<CR>

" Quick open file aliases
nnoremap <leader>ovc :tabe ~/.vimrc<cr> 
nnoremap <Leader>ozc :tabe ~/.zshrc<cr>
nnoremap <leader>okb :tabe ~/dotfiles/keybindings.vim<cr>

" Navigating through tabs Keybindings
nnoremap <leader>. :tabnext<CR>
nnoremap <leader>, :tabprevious<CR>

" Copy Paste Delete
map <C-a> ggVG
vmap <C-c> "+y
vmap <C-x> dd

" Unite Settings
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " Overwrite settings.
  imap <silent><buffer><expr> <C-t>     unite#do_action('tabopen')
endfunction

" nerd tree
map <leader>f :NERDTreeToggle<CR>

" search in the whole folder
nnoremap <leader>/ :Unite grep:.<cr>

" Unite and CtrlP Keybindings
nnoremap <C-u> :tabe<cr>:Unite file_rec/async<cr>
nnoremap <leader><C-p> :tabe<cr>:CtrlP<cr>

" Ctrl-p behaviour {{{
nnoremap <Leader><Leader> :Unite -start-insert file_rec/async<CR>

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_reverse'])
call unite#custom#source('file_mru,file_rec,file_rec/async,grep,locate',
  \ 'ignore_pattern', join(['\.git/', 'tmp/', 'bundle/'], '\|'))

let g:unite_prompt = '>>> '
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
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplete#close_popup()
inoremap <expr><C-e> neocomplete#cancel_popup()
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


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
nnoremap <leader>gst :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>ga :Gwrite<cr>
nnoremap <leader>go :Gread<cr>

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
