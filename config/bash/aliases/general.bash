#!/bin/bash
#######################################################################
#                         Directory Shortcuts                         #
#######################################################################

alias ..="cd .."
alias ...="cd ../.."
if command -v exa &>/dev/null; then
  alias l='exa'
  alias ls='exa --group-directories-first --icons'
  alias lg='exa -l --group-directories-first --icons --git'
  alias lt='exa --group-directories-first --tree --icons'
  alias ll='exa -l --group-directories-first --icons'
  alias lll='exa -la --group-directories-first --icons --group'
else
  alias l='ls'
  alias ll='ls -l'
  alias lll='ls -lA'
fi

#######################################################################
#                           Other Commands                            #
#######################################################################

alias head="head -5"
alias tail="tail -5"