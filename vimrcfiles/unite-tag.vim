autocmd BufEnter *
\   if empty(&buftype)
\|      nnoremap <buffer> <C-]> :<C-u>UniteWithCursorWord -immediately tag<CR>
\|  endif

" let g:unite_source_tag_max_name_length = 25
" let g:unite_source_tag_max_kind_length = 8
" let g:unite_source_tag_max_fname_length = 20
" let g:unite_source_tag_name_footer_length = 10
" let g:unite_source_tag_fname_footer_length = 15
" let g:unite_source_tag_strict_truncate_string = 1
" let g:unite_source_tag_show_fname = 1
" let g:unite_source_tag_show_kind = 1
" let g:unite_source_tag_show_location = 1
" let g:unite_source_tag_relative_fname = 1

let g:unite_source_tag_max_name_length = 50
let g:unite_source_tag_max_kind_length = 50
let g:unite_source_tag_max_fname_length = 100
let g:unite_source_tag_name_footer_length = 50
let g:unite_source_tag_fname_footer_length = 50
let g:unite_source_tag_strict_truncate_string = 1
let g:unite_source_tag_show_fname = 1
let g:unite_source_tag_show_kind = 1
let g:unite_source_tag_show_location = 1
let g:unite_source_tag_relative_fname = 1
