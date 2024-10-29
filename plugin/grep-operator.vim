nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>

function! s:GrepOperator(type)
    let saved_unnamed_register = @@

    if a:type ==# 'v'
        execute "normal! `<v`>y"
    elseif a:type ==# 'char'
        execute "normal! `[y`]"
    else
        return
    endif

    execute "silent! grep! -r --exclude-dir='.?*' " . shellescape(@@) . " ."
    copen
    execute "redraw!"

    let @@ = saved_unnamed_register
endfunction

