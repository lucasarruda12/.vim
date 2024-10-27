" Open ghci
nnoremap <leader>t :vert terminal ++rows=10 ghci % <cr>

" Comment and uncomment a line
nnoremap <leader>cc :normal! I-- <cr>
nnoremap <leader>uc :normal I<esc>xxx<cr>
vnoremap <leader>cc :normal! I-- <cr>
vnoremap <leader>uc :normal xxx<cr>

" Abbreviations
iabbrev <buffer> g <c-R>=<SID>Guard()<cr>
iabbrev <buffer> gg <c-R>=<SID>Guards()<cr>
iabbrev <buffer> o otherwise
iabbrev <buffer> let let a in b

function! s:Guard()
    return '| c = v'
endfunction

function! s:Guards()
    return "\n\t" . '| c1 = v1' . "\n" . '| c2 = v2' . "\n" . '| otherwise = v3'
endfunction
