" ----- deoplete ----------------------------------------------
"filetype plugin indent on  
"let g:deoplete#enable_at_startup = 1

" TESTING CONFIGS
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"set omnifunc=syntaxcomplete#Complete
"let g:deoplete#enable_at_startup = 1
""autocmd FileType java setlocal omnifunc=javacomplete#Complete
"let g:deoplete#auto_completion_start_length = 2
"let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'
"let g:deoplete#sources = {}
"let g:deoplete#sources._ = []
"let g:deoplete#file#enable_buffer_path = 1
"let g:deoplete#omni_patterns = {}
"call deoplete#custom#option('sources', {
"\ '_': ['ale'],
"\})

"" Don't forget to start deoplete let g:deoplete#enable_at_startup = 1 
"" Less spam let g:deoplete#auto_complete_start_length = 2
"let g:deoplete#enable_smart_case = 1 " Use smartcase
"let g:deoplete#sources = {} " Setup completion sources

"" IMPORTANT: PLEASE INSTALL JAVACOMPLETE2  AND ULTISNIPS OR DONT ADD THIS LINE!
"" =====================================
"let g:deoplete#sources.java = ['jc', 'javacomplete2', 'file', 'buffer', 'ultisnips']
" =====================================
 
"" use TAB as the mapping
"inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"inoremap <silent><expr> <TAB>
    "\ pumvisible() ?  "\<C-n>" :
    "\ <SID>check_back_space() ? "\<TAB>" :
    "\ deoplete#mappings#manual_complete()
"function! s:check_back_space() abort "" {{{
    "let col = col('.') - 1
    "return !col || getline('.')[col - 1]  =~ '\s'
"endfunction "" }}}
"
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

" Setup compilers for languages / Linters
    "\  'java': ['javac']
    "\  'python': ['pylint'],
let g:ale_linters = {
    "\  'typescript': ['tsserver', 'tslint'],
    \  'javascript': ['eslint'],
    \  'cs':['syntax', 'semantic', 'issues'],
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
"let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
"let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
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
"let g:airline_theme = 'embark'



" ----- colorscheme ----------------------------------------------
"colorscheme deus " awesome colorscheme
"colorscheme embark
colorscheme codedark



" ----- Typescript ----------------------------------------------
let g:coc_global_extensions = [ 'coc-tsserver' ]
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

"inoremap <silent><expr> <Tab>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<Tab>" :
      "\ coc#refresh()

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction
" Highlight the symbol and its references when holding the cursor.
"set updatetime=1000
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
