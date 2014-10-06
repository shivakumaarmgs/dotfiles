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

# node path
export PATH=$PATH:/opt/node/bin

# Custom Aliases
alias tmux='tmux -2 -u'
alias mux='tmux -2 -u'

alias v='vim'
alias vi='vim'

alias zc='vim ~/.zshrc'
alias zpc='vim ~/.zpreztorc'

alias rpca='cd ~/Rails/PCA'

alias :Q='exit'
alias :q='exit'
