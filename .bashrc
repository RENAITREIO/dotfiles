#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\n\$ '

set -o vi

export NEMU_HOME=/home/elaine/Documents/ysyx-workbench/nemu
export AM_HOME=/home/elaine/Documents/ysyx-workbench/abstract-machine
export NPC_HOME=/home/elaine/Documents/ysyx-workbench/npc
export NVBOARD_HOME=/home/elaine/Documents/ysyx-workbench/nvboard
