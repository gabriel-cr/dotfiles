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

" show line numbers
set number
