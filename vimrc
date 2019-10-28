call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ajmwagar/vim-deus'
Plug 'tpope/vim-fugitive'
call plug#end()
set encoding=UTF-8
set number
set expandtab
set tabstop=4
set cursorline
set cursorcolumn

set hlsearch
set incsearch

syntax on
colorscheme deus

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 1
let g:netrw_winsize = 20
 Oi Oi, I'm just testing fugitive.
