nnoremap <Leader>m :Explore<CR>       

noremap - ddp                          
noremap _ ddkP                          

nnoremap <leader>ev :vsplit $MYVIMRC<cr> 
nnoremap <leader>sv :source $MYVIMRC<cr>  

nnoremap H I<esc>                             
nnoremap L A<esc>                            

inoremap <c-u> <esc>viwUi                   
nnoremap <c-u> viwU<esc>                   

nnoremap <leader>t :botright terminal ++rows=10 <cr>

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

inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
