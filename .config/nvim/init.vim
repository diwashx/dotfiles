call plug#begin('~/.config/nvim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'tbabej/taskwiki'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
"Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
Plug 'ctrlpvim/ctrlp.vim' | Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-markdown' | Plug 'ap/vim-css-color'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']} 
call plug#end() 


"general setting
set encoding=UTF-8 nobackup nowritebackup nocursorline
set splitbelow
set splitright
set shiftwidth=4 tabstop=4 softtabstop=4 autoindent smartindent expandtab
set wildmode=longest,list,full
set noswapfile
set nocompatible
filetype plugin on
syntax on

"vimwiki
syntax on
let g:vimwiki_list= [{'path':'~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_ext2syntax= {'.md' : 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

"Makes vimwiki markdown links as [text](text.md) instead of [text](text)
let g:vimwiki_markdown_link_ext = 1

let g:taskwiki_markup_syntax = 'markdown'
let g:markdown_folding = 1

"Statusline
set statusline=
set statusline+=%#NonText#
set statusline+=%=
set statusline+=\ %F
set statusline+=%#CursorLineNr#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#DiffText#
set statusline+=\ %l/%L
set statusline+=\ [%c]
set virtualedit+=block
set nohlsearch
set linebreak
set nocompatible
"key bindings
let mapleader=" "
nnoremap <leader>s :source ~/.config/nvim/init.vim<CR>
nnoremap <leader><ENTER> :Goyo<CR>
nnoremap <leader><Space> :CtrlP<CR>
nnoremap <leader>n : Explore<CR>
nnoremap <leader>z : set invrnu invnu<CR>
nnoremap <leader><C-l> :set nofoldenable<CR>
nnoremap <C-l> :set foldmethod=indent<CR>
nnoremap <C-k> :set foldmethod=syntax<CR>

nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle



nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>


nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

"colorsettings
colorscheme iceberg
set termguicolors
set background=dark
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = '#777777'
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=None guibg=NONE guifg=NONE ctermfg=NONE

"goyo settings
function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight

  hi! Normal ctermbg=NONE guibg=NONE
  hi! NonText ctermbg=None guibg=NONE guifg=NONE ctermfg=NONE
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  set scrolloff=5

  hi! Normal ctermbg=NONE guibg=NONE
  hi! NonText ctermbg=None guibg=NONE guifg=NONE ctermfg=NONE
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

