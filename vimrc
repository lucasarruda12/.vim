let mapleader = " "
set number
syntax on
set scrolloff=10

set cursorline

set expandtab
set tabstop=2
set shiftwidth=4

filetype on
filetype plugin on

colorscheme retrobox

set hlsearch
set incsearch

" Disable the arrow keys :(
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>

inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" Flag trailing whitespace as error
" match Error /\v\s+$/<cr>

" Currently following Steve Losh´s Learn VimScript the Hard Way. Some of its
" exercises are very usefull, some are not. Im keeping everything in this main
" file for now and figuring out later what i need and what i dont.

augroup vimscript_hard_way
    autocmd!

    " Start a search with \v
    nnoremap <leader>/ /\v
augroup END
