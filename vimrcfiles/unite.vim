" unite.vim
let g:unite_source_file_mru_limit = 10
let g:unite_enable_start_insert = 1
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup --ignore-case --ignore log/'
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_max_candidates = 100
let g:unite_winheight = 10
nnoremap          <Space>uu :<C-u>Unite
nnoremap <silent> <Space>ud :<C-u>Unite file_rec<CR>
nnoremap <silent> <Space>uD :<C-u>Unite file_rec -no-quit<CR>
nnoremap <silent> <Space>ub :<C-u>Unite buffer<CR>
nnoremap <silent> <Space>uh :<C-u>Unite ref/perldoc help ref/man<CR>
nnoremap <silent> <Space>uo :<C-u>Unite outline<CR>
nnoremap <silent> <Space>uO :<C-u>Unite -auto-preview outline<CR>
nnoremap <silent> <Space>ul :<C-u>Unite line<CR>
nnoremap <silent> <Space>uc :<C-u>Unite -auto-preview colorscheme<CR>
nnoremap <silent> <Space>ug :<C-u>Unite -no-quit -auto-preview grep:.::<CR>
nnoremap <silent> <Space>uG :<C-u>Unite grep:.::<CR>
nnoremap <silent> <Space>us :<C-u>Unite snippet<CR>
nnoremap <silent> <Space>ut :<C-u>UniteWithCursorWord -immediately tag<CR>

