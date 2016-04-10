" ----- Tab behaviour -----
set expandtab " tab to spaces
set shiftround " indent not rounded to shiftwidth
set shiftwidth=2 " number of spaces to use for each step of (auto)indent
set softtabstop=2
set tabstop=2
set autoread " reload file when changed outside vim
set hidden
set relativenumber
set conceallevel=0

" Enable file type detection
set autoindent
filetype plugin indent on

" Loads the file when has the focus
au FocusGained,BufEnter * :silent! !
set listchars=eol:¬,tab:→→,extends:#
set list
" Highlight current line
set cursorline

" Yank and paste into clipboard
" Mac
set clipboard=unnamed
" Linux
set clipboard=unnamedplus

" Split configuration
set splitbelow
set splitright

" Airline buffer tab support
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" vimdiff
set diffopt+=vertical
set diffopt+=filler
set diffopt+=iwhite
if &diff
  highlight! link DiffText MatchParen
endif

