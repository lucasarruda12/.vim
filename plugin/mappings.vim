"open little netrw window
nnoremap <Leader>m :Explore<CR>       

"edit and source vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr> 
nnoremap <leader>sv :source $MYVIMRC<cr>  

"open little terminal window
nnoremap <leader>t :vert terminal ++rows=40 <cr>

"Mutr search highligh
nnoremap <silent> <c-l> :<c-u>nohlsearch<cr><c-l>

"edit file under cursor
nnoremap <leader>ef :vsplit <C-R>=expand('<cfile>')<cr><cr>

" Auto-indent the current buffer
nnoremap <leader>i gg=G

" To reduce press-esc-to-exit-insert-mode workload
inoremap jk <esc>
inoremap kj <esc>
