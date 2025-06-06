export ZSH=${HOME}/.oh-my-zsh

export PS1="> "
export RPS1="%F{blue}\$(git rev-parse --short HEAD 2>/dev/null)%f %F{11}\$(git branch --show-current 2>/dev/null)%f %F{2}%~%f %n@%m"

DISABLE_AUTO_UPDATE="true"

plugins=(git zsh-syntax-highlighting history-substring-search ssh-agent)

source $ZSH/oh-my-zsh.sh

HISTIGNORE='reboot'
unsetopt share_history
export EDITOR=$(which nvim)
export SUDO_EDITOR=$(which nvim)

# Paths
export PATH=${PATH}:${HOME}/.local/bin:${HOME}/.cargo/bin

# Aliases
alias i3sw=i3-swallow
alias git-dotfiles="git --git-dir=${HOME}/.dotfiles --work-tree=${HOME}"
alias git-branch-latest="unbuffer git for-each-ref --sort=-committerdate refs/heads --format='%(authordate:short) %(color:red)%(objectname:short) %(color:yellow)%(refname:short)%(color:reset) (%(color:green)%(committerdate:relative)%(color:reset))' | less -R"

# Enable vi-mode
#bindkey -v

bindkey '^R' history-incremental-search-backward
