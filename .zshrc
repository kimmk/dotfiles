export ZSH=${HOME}/.oh-my-zsh

ZSH_THEME="kardan"

DISABLE_AUTO_UPDATE="true"

plugins=(git zsh-syntax-highlighting history-substring-search ssh-agent)

source $ZSH/oh-my-zsh.sh

HISTIGNORE='reboot'
unsetopt share_history
export EDITOR=nvim
export SUDO_EDITOR="nvim"

# Paths
export PATH=${PATH}:${HOME}/.local/bin:${HOME}/.cargo/bin

# Aliases
alias i3sw=i3-swallow
alias git-dotfiles="git --git-dir=${HOME}/.dotfiles --work-tree=${HOME}"
alias git-branch-latest="unbuffer git for-each-ref --sort=-committerdate refs/heads --format='%(authordate:short) %(color:red)%(objectname:short) %(color:yellow)%(refname:short)%(color:reset) (%(color:green)%(committerdate:relative)%(color:reset))' | less -R"

# Enable vi-mode
#bindkey -v

bindkey '^R' history-incremental-search-backward
