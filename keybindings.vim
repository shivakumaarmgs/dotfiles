let mapleader = '`' "something one wont use

" Vim Shell Keybindings
nnoremap <leader>sh :VimShellPop<CR>

" Quick open file aliases
nnoremap <leader>ovc :tabe ~/.vimrc<cr> 
nnoremap <Leader>ozc :tabe ~/.zshrc<cr>
nnoremap <leader>okb :tabe ~/dotfiles/keybindings.vim<cr>

" Navigating through tabs Keybindings
nnoremap <leader>. :tabnext<CR>
nnoremap <leader>, :tabprevious<CR>

" Copy Paste Delete
vmap <C-c> "+y
vmap <C-a> ggVG
vmap <C-x> dd
inoremap <C-a> <Esc>ggVG

" Unite Settings
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " Overwrite settings.
  imap <silent><buffer><expr> <C-t>     unite#do_action('tabopen')
endfunction
nnoremap <space>/ :Unite grep:.<cr>

" Unite and CtrlP Keybindings
nnoremap <C-u> :tabe<cr>:Unite file_rec/async<cr>
nnoremap <leader><C-p> :tabe<cr>:CtrlP<cr>

" Keybindings to migrate within Rails Project
nnoremap <leader>rm :Rmodel<space> 
nnoremap <leader>rc :Rcontroller<space>
nnoremap <leader>rs :Rstylesheet<space>
nnoremap <leader>rj :Rjavascript<space>

" Buffer Navigation
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bn :bnext<cr>

" Neo Complete Keybindings
inoremap <expr><C-y> neocomplete#close_popup()
inoremap <expr><C-e> neocomplete#cancel_popup()
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Neo Snippets Keybindings
imap <c-k> <plug>(neosnippet_expand_or_jump)
smap <c-k> <plug>(neosnippet_expand_or_jump)
xmap <c-k> <plug>(neosnippet_expand_target)
xmap <c-l> <plug>(neosnippet_start_unite_snippet_target)

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

" Vim Dispatch Keymaps

