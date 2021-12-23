#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=vim

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# start starship prompt: https://starship.rs
eval "$(starship init bash)"

# replace sudo with doas
alias sudo=doas
alias sudoedit="doas $EDITOR"

# git shortcuts
alias gs="git status"

# replace cat with bat
alias bat="bat --theme=OneHalfDark"
alias cat=bat

# replace grep with ripgrep
alias grep=ripgrep

neofetch
