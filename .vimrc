set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent




set relativenumber
set number

set noswapfile


call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'

call plug#end()

colorscheme gruvbox
highlight! Normal guibg=NONE ctermbg=NONE
