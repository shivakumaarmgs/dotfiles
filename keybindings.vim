let mapleader = ' ' "something one wont use

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

" ctrlp
nnoremap <leader><C-p> :tabe<cr>:CtrlP<cr>

" Keybindings to migrate within Rails Project
nnoremap <leader>rm :Rmodel<space> 
nnoremap <leader>rc :Rcontroller<space>
nnoremap <leader>rs :Rstylesheet<space>
nnoremap <leader>rj :Rjavascript<space>
nnoremap <Leader>rt :Rspec<space>

" Keybindings to run test
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>n :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Buffer Navigation
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bn :bnext<cr>

" Flog Keys
nnoremap <leader>fc :!flog % -d<cr>
nnoremap <leader>rc :!rubocop --format fuubar %<cr>

" Vim Dispatch Keymaps
nnoremap <leader>bi :Dispatch bundle install<CR>

