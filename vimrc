let mapleader = " " " Use space as my leader key
set number          " Show line numbers
syntax on           " Enable syntax highlighting
set scrolloff=10    " Set a minimum of 10 lines under/above the cursor

set expandtab       " Use spaces instead of tabs
set tabstop=2       " Add 2 spaces when pressing tab 
set shiftwidth=4    " Show tabs as 4 spaces (default)

" Custom Mappings
nnoremap <Leader>m :Vexplore<CR>              " Open netrw on the current working dir

noremap - ddp                                 " Move line up
noremap _ ddkP                                " Move line down

nnoremap <leader>ev :vsplit $MYVIMRC<cr>      " Edit .vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>      " Source .vimrc file

nnoremap H 0                                  " Move to the start of line
nnoremap L A<esc>                             " Move to the end of line

inoremap <c-u> <esc>viwUi                     " Uppercase the current word (insert)
nnoremap <c-u> viwU<esc>                      " Uppercase the current word (normal)

" Auto-indent the current buffer
nnoremap <leader>i gg=G

augroup file_specific_commands
    autocmd!
    " Set no wrap for HTML files
    autocmd BufNewFile,BufRead *.html setlocal nowrap

    " Remove line numbers for markdown files
    autocmd BufNewFile,BufRead *.md setlocal nonumber
augroup END

" To reduce press-esc-to-exit-insert-mode workload
inoremap jk <esc>
inoremap kj <esc>

" Disable the arrow keys :(
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>

" nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel     
" nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
" vnoremap <leader>' <c-c>`<i'<esc>`>a'<esc>
" vnoremap <leader>" <c-c>`<i"<esc>`>a"<esc>

