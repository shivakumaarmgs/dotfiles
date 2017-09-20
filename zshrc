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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"

unsetopt nomatch

export TERM='xterm-256color'

alias vi=vim
alias vc='vim ~/.vimrc'
alias vb='vim ~/dotfiles/bundles.vim'
alias vk='vim ~/dotfiles/keybindings.vim'
alias zc='vim ~/.zshrc'
alias zr='source ~/.zshrc'
alias tc='vim ~/.tmux.conf'
alias muxi='cd ~/.tmuxinator/' 
alias :q='exit'
alias :Q='exit'
alias tmux='TERM=xterm-256color tmux -u'
alias mux='tmuxinator'

export EDITOR=vim
export VISUAL=vim

export NVM_DIR="/home/prompt/.nvm"

source sys_alias_and_env
