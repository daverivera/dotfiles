" ----- See 80th column -----
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif

" ----- Tab behaviour -----
set expandtab
set shiftround
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoread
set hidden
set relativenumber

" Enable file type detection
set autoindent
filetype plugin indent on

" Loads the file when has the focus
au FocusGained,BufEnter * :silent! !

" Split configuration
set splitbelow
set splitright

" Airline buffer tab support
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
