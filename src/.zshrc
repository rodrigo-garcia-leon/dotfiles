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

#
# Aliases
#

alias c='bat'
alias cp='cp'
alias code='code-insiders'
alias f='fasd -f'
alias l='exa --long --all --git --group'
alias ls='exa'
alias g='hub'
alias git='hub'
alias rm='rm'
alias upd='rustup update && aur sync -u && sudo pacman -Syu && flatpak update'

#
# Sources
#

source $HOME/.secrets
source $HOME/.vi-mode-cursor
source "/usr/share/fzf/key-bindings.zsh"
