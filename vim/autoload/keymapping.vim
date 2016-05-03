" ----- Re-Mapping leader
let mapleader=","

" ----- Escaping Insert
inoremap kj <Esc>

" Deactivate Ex mode
noremap Q <nop>

" Disable arrow keys
map <LEFT> <nop>
map <RIGHT> <nop>
map <UP> <nop>
map <DOWN> <nop>

" ----- Toggle paste mode
set pastetoggle=<leader>p

" ----- Close a buffer
nnoremap <silent><C-c> :bp\|bd #<CR>

" ----- Fast saving buffer
nnoremap <leader>, :w<CR>

" ----- Change buffer
nnoremap <leader>n :bn<CR>
nnoremap <leader>m :bp<CR>

" ----- Fast copy pasta with line commenting
map <leader>cp yy<leader>ccp

" ----- Search the selection on visual
vnoremap . y/<C-R>"<CR>

" ----- Toggle NERDTree
noremap <leader>t :NERDTreeToggle<CR>

" ----- Alphabetizing
vmap <F5> :sort u<CR>

" Toggle search highlight
nnoremap <silent> <leader>c :let @/=''<CR>

" Changing windows layout
noremap <C-j> <C-w>j
noremap <C-j> <C-w>k
noremap <C-h> <C-w>h
noremap <c-l> <C-w>l

" ----- Resize windows
if bufwinnr(1)
  map - 10<C-W><
  map + 10<C-W>>
endif

" ----- Clear searches
nnoremap <leader>c :let @/=''<CR>

" ----- Delete all
nnoremap da :1,$d<CR>

" ----- Emmet original mapping
imap <C-e> <C-y>,

" ----- Handle VimRC
nnoremap <leader>e :e $MYVIMRC<CR>
nnoremap <leader>r :so $MYVIMRC<CR>

" ----- Center search results
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
