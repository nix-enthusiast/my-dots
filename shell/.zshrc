#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#===============================================================================#

#PROMPT="[%n@%m %~]%# "

source /opt/homebrew/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle zsh-users/zsh-autosuggestions

autoload -U compinit && compinit -i

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#5E81AC,bg=default,bold,underline"

#===============================================================================#

#==========HISTORY START==========#
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
#==========HISTORY END==========#

