let mapleader = " "
set number
syntax on
set scrolloff=10

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

    " Mark trailling whitespace as error
    nnoremap <leader>w :match Error /\v\s+$/<cr>
    nnoremap <leader>W :match none<cr>

    " Hide search highlights
    nnoremap <leader>h :set nohlsearch<cr>

    " Start a search with \v
    nnoremap <leader>/ /\v

    " nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cword>")) . " ."<cr>:copen<cr>

augroup END
