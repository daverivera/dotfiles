" remap leader
let mapleader=","



" ----- Editor -----
" Close a buffer
nnoremap <silent><C-c> :bp\|bd #<CR>

" Fast saving buffer
nnoremap <leader>, :w<CR>

" Deactivate Ex mode
noremap Q <nop>

" Fast copy pasta with line commenting
map <leader>cp yy<leader>ccp

" Resize windows
if bufwinnr(1)
  map - 10<C-W><
  map + 10<C-W>>
endif

" Emmet original mapping
imap <C-e> <C-y>,

" Handle VimRC
nnoremap <leader>e :e $MYVIMRC<CR>
nnoremap <leader>r :so $MYVIMRC<CR>

" Alphabetizing
vmap <F5> :sort u<CR>

" Toggle paste mode
" set pastetoggle=<leader>p


" ----- Movement -----
" Escaping insert
inoremap kj <Esc>

" Change buffer
nnoremap <leader>n :bn<CR>
nnoremap <leader>m :bp<CR>

" Disable arrow keys
map <LEFT> <nop>
map <RIGHT> <nop>
map <UP> <nop>
map <DOWN> <nop>

" Move vertically by visual line
nnoremap j gj
nnoremap k gk



" ----- Searching -----
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Toggle NERDTree
noremap <leader>t :NERDTreeToggle<CR>

" Search the selection on visual
vnoremap . y/<C-R>"<CR>

" Toggle search highlight
nnoremap <silent> <leader>c :let @/=''<CR>



" ----- Folding -----
" space open/closes folds
nnoremap <space> za

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


" ----- CTAGS -----
" open Tagbar
map <F2> :TagbarToggle<CR>
