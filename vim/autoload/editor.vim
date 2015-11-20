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

" Enable file type detection
set autoindent
filetype plugin indent on

" Loads the file when has the focus
au FocusGained,BufEnter * :silent! !
