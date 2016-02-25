" ----- Re-Mapping leader
let mapleader=","

" ----- Escapping Insert
inoremap kj <Esc>

" ----- Toggle paste mode
set pastetoggle=<leader>p
" ----- Close a buffer
nnoremap <C-c> :bp\|bd #<CR>
" ----- fast saving buffer
nnoremap <leader>, :w <cr>
" ----- Change buffer
nnoremap <leader>n :bn <CR>
nnoremap <leader>m :bp <CR>

" ----- Fast copy pasta with line commenting
map <leader>cp yy<leader>ccp

" ----- Search the selection on visual
vnoremap . y/<C-R>"<CR>

noremap <leader>t :NERDTreeToggle<CR>

vmap <F5> :sort u<CR>

" Resize windows
if bufwinnr(1)
  map - 10<C-W><
  map + 10<C-W>>
endif
