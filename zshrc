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

# Customize to your needs...
#. ~/powerline/powerline/bindings/zsh/powerline.zsh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 


[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"

export PATH="$PATH:$HOME/packer"

# Path setting for psql
#PATH=/usr/local/pgsql/bin:$PATH
#export PATH

# tmuxinatior config
source ~/Downloads/tmuxinator.zsh

# node path
export PATH=$PATH:/opt/node/bin

# Custom Aliases
alias tmux='TERM=xterm-256color tmux -u'
#alias mux='TERM=xterm-256color tmux -u'

alias bi="bundle install"

alias v='vim'
alias vi='vim'

alias muxi='cd ~/.tmuxinator'

alias vc='vim ~/.vimrc'
alias zc='vim ~/.zshrc'
alias zpc='vim ~/.zpreztorc'
alias tc='vim ~/.tmux.conf'

alias :Q='exit'
alias :q='exit'

source ~/dotfiles/alias_and_env
