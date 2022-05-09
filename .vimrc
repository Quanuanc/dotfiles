set nocompatible
let mapleader = " "

""" set
set history=500
set number relativenumber
set scrolloff=3
set ruler
set shiftwidth=4
set tabstop=4

" search
set hlsearch
set incsearch
set smartcase
set ignorecase

filetype plugin indent on
syntax enable

" 在命令行模式按下%%扩展为当前文件所在目录
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%' 
runtime macros/matchit.vim

" 系统剪切板
noremap <space>y "*y
noremap <space>Y "*Y
noremap <space>p "*p
noremap <space>P "*P
