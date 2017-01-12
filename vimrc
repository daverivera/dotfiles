" Use Vim settings, rather than Vi settings (much better!).
set nocompatible

set laststatus=2  " show status bar always
set showtabline=2 " show tab bar always
set visualbell    " No beeping

" --- Backup directories ---
set backupdir=~/.vim/backup
set directory=~/.vim/swap
set undodir=~/.vim/undo

" --- General settings ---
set history=1000 " keep 1000 lines of command line history "
set lazyredraw   " no redraw the screen when using macros
set noshowmode   " hide vim mode from status bar
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

" --- Color scheme ---
set background=dark
set t_Co=256
colorscheme Tomorrow-Night-Eighties
set term=screen-256color
syntax on

" --- Load editor settings ---
source ~/.vim/autoload/editor.vim

" --- Load custom key mappings ---
source ~/.vim/autoload/keymapping.vim

if has("mac")
  source ~/.vim/autoload/mac/plugins.vim
  source ~/.vim/autoload/mac/editor.vim
  source ~/.vim/autoload/mac/keymapping.vim
elseif has("unix")
  let g:syntastic_javascript_checkers = ['eslint']
  source ~/.vim/autoload/linux/plugins.vim
  source ~/.vim/autoload/linux/editor.vim
  source ~/.vim/autoload/linux/keymapping.vim
endif

set conceallevel=0
