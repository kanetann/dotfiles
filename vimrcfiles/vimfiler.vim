" vimfiler
let g:vimfiler_as_default_explorer = 1
" nnoremap <Space>vf :<C-u>VimFiler<CR>
nnoremap <C-f> :<C-u>VimFiler<CR>
nnoremap <Space>vf :<C-u>VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit<CR>
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'
let g:vimfiler_ignore_pattern = '^\%(.git\|.DS_Store\)$'
