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

