"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/shivakumaar/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/shivakumaar/.cache/dein')
  call dein#begin('/home/shivakumaar/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/shivakumaar/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  call dein#add('Shougo/deoplete.nvim')
  "call dein#add('Shougo/deoppet.nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
  call dein#add('Shougo/vimfiler.vim')
  call dein#add('Shougo/vimshell.vim')
  call dein#add('Shougo/unite.vim')
  call dein#add('mileszs/ack.vim')
  call dein#add('Shougo/unite-outline')
  call dein#add('Shougo/neomru.vim')

  " ColorSchemes
  "call dein#add('dandorman/vim-colors')
  "call dein#add('lifepillar/vim-solarized8')
  " call dein#add('sjl/badwolf')
  call dein#add('flazz/vim-colorschemes') 
  call dein#add('Yggdroot/indentLine')

  " Plugin for status bar
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  " Gist Vim
  call dein#add('mattn/gist-vim')
  call dein#add('mattn/webapi-vim')

  " Plugin for Snippets & Syntax
  call dein#add('honza/vim-snippets')
  call dein#add('tmhedberg/matchit')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('Raimondi/delimitMate')
  call dein#add('elixir-lang/vim-elixir')
  call dein#add('mxw/vim-jsx')
  call dein#add('robbles/logstash')

  " Plugins by TimPope
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-endwise.git')
  call dein#add('tpope/vim-surround.git')
  call dein#add('tpope/vim-rake.git')
  call dein#add('tpope/vim-rails.git')
  call dein#add('tpope/vim-dispatch')
  call dein#add('tpope/vim-sleuth')

  call dein#add('godlygeek/tabular')
  call dein#add('thoughtbot/vim-rspec')
  call dein#add('ngmy/vim-rubocop')
  "call dein#add('sentientmonkey/vim-flog')
  "call dein#add('rainerborene/vim-reek')
  call dein#add('ekalinin/Dockerfile.vim')
  call dein#add('sheerun/vim-polyglot')

  " NERDTree and NERDTreeTabs
  call dein#add('preservim/nerdtree')
  call dein#add('preservim/nerdcommenter')
  "call dein#add('jistr/vim-nerdtree-tabs')

  " Ctrl+P
  call dein#add('kien/ctrlp.vim')
  call dein#add('terryma/vim-multiple-cursors')


  call dein#add('kchmck/vim-coffee-script')
  call dein#add('slim-template/vim-slim')


  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
