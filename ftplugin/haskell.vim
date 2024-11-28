" Open ghci
nnoremap <leader>t :vert terminal ++rows=10 ghci % <cr>

" Comment and uncomment a line
nnoremap <leader>cc :normal! I-- <cr>
nnoremap <leader>uc :normal I<esc>xxx<cr>
vnoremap <leader>cc :normal! I-- <cr>
vnoremap <leader>uc :normal xxx<cr>
