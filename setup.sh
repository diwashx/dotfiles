#!/bin/bash

# WorkInProgress. 


git clone https://github.com/diwashx/dotfiles.git


sudo pacman -S bspwm sxhkd rofi nitrogen picom kitty neovim
yay -S polybar
mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
cp dotfiles/.config/bspwm/bspwmrc ~/.config/bspwm/
cp dotfiles/.config/sxhkd/sxhkdrc ~/.config/sxhkd/

