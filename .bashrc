# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias xin='sudo xbps-install'
alias xrm='sudo xbps-remove'
alias xqr='xbps-query'

PS1='(λ (\u@\h) \W):\$ '
LS_COLORS=$LS_COLORS:'di=1;33:'


export SBCL_HOME=/usr/lib/sbcl/
