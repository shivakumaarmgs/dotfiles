#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

unsetopt nomatch

#export TERM='xterm-256color'

alias vim="nvim"
alias vi="nvim"
alias old_vim="vim"
alias old_vi="vi"
alias vc='vim ~/.vimrc'
alias vb='vim ~/dotfiles/bundles.vim'
alias vk='vim ~/dotfiles/keybindings.vim'
alias nvc='cd ~/.config/nvim && vi'
alias zc='vim ~/.zshrc'
alias zr='source ~/.zshrc'
alias zpc='vim ~/.zpreztorc'
alias tc='vim ~/.tmux.conf'
alias muxi='cd ~/.tmuxinator/'
alias :q='exit'
alias :Q='exit'
#alias tmux='TERM=xterm-256color tmux -u'
alias mux='tmuxinator'
alias sae='vi ~/dotfiles/sys_alias_and_env'

alias rspec-diff='bundle exec rspec $(git idff --name-only|grep "_spec.rb")'

export EDITOR=nvim
export VISUAL=nvim

source ~/dotfiles/sys_alias_and_env

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export CONFIGURE_ARGS=""
for ext in openssl readline libyaml zlib; do
  CONFIGURE_ARGS="${CONFIGURE_ARGS} --with-$ext-dir=$(brew --prefix $ext)"
done

# export BAT_THEME="gruvbox-dark"
export BAT_THEME="Catppuccin Mocha"

. "$HOME/.asdf/asdf.sh"

alias snowsql=/Applications/SnowSQL.app/Contents/MacOS/snowsql
export PATH=$(go env GOPATH)/bin:$PATH

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
