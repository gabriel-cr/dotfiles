" generic stuff
set list
set listchars=trail:.
set expandtab ts=4 sw=4 ai
set hlsearch
" set persistent undo
set undofile

" pathogen loader
execute pathogen#infect()
syntax on
filetype plugin indent on

" nerdtree
let NERDTreeShowHidden=1
"autocmd vimenter * NERDTree
nnoremap <F4> :NERDTreeToggle<CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_sh_checkers = ['shellcheck']

" show line numbers
set number

" neocomplete
let g:neocomplete#enable_at_startup = 1
" Enable omni completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e
