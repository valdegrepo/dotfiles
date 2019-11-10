call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ajmwagar/vim-deus'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'
call plug#end()

set encoding=UTF-8
set number
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
autocmd FileType html setlocal shiftwidth=4 tabstop=4
autocmd FileType js setlocal shiftwidth=4 tabstop=4
autocmd FileType css setlocal shiftwidth=4 tabstop=4
autocmd FileType php setlocal shiftwidth=4 tabstop=4


set cursorline
set cursorcolumn

set hlsearch
set incsearch

syntax on
colorscheme deus
filetype plugin indent on

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 20
let g:netrw_browse_split = 2
let g:indentLine_char_list = ['¦', '┆', '┊']

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = ''

