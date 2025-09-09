#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color'
PS1='[\u@\h \W]\$ '

source ~/.export
source ~/.alias
