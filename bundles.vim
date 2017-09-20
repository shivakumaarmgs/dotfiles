" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Plugins by Shougo
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/vimfiler.vim'
"NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'Shougo/neomru.vim'

" ColorSchemes
NeoBundle 'dandorman/vim-colors'
NeoBundle 'sjl/badwolf'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'Yggdroot/indentLine'

" Plugin for status bar
NeoBundle 'bling/vim-airline'
"NeoBundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"NeoBundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" Gist Vim
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/webapi-vim'

" Plugin for Snippets & Syntax
NeoBundle 'honza/vim-snippets'
"NeoBundle 'Valloric/MatchTagAlways'
NeoBundle 'tmhedberg/matchit'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'robbles/logstash'

" Plugins by TimPope
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-repeat' 
NeoBundle 'tpope/vim-endwise.git' 
NeoBundle 'tpope/vim-surround.git'
NeoBundle 'tpope/vim-rake.git'
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'tpope/vim-dispatch'

NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'ngmy/vim-rubocop'
"NeoBundle 'sentientmonkey/vim-flog'
"NeoBundle 'rainerborene/vim-reek'

" NERDTree and NERDTreeTabs
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
"NeoBundle 'jistr/vim-nerdtree-tabs'

" Ctrl+P
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'terryma/vim-multiple-cursors'


NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'slim-template/vim-slim'

call neobundle#end()
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

