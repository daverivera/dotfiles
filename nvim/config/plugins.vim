" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')


" ----- IDE features -----------------------------
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter' " comment lines
Plug 'editorconfig/editorconfig-vim'
" Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Code completion
Plug 'dense-analysis/ale' " Code Linter for almost every language



" ----- Status bar ------------------------------------------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'



" ----- TMUX Compatibilty -----------------------------
Plug 'christoomey/vim-tmux-navigator'



" ----- Fuzzy finder -----------------------------
Plug 'ctrlpvim/ctrlp.vim'
Plug 'brookhong/ag.vim'
Plug 'FelikZ/ctrlp-py-matcher'
" Plug 'nixprime/cpsm'



" ----- Git ----------------------------------------------
Plug 'airblade/vim-gitgutter' " show new/update/delete lines
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'



" ----- Java ----------------------------------------------
"Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'} " Java-completion
"Plug 'artur-shaik/vim-javacomplete2' " Java-completion
Plug 'SirVer/ultisnips' " code snippet manager
Plug 'majutsushi/tagbar' " ctags



" ----- Javascript / Web ----------------------------------------------
 Plug 'pangloss/vim-javascript'
 Plug 'mattn/emmet-vim'



" ----- React ----------------------------------------------
Plug 'mxw/vim-jsx'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }



" ----- TypeScript ----------------------------------------------
Plug 'leafgarland/typescript-vim' " Typescript Highlighting
"Plug 'ianks/vim-tsx' " React JSX Highlighting
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'Shougo/denite.nvim'

Plug 'peitalin/vim-jsx-typescript' " React JSX Highlighting
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
"Plug 'Quramy/tsuquyomi'
"Plug 'Shougo/vimproc.vim'
"Plug 'vim-js-pretty-template'



" ----- Utils ----------------------------------------------------------
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-repeat' " remmaping . to repeat all
Plug 'tpope/vim-surround'
Plug 'rafi/awesome-vim-colorschemes' " Vim color schemes


" Initialize plugin system
call plug#end()
