" Required for Vundle
filetype off

" Setup Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'


" ----- Themes ------------------------------------------
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'tomasr/molokai'


" ----- Highlighting ------------------------------------------
Plugin 'wavded/vim-stylus' "stylus
Plugin 'kchmck/vim-coffee-script' " coffee
"Plugin 'jez/vim-c0' " C0 highlighting
"Plugin 'jez/vim-ispc' " ISPC highlighting


" ----- Status bar ------------------------------------------
Plugin 'bling/vim-airline'


" ----- IDE features -----------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'Yggdroot/indentLine' " show indentation lines
Plugin 'Valloric/YouCompleteMe'
"Plugin 'bronson/vim-trailing-whitespace'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'
"Plugin 'majutsushi/tagbar'


" ----- Fuzzy finder -----------------------------
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'rking/ag.vim'


" ----- Git ----------------------------------------------
Plugin 'airblade/vim-gitgutter' " show new/update/delete lines
Plugin 'tpope/vim-fugitive'


" ----- Editor hacks -----------------------------------
Plugin 'Raimondi/delimitMate' " closing quotes, brackets, etc
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat' " remmaping . to repeat all
Plugin 'godlygeek/tabular'
Plugin 'terryma/vim-multiple-cursors'


" ----- tmux ----------------------------------------------------------
Plugin 'christoomey/vim-tmux-navigator'
" Make tmux look like vim-airline (read README for extra instructions)
Plugin 'edkolev/tmuxline.vim'


call vundle#end()




" PLUGIN SPECIFIC SETTINGS


" ----- Airline settings -----
" Always show statusbar
let g:airline_powerline_fonts = 1
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1 " airline buffer tab support
let g:airline#extensions#tabline#fnamemod = ':t' " show just the filename


" ----- NERDtree-tabs -----
" Open/close NERDTree Tabs with \t
"nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 0
let g:NERDTreeIgnore=['node_modules']


" ----- DelimitMate -----
" Place cursor properly when hitting enter after braces
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END


" ----- Syntastic -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END


" ----- Gitgutter -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

" ----- CtrlP --------
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
"" Set delay to prevent extra search
"let g:ctrlp_lazy_update = 350
"" Do not clear filenames cache, to improve CtrlP startup
"" You can manualy clear it by <F5>
"let g:ctrlp_clear_cache_on_exit = 0
"" Set no file limit, we are building a big project
"let g:ctrlp_max_files = 0
" If ag is available use it as filename list generator instead of 'find'
"if executable("ag")
    "set grepprg=ag\ --nogroup\ --nocolor
    "let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""'
"endif

" ----- Indent --------
let g:indentLine_enabled = 1
