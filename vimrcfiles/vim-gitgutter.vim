let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif
let g:gitgutter_highlight_lines = 0
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 1
let g:gitgutter_max_signs = 2048
nnoremap <silent> <Space>gg :<C-u>GitGutterLineHighlightsToggle<CR>
