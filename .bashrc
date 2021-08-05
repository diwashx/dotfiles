#include-file= ~./gruvbox_256palette.sh
#source "$HOME/gruvbox_256palette.sh"
#for quotes
fortune /home/diwash/.config/quotes 

#PS1="archhh$"

#PROMPT="this"

export EDITOR='nvim'
export TERMINAL='kitty'
export BROWSER='firefox'
export MANPAGER='nvim +Man!'
export TERM="xterm-256color"

#
PS1="\W "

set completion-ignore-case on

#aliases
alias config='/usr/bin/git --git-dir=/home/diwash/.cfg/.git/ --work-tree=/home/diwash'   #for git tree
alias v="nvim"  #For nvim 
alias nt='cd /run/media/diwash/A1/notes'
alias pac="sudo pacman"
#for colorscheme
#TERM=xterm-color

#PS1='\e[33;1m\u@\h: \e[31m\W\e[0m\$ '
#PS1='\e[33;1m\u@\h: \e[31m\W\e[0m\$ '


alias ln='cd /run/media/diwash/A1/learn'

alias gd='cd /run/media/diwash/A1'
alias vw='cd vimwiki'
alias pol='nvim ~/.config/polybar/config'
alias bsp='nvim ~/.config/bspwm/bspwmrc'
alias sxh='nvim ~/.config/sxhkd/sxhkdrc'
alias conf='cd .config'
