set nocompatible

set laststatus=2
set showtabline=2

" --- No beeping ---
set visualbell

" --- Backup directories ---
set backupdir=~/.vim/backup
set directory=~/.vim/swap
set undodir=~/.vim/undo

" --- General settings ---
set history=1000
set lazyredraw
set modeline
set noshowmode
set paste
set encoding=utf-8

set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set mouse=a

" --- Setup vundle and load plugins ---
source ~/.vim/autoload/plugins.vim

" --- Colour scheme ---
set background=dark
set t_Co=256
colorscheme Tomorrow-Night-Eighties
syntax on

" --- Load editor settings ---
source ~/.vim/autoload/editor.vim

" --- Load custom key mappings ---
" source ~/.vim/autoload/keymapping.vim