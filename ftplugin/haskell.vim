echo "hi!"

syntax match HaskellUndefined /undefined/
highlight HaskellUndefined ctermfg=red guifg=red

" Open ghci
nnoremap <leader>t :vert terminal ++rows=10 ghci % <cr>
