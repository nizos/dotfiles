#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lock="betterlockscreen -l blur -t 'Hard work beats talent.' > /dev/null"
alias suspend="betterlockscreen -s blur -t 'Hard work beats talent.' > /dev/null"
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
source /home/nizos/dev/git/alacritty/extra/completions/alacritty.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

