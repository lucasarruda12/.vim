augroup haskell
  autocmd!

  " Highligh undefined (hi https://tsouanas.org/teaching/fun/2024.2/#hw)
  autocmd FileType haskell syntax match HaskellUndefined /undefined/
  autocmd FileType haskell highlight HaskellUndefined ctermfg=red guifg=red

  " Open ghci
  autocmd FileType haskell nnoremap <leader>t :vert terminal ++rows=10 ghci % <cr>
  
augroup END
