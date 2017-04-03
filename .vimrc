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

" show line numbers
set number
