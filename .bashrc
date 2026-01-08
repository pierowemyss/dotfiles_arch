#
# ~/.bashrc
#
wal -R
clear && fastfetch
eval "$(starship init bash)"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias pacup='sudo pacman -Rns $(pacman -Qdtq)'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias docs="cd ~/Documents && nvim ."
alias lock="hyprctl dispatch exit"
alias hyprconf="cd ~/.config/hypr && nvim ."
alias vimconf="cd ~/.config/nvim && nvim ."
PS1='[\u@\h \W]\$ '
