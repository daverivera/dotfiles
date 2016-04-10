" ----- Tab behaviour -----
set expandtab " tab to spaces
set shiftround " indent not rounded to shiftwidth
set shiftwidth=2 " number of spaces to use for each step of (auto)indent
set softtabstop=2 " add desired columns when hit tab
set tabstop=2 " change tab size of any size
set autoread " reload file when changed outside vim
set hidden " hide buffer instead of closing
set relativenumber " display relative number to current line
set conceallevel=0
set gdefault " global default substitution
set autoindent

" Loads the file when has the focus
au FocusGained,BufEnter * :silent! !

" Show invisible characters
set listchars=eol:¬,tab:→→
set list

" Yank and paste into clipboard
" Mac
set clipboard=unnamed
" Linux
set clipboard=unnamedplus

" Split configuration
set splitbelow
set splitright

" vimdiff
set diffopt+=vertical
set diffopt+=filler
set diffopt+=iwhite
if &diff
  highlight! link DiffText MatchParen
endif
