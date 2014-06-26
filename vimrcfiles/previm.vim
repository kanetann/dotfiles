augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END
nnoremap <Space>pv <Plug>(anzu-n-with-echo)
nnoremap <silent> <Space>pv :<C-u>PrevimOpen<CR>
