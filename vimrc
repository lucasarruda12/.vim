let mapleader = " " " Use space as my leader key
set number          " Show line numbers
syntax on           " Enable syntax highlighting
set scrolloff=10    " Set a minimum of 10 lines under/above the cursor

set expandtab       " Use spaces instead of tabs
set tabstop=2       " Add 2 spaces when pressing tab 
set shiftwidth=4    " Show tabs as 4 spaces (default)

filetype on
filetype plugin on

" Disable the arrow keys :(
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>

inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" Currently following Steve Losh´s Learn VimScript the Hard Way. Some of its
" exercises are very usefull, some are not. Im keeping everything in this main
" file for now and figuring out later what i need and what i dont.

augroup vimscript_hard_way
    autocmd!
    " Writes file when open buffer
    autocmd BufNewFile * :write

    " automments lines in .hs files only
    autocmd FileType haskell nnoremap <leader>c I--<esc>

    autocmd FileType haskell iabbrev <buffer> oth otherwise
    autocmd FileType haskell iabbrev <buffer> let let a in b
augroup END

