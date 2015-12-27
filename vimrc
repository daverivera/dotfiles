" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set laststatus=2  " show status bar always
set showtabline=2 " show tab bar always

" --- No beeping ---
set visualbell

" --- Backup directories ---
set backupdir=~/.vim/backup
set directory=~/.vim/swap
set undodir=~/.vim/undo

" --- General settings ---
set history=1000 " keep 1000 lines of command line history "
set lazyredraw   " no redraw the screen when using macros
set modeline
set noshowmode
set encoding=utf-8

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set ruler     " show the cursor position all the time
set showcmd   " show the cursor position all the time
set incsearch " do incremental searching
set hlsearch  " highlight the search matches
set mouse=a   " enable use of mouse

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
source ~/.vim/autoload/keymapping.vim
