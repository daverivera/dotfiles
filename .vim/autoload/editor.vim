" ----- See 80th column -----
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif

" ----- Tab behaviour -----
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Enable file type detection
filetype plugin indent on