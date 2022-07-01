#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1='[\u@\h \W]\$ '

export PATH=$PATH:$HOME/.local/bin:$HOME/.cabal/bin

[ -f "/home/jsk/.ghcup/env" ] && source "/home/jsk/.ghcup/env" # ghcup-env
