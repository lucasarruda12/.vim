"open little netrw window
nnoremap <Leader>m :Explore<CR>       

"edit and source vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr> 
nnoremap <leader>sv :source $MYVIMRC<cr>  

"open little terminal window
nnoremap <leader>t :botright terminal ++rows=10 <cr>

"edit file under cursor
nnoremap <leader>ef :edit <C-R>=expand('<cfile>')<cr><cr>

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

" move around windows with the leader key
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>

" Disable the arrow keys :(
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>

inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
