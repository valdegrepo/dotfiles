call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ajmwagar/vim-deus'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'Yggdroot/indentLine'
call plug#end()

set encoding=UTF-8
set number
set cursorline
set cursorcolumn
set splitbelow
set splitright

autocmd FileType * setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType c setlocal shiftwidth=2 tabstop=2

set hlsearch
set incsearch

syntax on
colorscheme deus
filetype plugin indent on

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 20
let g:netrw_browse_split = 2

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:indentLine_char_list = ['|', '¦', '┆', '┊']
