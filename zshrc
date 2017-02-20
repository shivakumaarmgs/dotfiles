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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"

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

alias dash='cd ~/bin_shivakumaar/CI_IGNORE/pc_dash_board/'
alias app='cd ~/bin_shivakumaar/CI_IGNORE/pc_requirement_gathering/'
alias ccode='cd ~/bin_shivakumaar/CI_IGNORE/common_code/'
alias theme='cd ~/development_dep/inspina\ theme/products-WB0R5L90S/Rails_Full_Version/'

alias godw='vi ~/bin_shivakumaar/sdf_god/god_commands/system_promptcloud_rails_apps_and_related_resque_workers_god_commands.yml'

export EDITOR=vim
export VISUAL=vim

export NVM_DIR="/home/prompt/.nvm"

source ~/.alias
