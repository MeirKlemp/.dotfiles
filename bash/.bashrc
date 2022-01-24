#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Add local directories to PATH
export PATH=$PATH:~/.local/bin

alias em="emacsclient -c -a=\"\""

export EDITOR=nvim

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# start starship prompt: https://starship.rs
eval "$(starship init bash)"

# replace sudo with doas
alias sudo=doas
alias sudoedit="doas $EDITOR"

alias update="yay -Syu"

# git shortcuts
alias gs="git status"

# bat config
alias bat="bat --theme=OneHalfDark"

# add colors to grep
alias grep="grep --color=auto"

neofetch
