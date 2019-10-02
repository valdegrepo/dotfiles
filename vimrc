colorscheme deus
set cursorcolumn
set cursorline
set number
filetype plugin indent on
syntax on
set expandtab
set shiftwidth=4
set autoindent
let g:airline_theme='deus'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:indentLine_char_list = ['¦']
