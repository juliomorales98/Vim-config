" Pathogen
execute pathogen#infect()

" Visuals   
colorscheme dracula
syntax on 
set number
filetype plugin indent on

" For identation
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" For autoidentation
"set autoindent

" Nerd Tree
" Start when opening directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" Close when it's the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
