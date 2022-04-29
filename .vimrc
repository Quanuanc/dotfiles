set history=500

filetype plugin indent on

set autoread
au FocusGained,BufEnter * checktime

let mapleader = " "
nmap <leader>w :w!<cr>

set so=5

set ruler

syntax enable

set shiftwidth=4
set tabstop=4

" Insert mode shortcut
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Delete>
