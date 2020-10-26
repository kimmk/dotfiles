export ZSH=/home/kimmo/.oh-my-zsh

ZSH_THEME="kardan"

DISABLE_AUTO_UPDATE="true"

plugins=(git zsh-syntax-highlighting history-substring-search ssh-agent)

source $ZSH/oh-my-zsh.sh

HISTIGNORE='reboot'
unsetopt share_history
export EDITOR=nvim

# Paths
export PATH=$PATH:/home/kimmo/software/gopath/bin
export PATH=$PATH:/home/kimmo/software/xtensa-esp32-elf/bin
export IDF_PATH=/home/kimmo/software/esp-idf
alias esptool=/home/kimmo/software/esp-idf/components/esptool_py/esptool/esptool.py

# Random aliases
alias i3sw=i3-swallow

# Enable vi-mode
bindkey -v
bindkey '^R' history-incremental-search-backward
