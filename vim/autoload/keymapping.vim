" ----- Re-Mapping leader
let mapleader=","

" ----- Escapping Insert
inoremap kj <Esc>

" ----- Toggle paste mode
set pastetoggle=<leader>p
" ----- Close a buffer
nnoremap <C-c> :bp\|bd #<CR>
" ----- Fast saving buffer
nnoremap ,, :w <CR>
