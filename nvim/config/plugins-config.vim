" ----- deoplete ----------------------------------------------
filetype plugin indent on  
set omnifunc=syntaxcomplete#Complete
autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:deoplete#enable_at_startup = 1
"let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'
let g:deoplete#auto_completion_start_length = 2
let g:deoplete#sources = {}
let g:deoplete#sources._ = []
let g:deoplete#file#enable_buffer_path = 1
"let g:deoplete#omni_patterns = {}

"" Don't forget to start deoplete let g:deoplete#enable_at_startup = 1 " Less spam let g:deoplete#auto_complete_start_length = 2
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#enable_smart_case = 1 " Use smartcase
"let g:deoplete#sources = {} " Setup completion sources
"" IMPORTANT: PLEASE INSTALL JAVACOMPLETE2  AND ULTISNIPS OR DONT ADD THIS LINE!
"" =====================================
"let g:deoplete#sources.java = ['jc', 'javacomplete2', 'file', 'buffer', 'ultisnips']
" =====================================
""use TAB as the mapping
inoremap <silent><expr> <TAB>
    \ pumvisible() ?  "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "" {{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction "" }}}
"let g:deoplete#complete_method = "omnifunc"
"let g:deoplete#omni#input_patterns.ocaml = '[^. *\t]\.\w*|\s\w*|#'



" ----- vim-javacomplete2 ----------------------------------------------
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"autocmd FileType java JCEnable
"nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
"imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
"nmap <F5> <Plug>(JavaComplete-Imports-Add)
"imap <F5> <Plug>(JavaComplete-Imports-Add)
"nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
"imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
"nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
"imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)



" ----- w0rp-ale ----------------------------------------------
" Shorten error/warning flags
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_sign_error = '✘✘'
let g:ale_sign_warning = '⚠⚠'
" Disable or enable loclist at the bottom of vim
" Comes down to personal preferance.
let g:ale_open_list = 0
let g:ale_loclist = 0
" Setup compilers for languages
let g:ale_linters = {
      \  'cs':['syntax', 'semantic', 'issues'],
      \  'python': ['pylint'],
      \  'java': ['javac']
      \ }



" ----- UltiSnips ----------------------------------------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" Since we are already using Deoplete, and using tab with both doesn't work nice use <c-j> instead
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"



" ----- ctrlp.vim ----------------------------------------------
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_working_path_mode = 'ra' " use current git repo/file director with ctrl p
let g:ctrlp_max_files=100000
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" If ag is available use it as filename list generator instead of 'find'
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --ignore ''target'' --hidden -g ""'
endif



" ----- airline ----------------------------------------------
let g:airline#extensions#tabline#enabled = 1 " enable smarter tab line to display opened buffers
let g:airline#extensions#tabline#formatter = 'unique_tail' " filename formatterl
let g:airline_theme='deus'



" ----- colorscheme ----------------------------------------------
colorscheme deus " awesome colorscheme



" ----- nerdtree ----------------------------------------------
let g:NERDTreeIgnore = ['^node_modules$']



" ----- fugitive ----------------------------------------------
let g:github_enterprise_urls = ['https://gitlab.tools.bol.com']




" ----- vim-notes ----------------------------------------------
let g:notes_directories = ['~/Documents/Notes']
