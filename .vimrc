let mapleader = " " " Use space as my leader key
set number          " Show line numbers
syntax on           " Enable syntax highlighting
set scrolloff=10    " Set a minimum of 10 lines under/above the cursor

set expandtab       " Use spaces instead of tabs
set tabstop=2       " Add 2 spaces when pressing tab 
set shiftwidth=4    " Show tabs as 4 spaces (default)


" Custom Mappings
noremap - ddp                                 " Move line up
noremap _ ddkP                                " Move line down

nnoremap <leader>ev :vsplit $MYVIMRC<cr>      " Edit .vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>      " Source .vimrc file

nnoremap H 0                                  " Move to the start of line
nnoremap L A<esc>                             " Move to the end of line

inoremap <c-u> <esc>viwUi                     " Uppercase the current word (insert)
nnoremap <c-u> viwU<esc>                      " Uppercase the current word (normal)

" nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel     
" nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
" vnoremap <leader>' <c-c>`<i'<esc>`>a'<esc>
" vnoremap <leader>" <c-c>`<i"<esc>`>a"<esc>
