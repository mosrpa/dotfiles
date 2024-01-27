#
# ~/.bashrc
#

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '


alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rld='~/mohmd-Hyprland-Dotfile/waybar/reload.sh'
alias wifi='nmtui'
alias neo='neofetch'
alias v='nvim'

# Git aliases
alias ga="git add"
alias gl="git pull"
alias gp="git push"
alias gc="git commit"
alias gst="git status"
alias glo="git log --oneline"
alias glg="git log --graph"
alias glz="lazygit"

source /usr/share/doc/pkgfile/command-not-found.bash


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
. "$HOME/.cargo/env"
