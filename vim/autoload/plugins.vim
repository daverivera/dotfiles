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
" Plugin 'wavded/vim-stylus' "stylus
" Plugin 'kchmck/vim-coffee-script' " coffee
" Plugin 'evidens/vim-twig' " twig
" Plugin 'jez/vim-c0' " C0 highlighting
" Plugin 'jez/vim-ispc' " ISPC highlighting


" ----- Status bar ------------------------------------------
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


" ----- IDE features -----------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'Yggdroot/indentLine' " show indentation lines
Plugin 'Valloric/YouCompleteMe'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'editorconfig/editorconfig-vim'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'
"Plugin 'majutsushi/tagbar'


" ----- Snippets -----------------------------
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'


" ----- Emmet ----------------------------------------------
Plugin 'mattn/emmet-vim'


" ----- Fuzzy finder -----------------------------
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
" Plugin 'rking/ag.vim'
Plugin 'brookhong/ag.vim'

" ----- Git ----------------------------------------------
Plugin 'airblade/vim-gitgutter' " show new/update/delete lines
Plugin 'tpope/vim-fugitive'


" ----- JavaScript ----------------------------------------------
Plugin 'othree/yajs.vim'
" Plugin 'othree/es.next.syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'


" ----- React / Redux ------------------------------------------
Plugin 'mxw/vim-jsx' "JSX syntax highlight


" ----- Ruby ----------------------------------------------
" Plugin 'vim-ruby/vim-ruby'
" Plugin 'tpope/vim-rails'
" Plugin 'tpope/vim-bundler'


" ----- Vim goodies :D -----------------------------------
Plugin 'tpope/vim-dispatch'


" ----- tmux ----------------------------------------------------------
Plugin 'christoomey/vim-tmux-navigator'
" Make tmux look like vim-airline (read README for extra instructions)
" Plugin 'edkolev/tmuxline.vim'


" ----- Utils ----------------------------------------------------------
Plugin 'jiangmiao/auto-pairs'
Plugin 'godlygeek/tabular'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-repeat' " remmaping . to repeat all
Plugin 'tpope/vim-surround'


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


" ----- NERD Commenter -----
let g:NERDSpaceDelims = 1 " add a space after delimiter


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
let g:syntastic_javascript_checkers = ['eslint']


" ----- Gitgutter -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1


" ----- CtrlP --------
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" If ag is available use it as filename list generator instead of 'find'
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""'
endif

" Set delay to prevent extra search
" let g:ctrlp_lazy_update = 350
" Do not clear filenames cache, to improve CtrlP startup
" You can manualy clear it by <F5>
" let g:ctrlp_clear_cache_on_exit = 0
" Set no file limit, we are building a big project
" let g:ctrlp_max_files = 0


" ----- Indent --------
let g:indentLine_enabled = 1


" ----- JavaScript libraries syntax --------
let g:used_javascript_libs = 'chai,react'
let g:javascript_plugin_jsdoc = 1


" ----- Multiple Cursors --------
"let g:multi_cursor_quit_key='Q'


" ----- React / Redux --------
let g:jsx_ext_required = 0 " Allow JSX in normal JS files


" ----- Silver Searcher --------
" let g:ag_prg='ag --ignore node_modules'
