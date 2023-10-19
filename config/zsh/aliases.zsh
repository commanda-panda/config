#!/usr/bin/env zsh

alias zshconfig="${EDITOR} ~/.zshrc"
alias gitconfig="${EDITOR} ~/.gitconfig"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

if command -v exa &>/dev/null; then
  alias l='exa --group-directories-first'
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

if command -v hyperfine &>/dev/null; then
  alias hf='hyperfine'
fi

alias grep='grep -i --color=auto'