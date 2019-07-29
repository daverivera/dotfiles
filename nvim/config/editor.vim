" ----- Colors -----
syntax enable       " enable syntax processing



" ----- Tab behaviour -----
set expandtab       " tab to spaces
set shiftround     " indent not rounded to shiftwidth
set shiftwidth=2   " number of spaces to use for each step of (auto)indent
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " add desired columns when hit tab



" ----- UI -----
set number relativenumber         " show line numbers
set showcmd         " show command in bottom bar
" set cursorline      " highlight current line
set wildmenu        " visual autocomplete for command menu
set wildmode=list:longest,full " do completion in the command line via tab
set mouse=a         " enable use of mouse
set showmatch       " highlight matching [{()}]
set listchars=eol:¬,tab:→→ " Show invisible characters



" ----- Searching -----
set incsearch       " search as characters are entered
set hlsearch        " highlight matches



" ----- Folding -----
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldmethod=indent   " fold based on indent level



" ----- Copy-Paste -----
set clipboard=unnamed " Yank and paste into clipboard
