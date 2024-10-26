"open little netrw window
nnoremap <Leader>m :Explore<CR>       

"edit and source vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr> 
nnoremap <leader>sv :source $MYVIMRC<cr>  

"open little terminal window
nnoremap <leader>t :vert terminal ++cols=40 <cr>

"edit file under cursor
nnoremap <leader>ef :vsplit <C-R>=expand('<cfile>')<cr><cr>

" Auto-indent the current buffer
nnoremap <leader>i gg=G

" To reduce press-esc-to-exit-insert-mode workload
inoremap jk <esc>
inoremap kj <esc>

" move around windows with the leader key
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
