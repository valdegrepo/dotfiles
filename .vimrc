execute pathogen#infect()                                                                                                                                                                      
set cursorcolumn
set cursorline
set number
filetype plugin indent on
colorscheme deus
syntax on
filetype plugin on
set expandtab
set shiftwidth=4
set autoindent
let g:airline_theme='deus'
let g:NERDTreeDirArrowExpandable = '▸' 
let g:NERDTreeDirArrowCollapsible = '▾' 
let g:airline#extensions#tabline#enabled = 1 
 
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
 
  " powerline symbols
  let g:airline_left_sep = '' 
  let g:airline_left_alt_sep = '' 
  let g:airline_symbols.branch = '' 
  let g:airline_symbols.readonly = '' 
 
  let g:airline#extensions#tabline#left_sep = '' 
  let g:airline#extensions#tabline#left_alt_sep = '|' 
let g:gitgutter_max_signs = 500  " default value
let g:indentLine_setColors = 0
